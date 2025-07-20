package lk.hansanamadhuranga.ccb.ejb.session;

import lk.hansanamadhuranga.ccb.model.entity.TimerConfig;
import lk.hansanamadhuranga.ccb.model.entity.TimerLog;
import jakarta.ejb.Stateless;
import jakarta.ejb.TransactionAttribute;
import jakarta.ejb.TransactionAttributeType;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import java.util.List;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@Stateless
@TransactionAttribute(TransactionAttributeType.REQUIRED)
@RolesAllowed({"ADMIN", "MANAGER"})
public class TimerServiceBean {

    @PersistenceContext
    private EntityManager em;

    /**
     * Get all timer configurations
     */
    @RolesAllowed({"ADMIN"})
    public List<TimerConfig> getAllTimerConfigs() {
        return em.createQuery("SELECT t FROM TimerConfig t ORDER BY t.name", TimerConfig.class)
                .getResultList();
    }

    /**
     * Get timer configuration by name
     */
    @RolesAllowed({"ADMIN"})
    public TimerConfig getTimerConfig(String name) {
        return em.createQuery("SELECT t FROM TimerConfig t WHERE t.name = :name", TimerConfig.class)
                .setParameter("name", name)
                .getSingleResult();
    }

    /**
     * Enable a timer
     */
    @RolesAllowed({"ADMIN"})
    public void enableTimer(String timerName) {
        TimerConfig timerConfig = getTimerConfig(timerName);
        timerConfig.setStatus("ACTIVE");
        em.merge(timerConfig);

        // Log the action
        logTimerAction(timerConfig, "ENABLED", "Timer enabled by admin");
    }

    /**
     * Disable a timer
     */
    @RolesAllowed({"ADMIN"})
    public void disableTimer(String timerName) {
        TimerConfig timerConfig = getTimerConfig(timerName);
        timerConfig.setStatus("INACTIVE");
        em.merge(timerConfig);

        // Log the action
        logTimerAction(timerConfig, "DISABLED", "Timer disabled by admin");
    }

    /**
     * Reschedule a timer
     */
    @RolesAllowed({"ADMIN"})
    public void rescheduleTimer(String timerName, String newSchedule) {
        TimerConfig timerConfig = getTimerConfig(timerName);
        String oldSchedule = timerConfig.getSchedule();
        timerConfig.setSchedule(newSchedule);
        em.merge(timerConfig);

        // Log the action
        logTimerAction(timerConfig, "RESCHEDULED",
                "Timer rescheduled from '" + oldSchedule + "' to '" + newSchedule + "'");
    }

    /**
     * Create or update timer configuration
     */
    @RolesAllowed({"ADMIN"})
    public void createOrUpdateTimerConfig(String name, String type, String schedule, String status) {
        try {
            TimerConfig existingConfig = getTimerConfig(name);
            existingConfig.setType(type);
            existingConfig.setSchedule(schedule);
            existingConfig.setStatus(status);
            em.merge(existingConfig);
        } catch (Exception e) {
            // Timer doesn't exist, create new one
            TimerConfig newConfig = new TimerConfig();
            newConfig.setName(name);
            newConfig.setType(type);
            newConfig.setSchedule(schedule);
            newConfig.setStatus(status);
            em.persist(newConfig);
        }
    }

    /**
     * Initialize default timer configurations
     */
    @RolesAllowed({"ADMIN"})
    public void initializeDefaultTimers() {
        // Daily Interest Timer
        createOrUpdateTimerConfig("DailyInterestTimer", "SCHEDULE", "0 0 0 * * ?", "ACTIVE");

        // Daily Balance Snapshot Timer
        createOrUpdateTimerConfig("DailyBalanceSnapshotTimer", "SCHEDULE", "0 59 23 * * ?", "ACTIVE");

        // Fixed Deposit Maturity Timer
        createOrUpdateTimerConfig("FixedDepositMaturityTimer", "SCHEDULE", "0 0 1 * * ?", "ACTIVE");

        // Overdraft Penalty Timer
        createOrUpdateTimerConfig("OverdraftPenaltyTimer", "SCHEDULE", "0 0 2 * * ?", "ACTIVE");

        // Scheduled Transfer Timer (programmatically created)
        createOrUpdateTimerConfig("ScheduledTransferTimer", "PROGRAMMATIC", "On Demand", "ACTIVE");
    }

