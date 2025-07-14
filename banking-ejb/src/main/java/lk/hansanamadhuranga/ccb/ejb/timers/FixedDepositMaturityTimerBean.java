package lk.hansanamadhuranga.ccb.ejb.timers;

import jakarta.ejb.Singleton;
import jakarta.ejb.Schedule;
import jakarta.ejb.Startup;
import jakarta.annotation.security.RolesAllowed;

@Singleton
@Startup
public class FixedDepositMaturityTimerBean {
    @Schedule(hour = "1", minute = "0", second = "0", persistent = true)
    @RolesAllowed({"SYSTEM", "ADMIN"})
    public void processMaturingDeposits() {
        // Business logic for fixed deposit maturity
    }
} 