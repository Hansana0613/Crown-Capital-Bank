package lk.hansanamadhuranga.ccb.ejb.customer;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.hansanamadhuranga.ccb.model.entities.Transaction;
import java.util.List;

@Stateless
@RolesAllowed({"CUSTOMER"})
public class TransactionHistoryBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public List<Transaction> getTransactionHistory(Long accountId) {
        return em.createNamedQuery("Transaction.findByAccountId", Transaction.class)
                .setParameter("accountId", accountId)
                .getResultList();
    }
} 