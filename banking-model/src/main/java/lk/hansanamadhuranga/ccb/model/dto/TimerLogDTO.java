package lk.hansanamadhuranga.ccb.model.dto;

import java.io.Serializable;

public class TimerLogDTO implements Serializable {
    private Long id;
    private String timerName;
    private String status;
    private String executedAt;
    private Long durationMs;
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

    public String getExecutedAt() {
        return executedAt;
    }

    public void setExecutedAt(String executedAt) {
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