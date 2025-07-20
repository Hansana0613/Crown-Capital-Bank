//package lk.hansanamadhuranga.ccb.ejb.util;
//
//import jakarta.ejb.Stateless;
//import jakarta.persistence.EntityManager;
//import jakarta.persistence.PersistenceContext;
//import jakarta.servlet.http.HttpServletRequest;
//import lk.hansanamadhuranga.ccb.model.entity.User;
//
//import java.sql.Timestamp;
//import java.time.LocalDateTime;
//
//@Stateless
//public class AuditLogger {
//
//    @PersistenceContext
//    private EntityManager em;
//
//    public void logSuccess(String username, String action, HttpServletRequest req) {
//        log(username, action, true, req);
//    }
//
//    public void logFailure(String username, String action, HttpServletRequest req) {
//        log(username, action, false, req);
//    }
//
//    private void log(String username, String action, boolean success, HttpServletRequest req) {
//        User user = em.createQuery("SELECT u FROM User u WHERE u.username = :username", User.class)
//                .setParameter("username", username)
//                .getResultStream().findFirst().orElse(null);
//
//        AuditLog log = new AuditLog();
//        log.setUser(user);
//        log.setAction(action);
//        log.setTargetEntity("User");
//        log.setIpAddress(req.getRemoteAddr());
//        log.setTimestamp(Timestamp.valueOf(LocalDateTime.now()));
//        log.setDetails(success ? "Login success" : "Login failed");
//
//        em.persist(log);
//    }
//}
