package lk.hansanamadhuranga.ccb.ejb.admin;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;

@Stateless
@RolesAllowed({"ADMIN"})
public class RoleManagementBean {
    public void assignRole(Long userId, String role) {
        // Business logic for assigning roles
    }
} 