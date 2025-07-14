<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Schedule Transfer - Crown Capital Bank</title>
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
            <h1>⏰ Schedule Future Transfer</h1>
            <p>Set up one-time or recurring transfers easily</p>
        </div>

        <div class="card-grid">
            <div class="card">
                <h3>Schedule Transfer</h3>
                <form method="post" action="/customer/ScheduleTransferServlet" class="form-container">
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
                    <div class="form-group">
                        <label for="date">Date & Time</label>
                        <input type="datetime-local" id="date" name="date" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="recurrence">Recurrence</label>
                        <select id="recurrence" name="recurrence" class="form-control">
                            <option value="ONCE">Once</option>
                            <option value="DAILY">Daily</option>
                            <option value="WEEKLY">Weekly</option>
                            <option value="MONTHLY">Monthly</option>
                        </select>
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Schedule</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card">
                <h3>📅 Upcoming Scheduled Transfers</h3>
                <div class="table-container" style="box-shadow:none;">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Date & Time</th>
                                <th>From</th>
                                <th>To</th>
                                <th>Amount</th>
                                <th>Recurrence</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2024-02-01 09:00</td>
                                <td>****1234</td>
                                <td>****7890</td>
                                <td style="color:#28a745;">LKR 10,000.00</td>
                                <td><span class="badge badge-info">Monthly</span></td>
                                <td><span class="badge badge-warning">Pending</span></td>
                            </tr>
                            <tr>
                                <td>2024-01-20 15:30</td>
                                <td>****5678</td>
                                <td>****3456</td>
                                <td style="color:#dc3545;">LKR 5,000.00</td>
                                <td><span class="badge badge-info">Once</span></td>
                                <td><span class="badge badge-success">Executed</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 