package lk.hansanamadhuranga.ccb.ejb.admin;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;

@Stateless
@RolesAllowed({"ADMIN"})
public class TimerMonitorBean {
    public void monitorTimers() {
        // Business logic for monitoring timers
    }
} 