package lk.hansanamadhuranga.ccb.model.entities;

import jakarta.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

@Entity
@Table(name = "system_settings")
@NamedQueries({
    @NamedQuery(name = "SystemSettings.findByKey", query = "SELECT s FROM SystemSettings s WHERE s.settingKey = :key")
})
public class SystemSettings implements Serializable {
    @Id
    @Column(name = "setting_key", length = 100)
    private String settingKey;

    @Column(name = "setting_value", length = 255)
    private String settingValue;

    @Column(name = "modified_at", nullable = false)
    private Timestamp modifiedAt;

    // Getters and setters

    public String getSettingKey() {
        return settingKey;
    }

    public void setSettingKey(String settingKey) {
        this.settingKey = settingKey;
    }

    public String getSettingValue() {
        return settingValue;
    }

    public void setSettingValue(String settingValue) {
        this.settingValue = settingValue;
    }

    public Timestamp getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Timestamp modifiedAt) {
        this.modifiedAt = modifiedAt;
    }
}