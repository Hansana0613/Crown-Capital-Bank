<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Audit Dashboard - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="header">
        <div class="nav-container">
            <a href="../index.jsp" class="logo">Crown Capital Bank</a>
            <nav>
                <ul class="nav-menu">
                    <li><a href="dashboard.jsp">🏠 Dashboard</a></li>
                    <li><a href="approveHighValue.jsp">📝 Approvals</a></li>
                    <li><a href="setInterestPolicy.jsp">💹 Interest Policy</a></li>
                    <li><a href="auditDashboard.jsp">🔍 Audit</a></li>
                    <li><a href="endOfDayLedger.jsp">📊 Ledger</a></li>
                    <li><a href="viewTimerLogs.jsp">⏱️ Timer Logs</a></li>
                    <li><a href="../logout">🚪 Logout</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="hero">
            <h1>🔍 Audit Dashboard</h1>
            <p>Review flagged and suspicious account activities for compliance and security</p>
        </div>
        <div class="card-grid">
            <div class="card">
                <h3>Flagged Transactions</h3>
                <div class="table-container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Log ID</th>
                                <th>User</th>
                                <th>Action</th>
                                <th>Target</th>
                                <th>Timestamp</th>
                                <th>Status</th>
                                <th>Details</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>501</td>
                                <td>J. Perera</td>
                                <td>Withdrawal</td>
                                <td>****5678</td>
                                <td>2024-01-15 09:45</td>
                                <td><span class="badge badge-danger">Flagged</span></td>
                                <td>Large withdrawal flagged by system</td>
                            </tr>
                            <tr>
                                <td>502</td>
                                <td>M. Silva</td>
                                <td>Transfer</td>
                                <td>****1234</td>
                                <td>2024-01-14 16:20</td>
                                <td><span class="badge badge-warning">Review</span></td>
                                <td>Unusual transfer pattern detected</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card">
                <h3>💡 Audit Tips</h3>
                <ul class="dashboard-links">
                    <li>Investigate all flagged transactions promptly</li>
                    <li>Check user history and previous audit logs</li>
                    <li>Escalate to compliance if necessary</li>
                    <li>Document findings for future reference</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 