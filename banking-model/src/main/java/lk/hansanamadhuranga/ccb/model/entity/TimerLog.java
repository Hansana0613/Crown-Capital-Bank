package lk.hansanamadhuranga.ccb.model.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "timer_log")
public class TimerLog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "log_id")
    private Long logId;

    @ManyToOne
    @JoinColumn(name = "timer_name", nullable = false)
    private TimerConfig timer;

    @Column(name = "execution_time", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date executionTime = new Date();

    @Column(name = "status", nullable = false)
    private String status;

    @Column(name = "message")
    private String message;

    // Getters and Setters
    public Long getLogId() { return logId; }
    public void setLogId(Long logId) { this.logId = logId; }
    public TimerConfig getTimer() { return timer; }
    public void setTimer(TimerConfig timer) { this.timer = timer; }
    public Date getExecutionTime() { return executionTime; }
    public void setExecutionTime(Date executionTime) { this.executionTime = executionTime; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
}