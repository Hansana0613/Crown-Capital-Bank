package lk.hansanamadhuranga.ccb.model.dto;

import java.io.Serializable;

public class SystemSettingsDTO implements Serializable {
    private String settingKey;
    private String settingValue;
    private String modifiedAt;
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

    public String getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(String modifiedAt) {
        this.modifiedAt = modifiedAt;
    }
}