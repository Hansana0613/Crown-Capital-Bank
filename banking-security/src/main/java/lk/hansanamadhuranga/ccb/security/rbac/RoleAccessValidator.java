package lk.hansanamadhuranga.ccb.security.rbac;

import jakarta.servlet.http.HttpServletRequest;

/**
 * Utility for role-based access control (RBAC) validation.
 */
public class RoleAccessValidator {
    public static boolean hasRole(HttpServletRequest request, String role) {
        // TODO: Check if the current user has the specified role
        return false;
    }
} 