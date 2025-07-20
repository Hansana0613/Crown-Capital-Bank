package lk.hansanamadhuranga.ccb.ejb.session;

import lk.hansanamadhuranga.ccb.model.entity.User;
import lk.hansanamadhuranga.ccb.model.entity.UserRole;
import jakarta.ejb.Stateless;
import jakarta.ejb.TransactionAttribute;
import jakarta.ejb.TransactionAttributeType;
import jakarta.annotation.security.RolesAllowed;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.NoResultException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

@Stateless
@TransactionAttribute(TransactionAttributeType.REQUIRED)
public class UserServiceBean {

    @PersistenceContext
    private EntityManager em;

    /**
     * Create a new user with role
     */
    @RolesAllowed({"ADMIN"})
    public void createUser(String username, String password, String email, String role) {
        // Check if user already exists
        try {
            User existingUser = getUserByUsername(username);
            if (existingUser != null) {
                throw new IllegalArgumentException("User already exists: " + username);
            }
        } catch (NoResultException e) {
            // User doesn't exist, continue with creation
        }

        // Create user entity
        User user = new User();
        user.setUsername(username);
        user.setPassword(hashPassword(password));
        user.setEmail(email);
        user.setEnabled(true);

        em.persist(user);

        // Create user role
        UserRole userRole = new UserRole();
        userRole.setUsername(username);
        userRole.setRoleName(role);

        em.persist(userRole);
    }

    /**
     * Get user by username
     */
    public User getUserByUsername(String username) {
        return em.createQuery("SELECT u FROM User u WHERE u.username = :username", User.class)
                .setParameter("username", username)
                .getSingleResult();
    }

    /**
     * Get all users
     */
    @RolesAllowed({"ADMIN"})
    public List<User> getAllUsers() {
        return em.createQuery("SELECT u FROM User u ORDER BY u.username", User.class)
                .getResultList();
    }

    /**
     * Enable user account
     */
    @RolesAllowed({"ADMIN"})
    public void enableUser(String username) {
        User user = getUserByUsername(username);
        user.setEnabled(true);
        em.merge(user);
    }

    /**
     * Disable user account
     */
    @RolesAllowed({"ADMIN"})
    public void disableUser(String username) {
        User user = getUserByUsername(username);
        user.setEnabled(false);
        em.merge(user);
    }

    /**
     * Update user role
     */
    @RolesAllowed({"ADMIN"})
    public void updateUserRole(String username, String newRole) {
        // Remove existing role
        em.createQuery("DELETE FROM UserRole ur WHERE ur.username = :username")
                .setParameter("username", username)
                .executeUpdate();

        // Add new role
        UserRole userRole = new UserRole();
        userRole.setUsername(username);
        userRole.setRoleName(newRole);

        em.persist(userRole);
    }

    /**
     * Get user role by username
     */
    public String getUserRole(String username) {
        try {
            return em.createQuery("SELECT ur.roleName FROM UserRole ur WHERE ur.username = :username", String.class)
                    .setParameter("username", username)
                    .getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    /**
     * Get all user roles
     */
    @RolesAllowed({"ADMIN"})
    public Map<String, String> getAllUserRoles() {
        List<UserRole> userRoles = em.createQuery("SELECT ur FROM UserRole ur ORDER BY ur.username", UserRole.class)
                .getResultList();

        Map<String, String> userRoleMap = new HashMap<>();
        for (UserRole ur : userRoles) {
            userRoleMap.put(ur.getUsername(), ur.getRoleName());
        }
        return userRoleMap;
    }

    /**
     * Alias for getAllUserRoles
     */
    @RolesAllowed({"ADMIN"})
    public Map<String, String> getUserRolesMap() {
        return getAllUserRoles();
    }

    /**
     * Count total users
     */
    @RolesAllowed({"ADMIN"})
    public long countTotalUsers() {
        return em.createQuery("SELECT COUNT(u) FROM User u", Long.class)
                .getSingleResult();
    }

    /**
     * Change user password
     */
    @RolesAllowed({"ADMIN", "CUSTOMER", "TELLER", "MANAGER"})
    public void changePassword(String username, String oldPassword, String newPassword) {
        User user = getUserByUsername(username);

        // Verify old password
        if (!verifyPassword(oldPassword, user.getPassword())) {
            throw new IllegalArgumentException("Invalid old password");
        }

        user.setPassword(hashPassword(newPassword));
        em.merge(user);
    }

    /**
     * Authenticate user
     */
    public boolean authenticateUser(String username, String password) {
        try {
            User user = getUserByUsername(username);
            return user.isEnabled() && verifyPassword(password, user.getPassword());
        } catch (NoResultException e) {
            return false;
        }
    }

    /**
     * Get user details with role
     */
    public Map<String, Object> getUserDetails(String username) {
        Map<String, Object> userDetails = new HashMap<>();

        try {
            User user = getUserByUsername(username);
            String role = getUserRole(username);

            userDetails.put("username", user.getUsername());
            userDetails.put("email", user.getEmail());
            userDetails.put("enabled", user.isEnabled());
            userDetails.put("role", role);

            return userDetails;
        } catch (NoResultException e) {
            return null;
        }
    }

    /**
     * Delete user and associated role
     */
    @RolesAllowed({"ADMIN"})
    public void deleteUser(String username) {
        // Delete user role first
        em.createQuery("DELETE FROM UserRole ur WHERE ur.username = :username")
                .setParameter("username", username)
                .executeUpdate();

        // Delete user
        User user = getUserByUsername(username);
        em.remove(user);
    }

    /**
     * Check if user exists
     */
    public boolean userExists(String username) {
        try {
            getUserByUsername(username);
            return true;
        } catch (NoResultException e) {
            return false;
        }
    }

    /**
     * Hash password using SHA-256
     */
    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedPassword = md.digest(password.getBytes());

            StringBuilder sb = new StringBuilder();
            for (byte b : hashedPassword) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Error hashing password", e);
        }
    }

    /**
     * Verify password against hash
     */
    private boolean verifyPassword(String password, String hashedPassword) {
        return hashPassword(password).equals(hashedPassword);
    }

    /**
     * Get users by role
     */
    @RolesAllowed({"ADMIN", "MANAGER"})
    public List<String> getUsersByRole(String role) {
        return em.createQuery("SELECT ur.username FROM UserRole ur WHERE ur.roleName = :role ORDER BY ur.username", String.class)
                .setParameter("role", role)
                .getResultList();
    }

    /**
     * Update user email
     */
    @RolesAllowed({"ADMIN", "CUSTOMER", "TELLER", "MANAGER"})
    public void updateUserEmail(String username, String newEmail) {
        User user = getUserByUsername(username);
        user.setEmail(newEmail);
        em.merge(user);
    }
}