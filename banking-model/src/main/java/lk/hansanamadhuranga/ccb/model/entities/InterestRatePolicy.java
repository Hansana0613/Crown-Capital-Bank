package lk.hansanamadhuranga.ccb.model.entities;

import jakarta.persistence.*;
import lk.hansanamadhuranga.ccb.model.enums.AccountType;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

@Entity
@Table(name = "interest_rate_policy")
@NamedQueries({
    @NamedQuery(name = "InterestRatePolicy.findCurrentByAccountType", query = "SELECT i FROM InterestRatePolicy i WHERE i.accountType = :accountType ORDER BY i.effectiveDate DESC"),
    @NamedQuery(name = "InterestRatePolicy.findAllActive", query = "SELECT i FROM InterestRatePolicy i WHERE i.effectiveDate <= CURRENT_DATE ORDER BY i.effectiveDate DESC")
})
public class InterestRatePolicy implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "policy_id")
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "account_type", nullable = false)
    private AccountType accountType;

    @Column(name = "interest_rate", nullable = false, precision = 5, scale = 2)
    private BigDecimal interestRate;

    @Column(name = "effective_date", nullable = false)
    private Date effectiveDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "modified_by")
    private User modifiedBy;

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public AccountType getAccountType() {
        return accountType;
    }

    public void setAccountType(AccountType accountType) {
        this.accountType = accountType;
    }

    public BigDecimal getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(BigDecimal interestRate) {
        this.interestRate = interestRate;
    }

    public Date getEffectiveDate() {
        return effectiveDate;
    }

    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    public User getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(User modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
}