package lk.hansanamadhuranga.ccb.model.entities;

import jakarta.persistence.*;
import lk.hansanamadhuranga.ccb.model.enums.AccountType;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Set;

@Entity
@Table(name = "accounts")
@NamedQueries({
    @NamedQuery(name = "Account.findByAccountNumber", query = "SELECT a FROM Account a WHERE a.accountNumber = :accountNumber"),
    @NamedQuery(name = "Account.findByUserId", query = "SELECT a FROM Account a WHERE a.user.id = :userId"),
    @NamedQuery(name = "Account.findActiveByUserId", query = "SELECT a FROM Account a WHERE a.user.id = :userId AND a.isFrozen = false"),
    @NamedQuery(name = "Account.findEligibleForInterest", query = "SELECT a FROM Account a WHERE a.interestEligible = true AND a.isFrozen = false")
})
public class Account implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "account_id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "account_number", nullable = false, unique = true, length = 20)
    private String accountNumber;

    @Enumerated(EnumType.STRING)
    @Column(name = "account_type", nullable = false)
    private AccountType accountType;

    @Column(nullable = false, precision = 15, scale = 2)
    private BigDecimal balance = BigDecimal.ZERO;

    @Column(length = 5, nullable = false)
    private String currency = "LKR";

    @Column(name = "is_frozen", nullable = false)
    private boolean isFrozen = false;

    @Column(name = "interest_eligible", nullable = false)
    private boolean interestEligible = true;

    @Column(name = "created_at", nullable = false)
    private Timestamp createdAt;

    // Relationships
    @OneToMany(mappedBy = "account", fetch = FetchType.LAZY)
    private Set<Transaction> transactions;

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public AccountType getAccountType() {
        return accountType;
    }

    public void setAccountType(AccountType accountType) {
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

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Set<Transaction> getTransactions() {
        return transactions;
    }

    public void setTransactions(Set<Transaction> transactions) {
        this.transactions = transactions;
    }
}