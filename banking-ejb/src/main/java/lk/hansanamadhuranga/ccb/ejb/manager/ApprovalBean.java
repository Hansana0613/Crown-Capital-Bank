package lk.hansanamadhuranga.ccb.ejb.manager;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.hansanamadhuranga.ccb.model.entities.Approval;
import java.util.List;

@Stateless
@RolesAllowed({"MANAGER"})
public class ApprovalBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public List<Approval> getPendingApprovals() {
        return em.createNamedQuery("Approval.findPending", Approval.class).getResultList();
    }

    public void approveTransfer(Long approvalId, Long managerId) {
        // Business logic for approving a transfer
    }

    public void rejectTransfer(Long approvalId, Long managerId) {
        // Business logic for rejecting a transfer
    }
} 