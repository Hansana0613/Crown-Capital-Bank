package lk.hansanamadhuranga.ccb.model.entities;

import jakarta.persistence.*;
import lk.hansanamadhuranga.ccb.model.enums.TransactionType;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;

@Entity
@Table(name = "transactions")
@NamedQueries({
    @NamedQuery(name = "Transaction.findByAccountId", query = "SELECT t FROM Transaction t WHERE t.account.id = :accountId ORDER BY t.timestamp DESC"),
    @NamedQuery(name = "Transaction.findByType", query = "SELECT t FROM Transaction t WHERE t.transactionType = :type"),
    @NamedQuery(name = "Transaction.findByInitiatedBy", query = "SELECT t FROM Transaction t WHERE t.initiatedBy.id = :userId")
})
public class Transaction implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "transaction_id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "account_id")
    private Account account;

    @Enumerated(EnumType.STRING)
    @Column(name = "transaction_type", nullable = false)
    private TransactionType transactionType;

    @Column(nullable = false, precision = 15, scale = 2)
    private BigDecimal amount;

    @Column(nullable = false)
    private Timestamp timestamp;

    @Column(length = 255)
    private String description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "initiated_by")
    private User initiatedBy;

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public TransactionType getTransactionType() {
        return transactionType;
    }

    public void setTransactionType(TransactionType transactionType) {
        this.transactionType = transactionType;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getInitiatedBy() {
        return initiatedBy;
    }

    public void setInitiatedBy(User initiatedBy) {
        this.initiatedBy = initiatedBy;
    }
}