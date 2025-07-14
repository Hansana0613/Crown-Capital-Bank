package lk.hansanamadhuranga.ccb.ejb.timers;

import jakarta.ejb.Singleton;
import jakarta.ejb.Schedule;
import jakarta.ejb.Startup;
import jakarta.annotation.security.RolesAllowed;

@Singleton
@Startup
public class DailyInterestTimerBean {
    @Schedule(hour = "0", minute = "0", second = "0", persistent = true)
    @RolesAllowed({"SYSTEM", "ADMIN"})
    public void creditDailyInterest() {
        // Business logic for daily interest crediting
    }
} 