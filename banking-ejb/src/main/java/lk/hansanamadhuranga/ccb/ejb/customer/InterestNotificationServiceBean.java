package lk.hansanamadhuranga.ccb.ejb.customer;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;

@Stateless
@RolesAllowed({"CUSTOMER"})
public class InterestNotificationServiceBean {
    // Logic to notify customer when interest is credited (e.g., via JMS, WebSocket, or email)
    public void notifyInterestCredited(Long accountId, String message) {
        // Notification logic here
    }
} 