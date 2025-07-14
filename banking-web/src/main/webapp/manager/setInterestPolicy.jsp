<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Set Interest Rate Policy - Crown Capital Bank</title>
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
            <h1>💹 Set Interest Rate Policy</h1>
            <p>Define and update interest rates for different account types</p>
        </div>
        <div class="card-grid">
            <div class="card">
                <h3>Interest Policy Form</h3>
                <form method="post" action="/manager/SetInterestPolicyServlet" class="form-container">
                    <div class="form-group">
                        <label for="accountType">Account Type</label>
                        <select id="accountType" name="accountType" class="form-control" required>
                            <option value="SAVINGS">Savings</option>
                            <option value="FIXED_DEPOSIT">Fixed Deposit</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="interestRate">Interest Rate (%)</label>
                        <input type="number" id="interestRate" name="interestRate" class="form-control" step="0.01" required placeholder="e.g. 6.50">
                    </div>
                    <div class="form-group">
                        <label for="effectiveDate">Effective Date</label>
                        <input type="date" id="effectiveDate" name="effectiveDate" class="form-control" required>
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Set Policy</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card">
                <h3>Current Interest Policies</h3>
                <div class="table-container" style="box-shadow:none;">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Account Type</th>
                                <th>Interest Rate (%)</th>
                                <th>Effective Date</th>
                                <th>Modified By</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Savings</td>
                                <td>6.50</td>
                                <td>2024-01-01</td>
                                <td>Manager1</td>
                            </tr>
                            <tr>
                                <td>Fixed Deposit</td>
                                <td>8.50</td>
                                <td>2024-01-01</td>
                                <td>Manager2</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card">
                <h3>💡 Policy Tips</h3>
                <ul class="dashboard-links">
                    <li>Ensure compliance with central bank regulations</li>
                    <li>Effective date cannot be in the past</li>
                    <li>Communicate changes to all customers</li>
                    <li>Review policy history regularly</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 