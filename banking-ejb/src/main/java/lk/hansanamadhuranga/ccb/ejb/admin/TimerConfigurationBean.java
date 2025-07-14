package lk.hansanamadhuranga.ccb.ejb.admin;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;

@Stateless
@RolesAllowed({"ADMIN"})
public class TimerConfigurationBean {
    public void configureTimer(String timerName, String cronExpression) {
        // Business logic for configuring timers
    }
} 