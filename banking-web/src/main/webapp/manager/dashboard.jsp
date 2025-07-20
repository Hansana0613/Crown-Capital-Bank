<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../shared/navbar.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manager Dashboard - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="container">
        <div class="hero">
            <h1>📊 Manager Dashboard</h1>
            <p>Approve transactions, manage policies, and monitor system activity</p>
        </div>
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-value">8</div>
                <div class="stat-label">📝 Pending Approvals</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">3</div>
                <div class="stat-label">⚠️ Flagged Transactions</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">2</div>
                <div class="stat-label">💹 Policy Changes</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">LKR 2,500,000.00</div>
                <div class="stat-label">📊 Today's Ledger</div>
            </div>
        </div>
        <div class="card-grid">
            <div class="card">
                <h3>Quick Links</h3>
                <ul class="dashboard-links">
                <li><a href="approvals.jsp">📝 Pending Approvals</a></li>
                <li><a href="interestPolicy.jsp">💹 Set Interest Rate Policy</a></li>
                <li><a href="audit.jsp">🔍 Review Account Activity</a></li>
                <li><a href="reports.jsp">📊 Ledger Reports</a></li>
                </ul>
            </div>
            <div class="card">
                <h3>🔔 Recent Activity</h3>
                <div class="alert alert-warning">
                    <strong>Approval Needed:</strong> Transfer #7890 (LKR 500,000) <small style="display:block;">5 min ago</small>
                </div>
                <div class="alert alert-info">
                    <strong>Policy Updated:</strong> Savings Interest 6.5% <small style="display:block;">1 hour ago</small>
                </div>
                <div class="alert alert-danger">
                    <strong>Flagged:</strong> Suspicious withdrawal on ****5678 <small style="display:block;">2 hours ago</small>
                </div>
            </div>
        </div>
    </div>
<%@ include file="../shared/footer.jspf" %>
</body>
</html> 