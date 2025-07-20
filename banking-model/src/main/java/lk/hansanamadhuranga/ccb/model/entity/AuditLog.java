package lk.hansanamadhuranga.ccb.model.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "audit_log")
public class AuditLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "audit_id")
    private Long auditId;

    @Column(name = "action", nullable = false)
    private String action;

    @Column(name = "resource_id")
    private Long resourceId;

    @Column(name = "performed_by", nullable = false)
    private String performedBy;

    @Column(name = "performed_at", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date performedAt;

    @Column(name = "details")
    private String details;

    // Default constructor
    public AuditLog() {
    }

    // Parameterized constructor
    public AuditLog(String action, Long resourceId, String performedBy, Date performedAt, String details) {
        this.action = action;
        this.resourceId = resourceId;
        this.performedBy = performedBy;
        this.performedAt = performedAt;
        this.details = details;
    }

    // Getters and Setters
    public Long getAuditId() {
        return auditId;
    }

    public void setAuditId(Long auditId) {
        this.auditId = auditId;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public Long getResourceId() {
        return resourceId;
    }

    public void setResourceId(Long resourceId) {
        this.resourceId = resourceId;
    }

    public String getPerformedBy() {
        return performedBy;
    }

    public void setPerformedBy(String performedBy) {
        this.performedBy = performedBy;
    }

    public Date getPerformedAt() {
        return performedAt;
    }

    public void setPerformedAt(Date performedAt) {
        this.performedAt = performedAt;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }
}