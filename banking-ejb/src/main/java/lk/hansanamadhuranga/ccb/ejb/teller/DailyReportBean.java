package lk.hansanamadhuranga.ccb.ejb.teller;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;

@Stateless
@RolesAllowed({"TELLER"})
public class DailyReportBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public List<Object> getDailyTransactionReport() {
        // Business logic for daily transaction report
        return null;
    }
} 