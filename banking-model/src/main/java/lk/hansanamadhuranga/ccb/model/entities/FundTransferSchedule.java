package lk.hansanamadhuranga.ccb.model.entities;

import jakarta.persistence.*;
import lk.hansanamadhuranga.ccb.model.enums.TransferRecurrence;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;

@Entity
@Table(name = "fund_transfer_schedule")
@NamedQueries({
    @NamedQuery(name = "FundTransferSchedule.findPending", query = "SELECT f FROM FundTransferSchedule f WHERE f.isExecuted = false AND f.transferDateTime <= CURRENT_TIMESTAMP"),
    @NamedQuery(name = "FundTransferSchedule.findByUser", query = "SELECT f FROM FundTransferSchedule f WHERE f.createdBy.id = :userId")
})
public class FundTransferSchedule implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "schedule_id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "from_account_id")
    private Account fromAccount;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "to_account_id")
    private Account toAccount;

    @Column(nullable = false, precision = 15, scale = 2)
    private BigDecimal amount;

    @Column(name = "transfer_date_time", nullable = false)
    private Timestamp transferDateTime;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private TransferRecurrence recurrence = TransferRecurrence.ONCE;

    @Column(name = "is_executed", nullable = false)
    private boolean isExecuted = false;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "created_by")
    private User createdBy;

    @Column(name = "created_at", nullable = false)
    private Timestamp createdAt;

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Account getFromAccount() {
        return fromAccount;
    }

    public void setFromAccount(Account fromAccount) {
        this.fromAccount = fromAccount;
    }

    public Account getToAccount() {
        return toAccount;
    }

    public void setToAccount(Account toAccount) {
        this.toAccount = toAccount;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Timestamp getTransferDateTime() {
        return transferDateTime;
    }

    public void setTransferDateTime(Timestamp transferDateTime) {
        this.transferDateTime = transferDateTime;
    }

    public TransferRecurrence getRecurrence() {
        return recurrence;
    }

    public void setRecurrence(TransferRecurrence recurrence) {
        this.recurrence = recurrence;
    }

    public boolean isExecuted() {
        return isExecuted;
    }

    public void setExecuted(boolean executed) {
        isExecuted = executed;
    }

    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }
}