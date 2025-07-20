<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../shared/navbar.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container">
    <div class="hero">
        <h1>👋 Welcome, ${sessionScope.username}!</h1>
        <p>Manage your accounts and transactions with ease.</p>
    </div>
    <!-- Account Summary Cards -->
    <div class="stats-grid">
        <div class="stat-card">
            <div class="stat-value">LKR 125,450.00</div>
            <div class="stat-label">💰 Total Balance</div>
        </div>
        <div class="stat-card">
            <div class="stat-value">3</div>
            <div class="stat-label">🏦 Active Accounts</div>
        </div>
        <div class="stat-card">
            <div class="stat-value">12</div>
            <div class="stat-label">📊 This Month's Transactions</div>
        </div>
        <div class="stat-card">
            <div class="stat-value">LKR 2,340.00</div>
            <div class="stat-label">📈 Monthly Interest</div>
        </div>
    </div>
    <!-- Quick Actions and Notifications -->
    <div class="card-grid">
        <div class="card">
            <h3>💳 Quick Actions</h3>
            <ul class="dashboard-links">
                <li><a href="accounts.jsp">📊 View Account Summary</a></li>
                <li><a href="transfer.jsp">💸 Transfer Funds</a></li>
                <li><a href="history.jsp">📜 Transaction History</a></li>
                <li><a href="schedule.jsp">⏰ Schedule Future Transfer</a></li>
                <li><a href="interestNotification.jsp">📢 Interest Notifications</a></li>
            </ul>
        </div>
        <div class="card">
            <h3>🔔 Recent Notifications</h3>
            <div class="notification-item">
                <div class="alert alert-success">
                    <strong>✅ Transaction Successful</strong><br>
                    Transfer of LKR 5,000 completed successfully
                    <small style="display: block; margin-top: 5px;">2 hours ago</small>
                </div>
            </div>
            <div class="notification-item">
                <div class="alert alert-info">
                    <strong>📈 Interest Credited</strong><br>
                    Monthly interest of LKR 1,200 has been credited
                    <small style="display: block; margin-top: 5px;">1 day ago</small>
                </div>
            </div>
            <div class="notification-item">
                <div class="alert alert-warning">
                    <strong>⚠️ Low Balance Alert</strong><br>
                    Your checking account balance is below LKR 10,000
                    <small style="display: block; margin-top: 5px;">3 days ago</small>
                </div>
            </div>
        </div>
    </div>
    <!-- Recent Transactions Table -->
    <div class="table-container">
        <h3 style="padding: 1rem; margin: 0; background: linear-gradient(135deg, #273F4F 0%, #447D9B 100%); color: white;">
            📊 Recent Transactions
        </h3>
        <table class="table">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Type</th>
                    <th>Amount</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2024-01-15</td>
                    <td>Online Transfer to John Doe</td>
                    <td><span class="badge badge-warning">TRANSFER_OUT</span></td>
                    <td style="color: #dc3545;">-LKR 5,000.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
                <tr>
                    <td>2024-01-14</td>
                    <td>Monthly Interest Credit</td>
                    <td><span class="badge badge-info">INTEREST</span></td>
                    <td style="color: #28a745;">+LKR 1,200.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
                <tr>
                    <td>2024-01-13</td>
                    <td>ATM Withdrawal</td>
                    <td><span class="badge badge-danger">WITHDRAWAL</span></td>
                    <td style="color: #dc3545;">-LKR 2,000.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
                <tr>
                    <td>2024-01-12</td>
                    <td>Salary Credit</td>
                    <td><span class="badge badge-success">DEPOSIT</span></td>
                    <td style="color: #28a745;">+LKR 75,000.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
                <tr>
                    <td>2024-01-11</td>
                    <td>Utility Bill Payment</td>
                    <td><span class="badge badge-warning">TRANSFER_OUT</span></td>
                    <td style="color: #dc3545;">-LKR 3,450.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
            </tbody>
        </table>
    </div>
    <!-- Account Overview and Monthly Summary -->
    <div class="card-grid">
        <div class="card">
            <h3>🏦 Account Overview</h3>
            <div class="account-item" style="border-left: 4px solid #FE7743; padding-left: 1rem; margin-bottom: 1rem;">
                <h4>Savings Account</h4>
                <p><strong>Account:</strong> ****1234</p>
                <p><strong>Balance:</strong> LKR 85,450.00</p>
                <p><strong>Interest Rate:</strong> 6.5% p.a.</p>
            </div>
            <div class="account-item" style="border-left: 4px solid #447D9B; padding-left: 1rem; margin-bottom: 1rem;">
                <h4>Checking Account</h4>
                <p><strong>Account:</strong> ****5678</p>
                <p><strong>Balance:</strong> LKR 25,000.00</p>
                <p><strong>Interest Rate:</strong> 2.0% p.a.</p>
            </div>
            <div class="account-item" style="border-left: 4px solid #273F4F; padding-left: 1rem;">
                <h4>Fixed Deposit</h4>
                <p><strong>Account:</strong> ****9012</p>
                <p><strong>Balance:</strong> LKR 15,000.00</p>
                <p><strong>Interest Rate:</strong> 8.5% p.a.</p>
                <p><strong>Maturity:</strong> 2024-06-15</p>
            </div>
        </div>
        <div class="card">
            <h3>📈 Monthly Summary</h3>
            <div style="text-align: center; margin-bottom: 1rem;">
                <canvas id="monthlyChart" width="300" height="200"></canvas>
            </div>
            <div class="summary-stats">
                <div style="display: flex; justify-content: space-between; margin-bottom: 0.5rem;">
                    <span>Total Income:</span>
                    <span style="color: #28a745; font-weight: bold;">+LKR 76,200.00</span>
                </div>
                <div style="display: flex; justify-content: space-between; margin-bottom: 0.5rem;">
                    <span>Total Expenses:</span>
                    <span style="color: #dc3545; font-weight: bold;">-LKR 10,450.00</span>
                </div>
                <hr>
                <div style="display: flex; justify-content: space-between; font-weight: bold;">
                    <span>Net Change:</span>
                    <span style="color: #28a745;">+LKR 65,750.00</span>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../shared/footer.jspf" %>
<script>
    // Simple chart simulation (in real app, use Chart.js or similar)
    document.addEventListener('DOMContentLoaded', function() {
        const canvas = document.getElementById('monthlyChart');
        const ctx = canvas.getContext('2d');
        ctx.fillStyle = '#FE7743';
        ctx.fillRect(50, 150, 30, 30);
        ctx.fillRect(100, 130, 30, 50);
        ctx.fillRect(150, 110, 30, 70);
        ctx.fillRect(200, 90, 30, 90);
        ctx.fillStyle = '#447D9B';
        ctx.font = '12px Arial';
        ctx.fillText('Jan', 55, 195);
        ctx.fillText('Feb', 105, 195);
        ctx.fillText('Mar', 155, 195);
        ctx.fillText('Apr', 205, 195);
    });
</script>
</body>
</html>