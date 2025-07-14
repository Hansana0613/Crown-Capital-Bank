package lk.hansanamadhuranga.ccb.model.entities;

import jakarta.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;

@Entity
@Table(name = "fixed_deposit")
@NamedQueries({
    @NamedQuery(name = "FixedDeposit.findMaturingToday", query = "SELECT f FROM FixedDeposit f WHERE f.maturityDate = CURRENT_DATE AND f.isClosed = false"),
    @NamedQuery(name = "FixedDeposit.findByAccount", query = "SELECT f FROM FixedDeposit f WHERE f.account.id = :accountId")
})
public class FixedDeposit implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "fd_id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "account_id")
    private Account account;

    @Column(nullable = false, precision = 15, scale = 2)
    private BigDecimal amount;

    @Column(name = "start_date", nullable = false)
    private Date startDate;

    @Column(name = "maturity_date", nullable = false)
    private Date maturityDate;

    @Column(name = "is_closed", nullable = false)
    private boolean isClosed = false;

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

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getMaturityDate() {
        return maturityDate;
    }

    public void setMaturityDate(Date maturityDate) {
        this.maturityDate = maturityDate;
    }

    public boolean isClosed() {
        return isClosed;
    }

    public void setClosed(boolean closed) {
        isClosed = closed;
    }
}