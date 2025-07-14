<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>End-of-Day Ledger Report - Crown Capital Bank</title>
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
            <h1>📊 End-of-Day Ledger Report</h1>
            <p>Summary of all account balances and transactions for the day</p>
        </div>
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-value">LKR 2,500,000.00</div>
                <div class="stat-label">💰 Total Ledger Value</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">150</div>
                <div class="stat-label">🔢 Total Transactions</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">LKR 1,200,000.00</div>
                <div class="stat-label">📈 Credits</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">LKR 1,300,000.00</div>
                <div class="stat-label">📉 Debits</div>
            </div>
        </div>
        <div class="card-grid">
            <div class="card">
                <h3>Ledger Details</h3>
                <div class="table-container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Account</th>
                                <th>Opening Balance</th>
                                <th>Credits</th>
                                <th>Debits</th>
                                <th>Closing Balance</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>****1234</td>
                                <td>LKR 80,000.00</td>
                                <td style="color:#28a745;">+LKR 10,000.00</td>
                                <td style="color:#dc3545;">-LKR 4,550.00</td>
                                <td><span class="badge badge-success">LKR 85,450.00</span></td>
                            </tr>
                            <tr>
                                <td>****5678</td>
                                <td>LKR 30,000.00</td>
                                <td style="color:#28a745;">+LKR 2,000.00</td>
                                <td style="color:#dc3545;">-LKR 7,000.00</td>
                                <td><span class="badge badge-warning">LKR 25,000.00</span></td>
                            </tr>
                            <tr>
                                <td>****9012</td>
                                <td>LKR 15,000.00</td>
                                <td style="color:#28a745;">+LKR 0.00</td>
                                <td style="color:#dc3545;">-LKR 0.00</td>
                                <td><span class="badge badge-info">LKR 15,000.00</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card">
                <h3>💡 Ledger Tips</h3>
                <ul class="dashboard-links">
                    <li>Verify all balances before closing the day</li>
                    <li>Investigate discrepancies immediately</li>
                    <li>Export report for audit and compliance</li>
                    <li>Contact IT for technical issues</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 