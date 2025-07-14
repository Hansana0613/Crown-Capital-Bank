package lk.hansanamadhuranga.ccb.ejb.timers;

import jakarta.ejb.Singleton;
import jakarta.ejb.Schedule;
import jakarta.ejb.Startup;
import jakarta.annotation.security.RolesAllowed;

@Singleton
@Startup
public class BalanceSnapshotTimerBean {
    @Schedule(hour = "0", minute = "5", second = "0", persistent = true)
    @RolesAllowed({"SYSTEM", "ADMIN"})
    public void takeDailySnapshot() {
        // Business logic for daily balance snapshot
    }
} 