package lk.hansanamadhuranga.ccb.ejb.teller;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Stateless
@RolesAllowed({"TELLER"})
public class AccountFreezeBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public void freezeAccount(Long accountId, Long tellerId) {
        // Business logic for freezing an account
    }
} 