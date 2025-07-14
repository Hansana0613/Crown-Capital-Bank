package lk.hansanamadhuranga.ccb.ejb.manager;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;

@Stateless
@RolesAllowed({"MANAGER"})
public class LedgerReportBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public List<Object> getEndOfDayLedger() {
        // Business logic for end-of-day ledger report
        return null;
    }
} 