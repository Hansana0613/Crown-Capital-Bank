package lk.hansanamadhuranga.ccb.model.entities;

import jakarta.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

@Entity
@Table(name = "timer_logs")
@NamedQueries({
    @NamedQuery(name = "TimerLog.findByStatus", query = "SELECT t FROM TimerLog t WHERE t.status = :status ORDER BY t.executedAt DESC"),
    @NamedQuery(name = "TimerLog.findRecent", query = "SELECT t FROM TimerLog t ORDER BY t.executedAt DESC")
})
public class TimerLog implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "log_id")
    private Long id;

    @Column(name = "timer_name", nullable = false, length = 100)
    private String timerName;

    @Column(nullable = false, length = 20)
    private String status;

    @Column(name = "executed_at", nullable = false)
    private Timestamp executedAt;

    @Column(name = "duration_ms")
    private Long durationMs;

    @Column(name = "error_message", columnDefinition = "TEXT")
    private String errorMessage;

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTimerName() {
        return timerName;
    }

    public void setTimerName(String timerName) {
        this.timerName = timerName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getExecutedAt() {
        return executedAt;
    }

    public void setExecutedAt(Timestamp executedAt) {
        this.executedAt = executedAt;
    }

    public Long getDurationMs() {
        return durationMs;
    }

    public void setDurationMs(Long durationMs) {
        this.durationMs = durationMs;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }
}