<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Freeze Account - Crown Capital Bank</title>
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
            <h1>❄️ Freeze Customer Account</h1>
            <p>Freeze an account due to suspicious activity or customer request</p>
        </div>
        <div class="card-grid">
            <div class="card">
                <h3>Freeze Account Form</h3>
                <form method="post" action="/teller/FreezeAccountServlet" class="form-container">
                    <div class="form-group">
                        <label for="accountNumber">Account Number</label>
                        <input type="text" id="accountNumber" name="accountNumber" class="form-control" required placeholder="Enter account number">
                    </div>
                    <div class="form-group">
                        <label for="reason">Reason</label>
                        <input type="text" id="reason" name="reason" class="form-control" required placeholder="Reason for freezing">
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Freeze</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card">
                <h3>💡 Freezing Tips</h3>
                <ul class="dashboard-links">
                    <li>Freeze only if there is a valid reason (fraud, legal, etc.)</li>
                    <li>Notify the customer and manager</li>
                    <li>Document the reason for audit</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 