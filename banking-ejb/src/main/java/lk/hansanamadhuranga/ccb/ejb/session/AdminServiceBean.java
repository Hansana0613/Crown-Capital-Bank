package lk.hansanamadhuranga.ccb.ejb.session;

import lk.hansanamadhuranga.ccb.model.entity.SystemSettings;
import jakarta.ejb.Stateless;
import jakarta.ejb.TransactionAttribute;
import jakarta.ejb.TransactionAttributeType;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.NoResultException;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@Stateless
@TransactionAttribute(TransactionAttributeType.REQUIRED)
@RolesAllowed({"ADMIN"})
public class AdminServiceBean {

    @PersistenceContext
    private EntityManager em;

    /**
     * Get current system settings
     */
    public SystemSettings getSystemSettings() {
        try {
            return em.createQuery("SELECT s FROM SystemSettings s WHERE s.id = 1", SystemSettings.class)
                    .getSingleResult();
        } catch (NoResultException e) {
            // If no settings exist, create default settings
            return createDefaultSettings();
        }
    }

    /**
     * Update system settings
     */
    public void updateSystemSettings(SystemSettings newSettings) {
        SystemSettings existingSettings = getSystemSettings();

        existingSettings.setBankName(newSettings.getBankName());
        existingSettings.setSupportEmail(newSettings.getSupportEmail());
        existingSettings.setInterestRateSavings(newSettings.getInterestRateSavings());
        existingSettings.setInterestRateFD(newSettings.getInterestRateFD());
        existingSettings.setInterestRateChecking(newSettings.getInterestRateChecking());
        existingSettings.setLastUpdated(Timestamp.valueOf(LocalDateTime.now()));

        em.merge(existingSettings);
    }

    /**
     * Create default system settings if none exist
     */
    private SystemSettings createDefaultSettings() {
        SystemSettings defaultSettings = new SystemSettings();
        defaultSettings.setId(1L);
        defaultSettings.setBankName("Crown Capital Bank");
        defaultSettings.setSupportEmail("support@crowncapital.lk");
        defaultSettings.setInterestRateSavings(Double.valueOf(2.50));
        defaultSettings.setInterestRateFD(Double.valueOf(5.00));
        defaultSettings.setInterestRateChecking(Double.valueOf(1.00));
        defaultSettings.setLastUpdated(Timestamp.valueOf(LocalDateTime.now()));

        em.persist(defaultSettings);
        return defaultSettings;
    }

    /**
     * Get system health information
     */
    public SystemHealthInfo getSystemHealthInfo() {
        SystemHealthInfo healthInfo = new SystemHealthInfo();

        // Get total users count
        Long totalUsers = em.createQuery("SELECT COUNT(u) FROM User u", Long.class)
                .getSingleResult();
        healthInfo.setTotalUsers(totalUsers);

        // Get active users count
        Long activeUsers = em.createQuery("SELECT COUNT(u) FROM User u WHERE u.enabled = true", Long.class)
                .getSingleResult();
        healthInfo.setActiveUsers(activeUsers);

        // Get total accounts count
        Long totalAccounts = em.createQuery("SELECT COUNT(a) FROM Account a", Long.class)
                .getSingleResult();
        healthInfo.setTotalAccounts(totalAccounts);

        // Get today's transactions count
        Long todayTransactions = em.createQuery(
                        "SELECT COUNT(t) FROM Transaction t WHERE DATE(t.createdAt) = CURRENT_DATE", Long.class)
                .getSingleResult();
        healthInfo.setTodayTransactions(todayTransactions);

        return healthInfo;
    }

    /**
     * Inner class for system health information
     */
    public static class SystemHealthInfo {
        private Long totalUsers;
        private Long activeUsers;
        private Long totalAccounts;
        private Long todayTransactions;

        // Getters and setters
        public Long getTotalUsers() { return totalUsers; }
        public void setTotalUsers(Long totalUsers) { this.totalUsers = totalUsers; }

        public Long getActiveUsers() { return activeUsers; }
        public void setActiveUsers(Long activeUsers) { this.activeUsers = activeUsers; }

        public Long getTotalAccounts() { return totalAccounts; }
        public void setTotalAccounts(Long totalAccounts) { this.totalAccounts = totalAccounts; }

        public Long getTodayTransactions() { return todayTransactions; }
        public void setTodayTransactions(Long todayTransactions) { this.todayTransactions = todayTransactions; }
    }
}