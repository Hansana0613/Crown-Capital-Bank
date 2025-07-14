package lk.hansanamadhuranga.ccb.ejb.timers;

import jakarta.ejb.Singleton;
import jakarta.ejb.Schedule;
import jakarta.ejb.Startup;
import jakarta.annotation.security.RolesAllowed;

@Singleton
@Startup
public class OverdraftPenaltyTimerBean {
    @Schedule(hour = "2", minute = "0", second = "0", persistent = true)
    @RolesAllowed({"SYSTEM", "ADMIN"})
    public void applyOverdraftPenalties() {
        // Business logic for overdraft penalty application
    }
} 