<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Approve High-Value Transfers - Crown Capital Bank</title>
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
            <h1>📝 Approve High-Value Transfers</h1>
            <p>Review and approve or reject pending high-value fund transfers</p>
        </div>
        <div class="card-grid">
            <div class="card">
                <h3>Pending Approvals</h3>
                <div class="table-container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Approval ID</th>
                                <th>Transaction ID</th>
                                <th>Amount</th>
                                <th>Requested By</th>
                                <th>Requested At</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1001</td>
                                <td>7890</td>
                                <td style="color:#FE7743; font-weight:bold;">LKR 500,000.00</td>
                                <td>J. Perera</td>
                                <td>2024-01-15 10:30</td>
                                <td><span class="badge badge-warning">Pending</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button class="btn btn-success">Approve</button>
                                        <button class="btn btn-danger">Reject</button>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>1002</td>
                                <td>7891</td>
                                <td style="color:#FE7743; font-weight:bold;">LKR 250,000.00</td>
                                <td>M. Silva</td>
                                <td>2024-01-15 11:00</td>
                                <td><span class="badge badge-warning">Pending</span></td>
                                <td>
                                    <div class="btn-group">
                                        <button class="btn btn-success">Approve</button>
                                        <button class="btn btn-danger">Reject</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card">
                <h3>💡 Approval Tips</h3>
                <ul class="dashboard-links">
                    <li>Review transaction details and remarks before approving</li>
                    <li>Reject if suspicious or incomplete documentation</li>
                    <li>Contact the requester for clarification if needed</li>
                    <li>All actions are logged for audit purposes</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 