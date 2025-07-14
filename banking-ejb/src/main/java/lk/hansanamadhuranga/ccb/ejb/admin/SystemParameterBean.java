package lk.hansanamadhuranga.ccb.ejb.admin;

import jakarta.ejb.Stateless;
import jakarta.annotation.security.RolesAllowed;

@Stateless
@RolesAllowed({"ADMIN"})
public class SystemParameterBean {
    public void setSystemParameter(String key, String value) {
        // Business logic for setting system parameters
    }
} 