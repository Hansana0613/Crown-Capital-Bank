package lk.hansanamadhuranga.ccb.ejb.admin;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;

@Stateless
@RolesAllowed({"ADMIN"})
public class EjbDeploymentBean {
    public void deployEjbModule(String moduleName) {
        // Business logic for deploying EJB modules
    }
} 