<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Account Summary - Crown Capital Bank</title>
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
                    <li><a href="accountSummary.jsp">📊 Accounts</a></li>
                    <li><a href="transferFunds.jsp">💸 Transfer</a></li>
                    <li><a href="transactionHistory.jsp">📜 History</a></li>
                    <li><a href="../logout">🚪 Logout</a></li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="container">
        <div class="hero">
            <h1>📊 Account Summary</h1>
            <p>Overview of all your accounts and balances</p>
        </div>

        <!-- Account Cards -->
        <div class="card-grid">
            <div class="card">
                <h3>🏦 Savings Account</h3>
                <p><strong>Account Number:</strong> ****1234</p>
                <p><strong>Balance:</strong> <span style="color:#28a745; font-weight:bold;">LKR 85,450.00</span></p>
                <p><strong>Status:</strong> <span class="badge badge-success">Active</span></p>
                <p><strong>Interest Eligible:</strong> <span class="badge badge-info">Yes</span></p>
            </div>
            <div class="card">
                <h3>🏦 Checking Account</h3>
                <p><strong>Account Number:</strong> ****5678</p>
                <p><strong>Balance:</strong> <span style="color:#dc3545; font-weight:bold;">LKR 25,000.00</span></p>
                <p><strong>Status:</strong> <span class="badge badge-success">Active</span></p>
                <p><strong>Interest Eligible:</strong> <span class="badge badge-danger">No</span></p>
            </div>
            <div class="card">
                <h3>🏦 Fixed Deposit</h3>
                <p><strong>Account Number:</strong> ****9012</p>
                <p><strong>Balance:</strong> <span style="color:#447D9B; font-weight:bold;">LKR 15,000.00</span></p>
                <p><strong>Status:</strong> <span class="badge badge-success">Active</span></p>
                <p><strong>Interest Eligible:</strong> <span class="badge badge-info">Yes</span></p>
                <p><strong>Maturity:</strong> 2024-06-15</p>
            </div>
        </div>

        <!-- Accounts Table -->
        <div class="table-container">
            <h3 style="padding: 1rem; margin: 0; background: linear-gradient(135deg, #273F4F 0%, #447D9B 100%); color: white;">All Accounts</h3>
            <table class="table">
                <thead>
                    <tr>
                        <th>Account Number</th>
                        <th>Type</th>
                        <th>Balance</th>
                        <th>Currency</th>
                        <th>Status</th>
                        <th>Interest Eligible</th>
                        <th>Created At</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>****1234</td>
                        <td>Savings</td>
                        <td style="color:#28a745; font-weight:bold;">LKR 85,450.00</td>
                        <td>LKR</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td><span class="badge badge-info">Yes</span></td>
                        <td>2022-03-10</td>
                    </tr>
                    <tr>
                        <td>****5678</td>
                        <td>Checking</td>
                        <td style="color:#dc3545; font-weight:bold;">LKR 25,000.00</td>
                        <td>LKR</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td><span class="badge badge-danger">No</span></td>
                        <td>2021-11-22</td>
                    </tr>
                    <tr>
                        <td>****9012</td>
                        <td>Fixed Deposit</td>
                        <td style="color:#447D9B; font-weight:bold;">LKR 15,000.00</td>
                        <td>LKR</td>
                        <td><span class="badge badge-success">Active</span></td>
                        <td><span class="badge badge-info">Yes</span></td>
                        <td>2023-01-05</td>
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