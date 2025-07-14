package lk.hansanamadhuranga.ccb.ejb.jms;

import jakarta.ejb.MessageDriven;
import jakarta.annotation.security.RolesAllowed;

@MessageDriven
@RolesAllowed({"SYSTEM", "ADMIN"})
public class FraudAlertConsumerBean {
    public void onMessage(String message) {
        // Business logic for handling received fraud alert
    }
} 