<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Daily Transaction Report - Crown Capital Bank</title>
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
            <h1>📄 Daily Transaction Report</h1>
            <p>Summary and details of all transactions processed today</p>
        </div>
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-value">LKR 1,250,000.00</div>
                <div class="stat-label">💵 Total Value</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">120</div>
                <div class="stat-label">🔢 Total Transactions</div>
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
                        <th>Teller</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>09:15</td>
                        <td>****1234</td>
                        <td><span class="badge badge-success">Deposit</span></td>
                        <td style="color:#28a745;">+LKR 50,000.00</td>
                        <td><span class="badge badge-success">Success</span></td>
                        <td>H. Silva</td>
                    </tr>
                    <tr>
                        <td>10:05</td>
                        <td>****5678</td>
                        <td><span class="badge badge-danger">Withdrawal</span></td>
                        <td style="color:#dc3545;">-LKR 10,000.00</td>
                        <td><span class="badge badge-success">Success</span></td>
                        <td>R. Perera</td>
                    </tr>
                    <tr>
                        <td>11:20</td>
                        <td>****7890</td>
                        <td><span class="badge badge-warning">Deposit</span></td>
                        <td style="color:#28a745;">+LKR 5,000.00</td>
                        <td><span class="badge badge-danger">Reversed</span></td>
                        <td>H. Silva</td>
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