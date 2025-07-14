package lk.hansanamadhuranga.ccb.model.dto;

import java.io.Serializable;
import java.math.BigDecimal;

public class AccountDTO implements Serializable {
    private Long id;
    private Long userId;
    private String accountNumber;
    private String accountType;
    private BigDecimal balance;
    private String currency;
    private boolean isFrozen;
    private boolean interestEligible;
    private String createdAt;
    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public boolean isFrozen() {
        return isFrozen;
    }

    public void setFrozen(boolean frozen) {
        isFrozen = frozen;
    }

    public boolean isInterestEligible() {
        return interestEligible;
    }

    public void setInterestEligible(boolean interestEligible) {
        this.interestEligible = interestEligible;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}