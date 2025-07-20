package lk.hansanamadhuranga.ccb.ejb.session;

import jakarta.annotation.Resource;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.UserTransaction;
import lk.hansanamadhuranga.ccb.model.entity.User;

import java.time.LocalDateTime;
import java.util.logging.Logger;

@Stateless
public class UserSessionBean {
    @PersistenceContext
    private EntityManager em;

    private static final Logger LOGGER = Logger.getLogger(UserSessionBean.class.getName());

    public User validateUser(String username, String password) {
        try {
            User user = em.createQuery("SELECT u FROM User u WHERE u.username = :username AND u.password = :password", User.class)
                    .setParameter("username", username)
                    .setParameter("password", password)
                    .getSingleResult();
            logLogin(user.getUsername(), "SUCCESS");
            return user;
        } catch (Exception e) {
            logLogin(username, "FAILURE");
            return null;
        }
    }

    private void logLogin(String username, String status) {
        try {
            em.createNativeQuery("INSERT INTO login_audit (username, login_time, status) VALUES (?, ?, ?)")
                    .setParameter(1, username)
                    .setParameter(2, LocalDateTime.now())
                    .setParameter(3, status)
                    .executeUpdate();
        } catch (Exception e) {
            LOGGER.warning("Audit log failed: " + e.getMessage());
        }
    }
}