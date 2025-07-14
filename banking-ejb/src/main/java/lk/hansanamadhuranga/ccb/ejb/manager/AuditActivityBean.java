package lk.hansanamadhuranga.ccb.ejb.manager;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.hansanamadhuranga.ccb.model.entities.AuditLog;
import java.util.List;

@Stateless
@RolesAllowed({"MANAGER"})
public class AuditActivityBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public List<AuditLog> getFlaggedTransactions() {
        // Business logic for flagged/suspicious transactions
        return null;
    }
} 