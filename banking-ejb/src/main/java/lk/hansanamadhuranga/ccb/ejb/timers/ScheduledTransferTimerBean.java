package lk.hansanamadhuranga.ccb.ejb.timers;

import jakarta.ejb.Singleton;
import jakarta.ejb.Schedule;
import jakarta.ejb.Startup;
import jakarta.annotation.security.RolesAllowed;

@Singleton
@Startup
public class ScheduledTransferTimerBean {
    @Schedule(hour = "*", minute = "0/10", second = "0", persistent = true)
    @RolesAllowed({"SYSTEM", "ADMIN"})
    public void executeScheduledTransfers() {
        // Business logic for executing scheduled fund transfers
    }
} 