    /**
     * Get recent timer logs
     */
    @RolesAllowed({"ADMIN", "MANAGER"})
    public List<TimerLog> getRecentTimerLogs(int limit) {
        TypedQuery<TimerLog> query = em.createQuery(
                "SELECT tl FROM TimerLog tl ORDER BY tl.executionTime DESC", TimerLog.class);
        query.setMaxResults(limit);
        return query.getResultList();
    }

    /**
     * Get timer logs for a specific timer
     */
    @RolesAllowed({"ADMIN", "MANAGER"})
    public List<TimerLog> getTimerLogs(String timerName, int limit) {
        TypedQuery<TimerLog> query = em.createQuery(
                "SELECT tl FROM TimerLog tl WHERE tl.timer.name = :timerName ORDER BY tl.executionTime DESC",
                TimerLog.class);
        query.setParameter("timerName", timerName);
        query.setMaxResults(limit);
        return query.getResultList();
    }

    /**
     * Log timer execution
     */
    public void logTimerExecution(String timerName, String status, String message) {
        TimerConfig timerConfig = getTimerConfig(timerName);
        if (timerConfig != null) {
            TimerLog log = new TimerLog();
            log.setTimer(timerConfig);
            log.setExecutionTime(Timestamp.valueOf(LocalDateTime.now()));
            log.setStatus(status);
            log.setMessage(message);
            em.persist(log);
        }
    }

    /**
     * Log timer administrative actions
     */
    private void logTimerAction(TimerConfig timerConfig, String status, String message) {
        if (timerConfig != null) {
            TimerLog log = new TimerLog();
            log.setTimer(timerConfig);
            log.setExecutionTime(Timestamp.valueOf(LocalDateTime.now()));
            log.setStatus(status);
            log.setMessage(message);
            em.persist(log);
        }
    }

    /**
     * Count active timers
     */
    @RolesAllowed({"ADMIN", "MANAGER"})
    public long countActiveTimers() {
        return em.createQuery("SELECT COUNT(t) FROM TimerConfig t WHERE t.status = 'ACTIVE'", Long.class)
                .getSingleResult();
    }

    /**
     * Count recent timer logs (last 24 hours)
     */
    @RolesAllowed({"ADMIN", "MANAGER"})
    public long countRecentLogs() {
        return em.createQuery(
                        "SELECT COUNT(tl) FROM TimerLog tl WHERE tl.executionTime > :yesterday", Long.class)
                .setParameter("yesterday", Timestamp.valueOf(LocalDateTime.now().minusHours(24)))
                .getSingleResult();
    }

    /**
     * Get timer health status
     */
    @RolesAllowed({"ADMIN", "MANAGER"})
    public TimerHealthStatus getTimerHealthStatus() {
        TimerHealthStatus status = new TimerHealthStatus();

        long totalTimers = em.createQuery("SELECT COUNT(t) FROM TimerConfig t", Long.class)
                .getSingleResult();
        status.setTotalTimers(totalTimers);

        long activeTimers = countActiveTimers();
        status.setActiveTimers(activeTimers);

        long failedExecutions = em.createQuery(
                        "SELECT COUNT(tl) FROM TimerLog tl WHERE tl.status = 'FAILED' AND tl.executionTime > :yesterday", Long.class)
                .setParameter("yesterday", Timestamp.valueOf(LocalDateTime.now().minusHours(24)))
                .getSingleResult();
        status.setFailedExecutions(failedExecutions);

        return status;
    }

    /**
     * Timer Health Status inner class
     */
    public static class TimerHealthStatus {
        private Long totalTimers;
        private Long activeTimers;
        private Long failedExecutions;

        // Getters and setters
        public Long getTotalTimers() { return totalTimers; }
        public void setTotalTimers(Long totalTimers) { this.totalTimers = totalTimers; }

        public Long getActiveTimers() { return activeTimers; }
        public void setActiveTimers(Long activeTimers) { this.activeTimers = activeTimers; }

        public Long getFailedExecutions() { return failedExecutions; }
        public void setFailedExecutions(Long failedExecutions) { this.failedExecutions = failedExecutions; }
    }
}