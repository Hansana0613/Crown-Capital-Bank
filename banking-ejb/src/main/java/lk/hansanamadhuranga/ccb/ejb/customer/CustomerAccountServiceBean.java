package lk.hansanamadhuranga.ccb.ejb.customer;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.hansanamadhuranga.ccb.model.entities.Account;
import lk.hansanamadhuranga.ccb.model.entities.User;
import java.util.List;

@Stateless
@RolesAllowed({"CUSTOMER"})
public class CustomerAccountServiceBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public List<Account> getAccountsForUser(Long userId) {
        return em.createNamedQuery("Account.findByUserId", Account.class)
                .setParameter("userId", userId)
                .getResultList();
    }

    public User getUserProfile(Long userId) {
        return em.find(User.class, userId);
    }
} 