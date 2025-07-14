package lk.hansanamadhuranga.ccb.model.dto;

import java.io.Serializable;
import java.math.BigDecimal;

public class DailyBalanceSnapshotDTO implements Serializable {
    private Long id;
    private Long accountId;
    private BigDecimal balance;
    private String snapshotDate;
    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getAccountId() {
        return accountId;
    }

    public void setAccountId(Long accountId) {
        this.accountId = accountId;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public String getSnapshotDate() {
        return snapshotDate;
    }

    public void setSnapshotDate(String snapshotDate) {
        this.snapshotDate = snapshotDate;
    }
}