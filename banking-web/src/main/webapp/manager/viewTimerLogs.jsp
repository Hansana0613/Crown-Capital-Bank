<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Timer Service Logs - Crown Capital Bank</title>
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
            <h1>⏱️ Timer Service Logs</h1>
            <p>Monitor the execution and health of scheduled EJB timers</p>
        </div>
        <div class="card-grid">
            <div class="card">
                <h3>Recent Timer Logs</h3>
                <div class="table-container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Log ID</th>
                                <th>Timer Name</th>
                                <th>Status</th>
                                <th>Executed At</th>
                                <th>Duration (ms)</th>
                                <th>Error Message</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>9001</td>
                                <td>DailyInterestTimer</td>
                                <td><span class="badge badge-success">Success</span></td>
                                <td>2024-01-15 00:00</td>
                                <td>1200</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>9002</td>
                                <td>BalanceSnapshotTimer</td>
                                <td><span class="badge badge-danger">Failure</span></td>
                                <td>2024-01-15 00:05</td>
                                <td>1500</td>
                                <td>Database timeout</td>
                            </tr>
                            <tr>
                                <td>9003</td>
                                <td>ScheduledTransferTimer</td>
                                <td><span class="badge badge-warning">Skipped</span></td>
                                <td>2024-01-15 00:10</td>
                                <td>0</td>
                                <td>No pending transfers</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card">
                <h3>💡 Timer Log Tips</h3>
                <ul class="dashboard-links">
                    <li>Monitor failures and investigate root causes</li>
                    <li>Check for skipped or delayed executions</li>
                    <li>Review error messages for troubleshooting</li>
                    <li>Contact IT for persistent issues</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 