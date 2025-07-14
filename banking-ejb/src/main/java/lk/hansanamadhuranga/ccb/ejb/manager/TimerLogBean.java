package lk.hansanamadhuranga.ccb.ejb.manager;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.hansanamadhuranga.ccb.model.entities.TimerLog;
import java.util.List;

@Stateless
@RolesAllowed({"MANAGER"})
public class TimerLogBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public List<TimerLog> getTimerLogs() {
        return em.createNamedQuery("TimerLog.findRecent", TimerLog.class).getResultList();
    }
} 