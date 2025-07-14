<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Deposit/Withdrawal - Crown Capital Bank</title>
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
            <h1>💵 Process Deposit/Withdrawal</h1>
            <p>Handle cash and cheque transactions for customer accounts</p>
        </div>
        <div class="card-grid">
            <div class="card">
                <h3>Deposit/Withdrawal Form</h3>
                <form method="post" action="/teller/DepositWithdrawServlet" class="form-container">
                    <div class="form-group">
                        <label for="accountNumber">Account Number</label>
                        <input type="text" id="accountNumber" name="accountNumber" class="form-control" required placeholder="Enter account number">
                    </div>
                    <div class="form-group">
                        <label for="actionType">Action</label>
                        <select id="actionType" name="actionType" class="form-control" required>
                            <option value="deposit">Deposit</option>
                            <option value="withdrawal">Withdrawal</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="amount">Amount</label>
                        <input type="number" id="amount" name="amount" class="form-control" step="0.01" min="1" required placeholder="Enter amount">
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card">
                <h3>💡 Transaction Tips</h3>
                <ul class="dashboard-links">
                    <li>Verify account number before processing</li>
                    <li>Check for account freeze or restrictions</li>
                    <li>Large withdrawals may require manager approval</li>
                    <li>Provide receipt to the customer</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 