package lk.hansanamadhuranga.ccb.ejb.teller;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.hansanamadhuranga.ccb.model.entities.Account;
import lk.hansanamadhuranga.ccb.model.entities.User;

@Stateless
@RolesAllowed({"TELLER"})
public class AccountOpeningBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public void openAccount(User user, Account account) {
        // Business logic for opening a new account
    }
} 