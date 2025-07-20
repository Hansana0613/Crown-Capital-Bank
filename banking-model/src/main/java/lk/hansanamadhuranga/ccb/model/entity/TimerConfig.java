package lk.hansanamadhuranga.ccb.model.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class TimerConfig {
    @Id
    private String name;
    private String type;
    private String schedule;
    private String status;
    private String timerId; // Stores the EJB Timer handle for cancellation

    // Getters and Setters
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getType() { return type; }
    public void setType(String type) { this.type = type; }
    public String getSchedule() { return schedule; }
    public void setSchedule(String schedule) { this.schedule = schedule; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    public String getTimerId() { return timerId; }
    public void setTimerId(String timerId) { this.timerId = timerId; }
}