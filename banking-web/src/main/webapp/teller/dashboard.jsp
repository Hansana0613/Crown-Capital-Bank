<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Teller Dashboard - Crown Capital Bank</title>
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
                    <li><a href="openCustomerAccount.jsp">📝 Open Account</a></li>
                    <li><a href="depositWithdraw.jsp">💵 Deposit/Withdraw</a></li>
                    <li><a href="dailyTransactionReport.jsp">📄 Daily Report</a></li>
                    <li><a href="reverseTransaction.jsp">🔄 Reverse Txn</a></li>
                    <li><a href="freezeAccount.jsp">❄️ Freeze Account</a></li>
                    <li><a href="../logout">🚪 Logout</a></li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="container">
        <div class="hero">
            <h1>🏪 Teller Dashboard</h1>
            <p>Manage customer accounts, transactions, and daily operations</p>
        </div>

        <!-- Teller Stats -->
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-value">LKR 1,250,000.00</div>
                <div class="stat-label">💵 Today's Total Transactions</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">42</div>
                <div class="stat-label">📝 Accounts Opened</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">5</div>
                <div class="stat-label">🔄 Reversals</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">2</div>
                <div class="stat-label">❄️ Accounts Frozen</div>
            </div>
        </div>

        <!-- Quick Actions -->
        <div class="card-grid">
            <div class="card">
                <h3>Quick Actions</h3>
                <ul class="dashboard-links">
                    <li><a href="openCustomerAccount.jsp">📝 Open New Customer Account</a></li>
                    <li><a href="depositWithdraw.jsp">💵 Process Deposit/Withdrawal</a></li>
                    <li><a href="dailyTransactionReport.jsp">📄 Daily Transaction Report</a></li>
                    <li><a href="reverseTransaction.jsp">🔄 Reverse Failed Transactions</a></li>
                    <li><a href="freezeAccount.jsp">❄️ Freeze Customer Account</a></li>
                </ul>
            </div>
            <div class="card">
                <h3>🔔 Recent Activity</h3>
                <div class="alert alert-success">
                    <strong>Account Opened:</strong> John Perera (****7890) <small style="display:block;">10 min ago</small>
                </div>
                <div class="alert alert-info">
                    <strong>Deposit:</strong> LKR 50,000 to ****1234 <small style="display:block;">30 min ago</small>
                </div>
                <div class="alert alert-danger">
                    <strong>Reversal:</strong> Txn #4567 reversed <small style="display:block;">1 hour ago</small>
                </div>
            </div>
        </div>

        <!-- Today's Transactions Table -->
        <div class="table-container">
            <h3 style="padding: 1rem; margin: 0; background: linear-gradient(135deg, #273F4F 0%, #447D9B 100%); color: white;">Today's Transactions</h3>
            <table class="table">
                <thead>
                    <tr>
                        <th>Time</th>
                        <th>Account</th>
                        <th>Type</th>
                        <th>Amount</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>09:15</td>
                        <td>****1234</td>
                        <td><span class="badge badge-success">Deposit</span></td>
                        <td style="color:#28a745;">+LKR 50,000.00</td>
                        <td><span class="badge badge-success">Success</span></td>
                    </tr>
                    <tr>
                        <td>10:05</td>
                        <td>****5678</td>
                        <td><span class="badge badge-danger">Withdrawal</span></td>
                        <td style="color:#dc3545;">-LKR 10,000.00</td>
                        <td><span class="badge badge-success">Success</span></td>
                    </tr>
                    <tr>
                        <td>11:20</td>
                        <td>****7890</td>
                        <td><span class="badge badge-warning">Deposit</span></td>
                        <td style="color:#28a745;">+LKR 5,000.00</td>
                        <td><span class="badge badge-danger">Reversed</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 