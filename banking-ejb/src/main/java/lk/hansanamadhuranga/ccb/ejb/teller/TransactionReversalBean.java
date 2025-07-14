package lk.hansanamadhuranga.ccb.ejb.teller;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Stateless
@RolesAllowed({"TELLER"})
public class TransactionReversalBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public void reverseTransaction(Long transactionId, Long tellerId) {
        // Business logic for reversing a transaction
    }
} 