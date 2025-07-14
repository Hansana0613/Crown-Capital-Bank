package lk.hansanamadhuranga.ccb.ejb.teller;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.math.BigDecimal;

@Stateless
@RolesAllowed({"TELLER"})
public class TellerTransactionBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public void processDeposit(Long accountId, BigDecimal amount, Long tellerId) {
        // Business logic for deposit
    }

    public void processWithdrawal(Long accountId, BigDecimal amount, Long tellerId) {
        // Business logic for withdrawal
    }
} 