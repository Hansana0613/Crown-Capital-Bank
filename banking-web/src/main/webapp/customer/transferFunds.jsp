<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Transfer Funds - Crown Capital Bank</title>
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
            <h1>💸 Transfer Funds</h1>
            <p>Send money securely to any account</p>
        </div>

        <div class="card-grid">
            <div class="card">
                <h3>Transfer Form</h3>
                <form method="post" action="/customer/TransferFundsServlet" class="form-container">
                    <div class="form-group">
                        <label for="fromAccount">From Account</label>
                        <select id="fromAccount" name="fromAccount" class="form-control" required>
                            <option value="">Select Account</option>
                            <option value="1234">****1234 - Savings (LKR 85,450.00)</option>
                            <option value="5678">****5678 - Checking (LKR 25,000.00)</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="toAccount">To Account</label>
                        <input type="text" id="toAccount" name="toAccount" class="form-control" required placeholder="Enter recipient account number">
                    </div>
                    <div class="form-group">
                        <label for="amount">Amount</label>
                        <input type="number" id="amount" name="amount" class="form-control" step="0.01" min="1" required placeholder="Enter amount">
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Send Money</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card">
                <h3>💡 Tips for Secure Transfers</h3>
                <ul class="dashboard-links">
                    <li>Double-check recipient account number</li>
                    <li>Never share your OTP or password</li>
                    <li>Transfers above LKR 100,000 may require manager approval</li>
                    <li>Contact support for any suspicious activity</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 