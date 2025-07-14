<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Interest Notifications - Crown Capital Bank</title>
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
            <h1>📢 Interest Notifications</h1>
            <p>Stay updated on all credited interest to your accounts</p>
        </div>

        <div class="card-grid">
            <div class="card">
                <h3>Recent Interest Credits</h3>
                <div class="alert alert-info">
                    <strong>2024-01-14</strong> - <span class="badge badge-info">LKR 1,200.00</span> credited to <strong>Savings Account (****1234)</strong>
                </div>
                <div class="alert alert-info">
                    <strong>2023-12-14</strong> - <span class="badge badge-info">LKR 1,150.00</span> credited to <strong>Savings Account (****1234)</strong>
                </div>
                <div class="alert alert-info">
                    <strong>2023-12-01</strong> - <span class="badge badge-info">LKR 500.00</span> credited to <strong>Fixed Deposit (****9012)</strong>
                </div>
            </div>
            <div class="card">
                <h3>💡 How Interest is Calculated</h3>
                <ul class="dashboard-links">
                    <li>Interest is credited monthly for eligible accounts</li>
                    <li>Fixed deposits receive interest at maturity or as per policy</li>
                    <li>Check your account summary for eligibility</li>
                    <li>Contact support for more details</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 