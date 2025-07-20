package lk.hansanamadhuranga.ccb.ejb.security;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lk.hansanamadhuranga.ccb.model.entity.User;

@Stateless
public class AuthenticationBean {
    @PersistenceContext(unitName = "bankingPU")
    private EntityManager em;

    public User authenticate(String username, String password) {
        try {
            User user = em.createQuery("SELECT u FROM User u WHERE u.username = :username", User.class)
                    .setParameter("username", username)
                    .getSingleResult();
            if (user != null && verifyPassword(password, user.getPassword())) {
                return user;
            }
        } catch (Exception e) {
            return null;
        }
        return null;
    }

    private boolean verifyPassword(String inputPassword, String storedPassword) {
        // Implement bcrypt or SHA-256 password verification
        // For simplicity, assume storedPassword is hashed
        return inputPassword != null && storedPassword != null && inputPassword.equals(storedPassword);
    }
}