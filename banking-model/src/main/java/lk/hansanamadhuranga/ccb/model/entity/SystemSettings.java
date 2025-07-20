package lk.hansanamadhuranga.ccb.model.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

import java.util.Date;

@Entity
public class SystemSettings {
    @Id
    private Long id = 1L; // Single row for settings
    private String bankName;
    private String supportEmail;
    private double interestRateSavings;
    private double interestRateFD;
    private double interestRateChecking;
    private Date lastUpdated;

    // Getters and Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getBankName() { return bankName; }
    public void setBankName(String bankName) { this.bankName = bankName; }
    public String getSupportEmail() { return supportEmail; }
    public void setSupportEmail(String supportEmail) { this.supportEmail = supportEmail; }
    public double getInterestRateSavings() { return interestRateSavings; }
    public void setInterestRateSavings(double interestRateSavings) { this.interestRateSavings = interestRateSavings; }
    public double getInterestRateFD() { return interestRateFD; }
    public void setInterestRateFD(double interestRateFD) { this.interestRateFD = interestRateFD; }
    public double getInterestRateChecking() { return interestRateChecking; }
    public void setInterestRateChecking(double interestRateChecking) { this.interestRateChecking = interestRateChecking; }
    public Date getLastUpdated() { return lastUpdated; }
    public void setLastUpdated(Date lastUpdated) { this.lastUpdated = lastUpdated; }
}