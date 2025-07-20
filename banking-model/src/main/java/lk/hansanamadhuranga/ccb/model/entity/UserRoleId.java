package lk.hansanamadhuranga.ccb.model.entity;

import java.io.Serializable;

public class UserRoleId implements Serializable {

    private String username;
    private String roleName;

    // Constructors
    public UserRoleId() {}

    public UserRoleId(String username, String roleName) {
        this.username = username;
        this.roleName = roleName;
    }

    // Getters and Setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserRoleId that = (UserRoleId) o;

        if (username != null ? !username.equals(that.username) : that.username != null) return false;
        return roleName != null ? roleName.equals(that.roleName) : that.roleName == null;
    }

    @Override
    public int hashCode() {
        int result = username != null ? username.hashCode() : 0;
        result = 31 * result + (roleName != null ? roleName.hashCode() : 0);
        return result;
    }
}
