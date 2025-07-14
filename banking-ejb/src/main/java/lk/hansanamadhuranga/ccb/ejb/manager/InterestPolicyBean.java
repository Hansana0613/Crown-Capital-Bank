package lk.hansanamadhuranga.ccb.ejb.manager;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.hansanamadhuranga.ccb.model.entities.InterestRatePolicy;
import java.util.List;

@Stateless
@RolesAllowed({"MANAGER"})
public class InterestPolicyBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public void setInterestRatePolicy(InterestRatePolicy policy) {
        // Business logic for setting interest rate policy
    }

    public List<InterestRatePolicy> getAllPolicies() {
        return em.createNamedQuery("InterestRatePolicy.findAllActive", InterestRatePolicy.class).getResultList();
    }
} 