package lk.hansanamadhuranga.ccb.ejb.customer;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.hansanamadhuranga.ccb.model.entities.FundTransferSchedule;
import lk.hansanamadhuranga.ccb.model.entities.Account;
import lk.hansanamadhuranga.ccb.model.entities.User;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

@Stateless
@RolesAllowed({"CUSTOMER"})
public class FundTransferServiceBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public void transferFunds(Long fromAccountId, Long toAccountId, BigDecimal amount, Long userId) {
        // Business logic for fund transfer (validation, balance update, transaction log)
    }

    public void scheduleTransfer(Long fromAccountId, Long toAccountId, BigDecimal amount, Timestamp transferDateTime, Long userId) {
        // Business logic for scheduling a transfer
    }

    public List<FundTransferSchedule> getScheduledTransfers(Long userId) {
        return em.createNamedQuery("FundTransferSchedule.findByUser", FundTransferSchedule.class)
                .setParameter("userId", userId)
                .getResultList();
    }
} 