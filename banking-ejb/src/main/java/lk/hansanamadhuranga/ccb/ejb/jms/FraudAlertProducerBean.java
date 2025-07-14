package lk.hansanamadhuranga.ccb.ejb.jms;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;

@Stateless
@RolesAllowed({"SYSTEM", "ADMIN"})
public class FraudAlertProducerBean {
    public void sendFraudAlert(String message) {
        // Business logic for sending fraud alert via JMS
    }
} 