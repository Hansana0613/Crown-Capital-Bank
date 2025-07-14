<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Open Customer Account - Crown Capital Bank</title>
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
            <h1>📝 Open New Customer Account</h1>
            <p>Register a new customer and open their first account</p>
        </div>
        <div class="card-grid">
            <div class="card">
                <h3>Account Opening Form</h3>
                <form method="post" action="/teller/OpenAccountServlet" class="form-container">
                    <div class="form-group">
                        <label for="customerName">Customer Name</label>
                        <input type="text" id="customerName" name="customerName" class="form-control" required placeholder="Full Name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" class="form-control" required placeholder="Email Address">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="text" id="phone" name="phone" class="form-control" required placeholder="07XXXXXXXX">
                    </div>
                    <div class="form-group">
                        <label for="accountType">Account Type</label>
                        <select id="accountType" name="accountType" class="form-control" required>
                            <option value="SAVINGS">Savings</option>
                            <option value="CHECKING">Checking</option>
                            <option value="FIXED_DEPOSIT">Fixed Deposit</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="initialDeposit">Initial Deposit</label>
                        <input type="number" id="initialDeposit" name="initialDeposit" class="form-control" step="0.01" min="0" required placeholder="Amount (LKR)">
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Open Account</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card">
                <h3>💡 Account Opening Tips</h3>
                <ul class="dashboard-links">
                    <li>Verify customer identity and contact details</li>
                    <li>Minimum deposit for Savings: LKR 1,000</li>
                    <li>Fixed Deposit requires maturity date setup</li>
                    <li>Provide account details to the customer after creation</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 