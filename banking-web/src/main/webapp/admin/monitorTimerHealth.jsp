<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Monitor Timer Execution Health - Crown Capital Bank</title>
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
                    <li><a href="configureTimers.jsp">⏱️ Timers</a></li>
                    <li><a href="manageRoles.jsp">👥 Roles</a></li>
                    <li><a href="monitorTimerHealth.jsp">🩺 Timer Health</a></li>
                    <li><a href="deployModules.jsp">📦 Deploy</a></li>
                    <li><a href="systemParams.jsp">⚙️ System Params</a></li>
                    <li><a href="../logout">🚪 Logout</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="hero">
            <h1>🩺 Monitor Timer Execution Health</h1>
            <p>Track the status and health of all scheduled EJB timers</p>
        </div>
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-value">4</div>
                <div class="stat-label">⏱️ Total Timers</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">3</div>
                <div class="stat-label">🟢 Healthy</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">1</div>
                <div class="stat-label">🔴 Issues</div>
            </div>
        </div>
        <div class="card-grid">
            <div class="card admin">
                <h3>Timer Status Overview</h3>
                <div class="table-container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Timer Name</th>
                                <th>Status</th>
                                <th>Last Executed</th>
                                <th>Duration (ms)</th>
                                <th>Error Message</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>DailyInterestTimer</td>
                                <td><span class="badge badge-success">Healthy</span></td>
                                <td>2024-01-15 00:00</td>
                                <td>1200</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>BalanceSnapshotTimer</td>
                                <td><span class="badge badge-success">Healthy</span></td>
                                <td>2024-01-15 00:05</td>
                                <td>1500</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>OverdraftPenaltyTimer</td>
                                <td><span class="badge badge-danger">Failure</span></td>
                                <td>2024-01-15 02:00</td>
                                <td>2000</td>
                                <td>Database timeout</td>
                            </tr>
                            <tr>
                                <td>ScheduledTransferTimer</td>
                                <td><span class="badge badge-success">Healthy</span></td>
                                <td>2024-01-15 00:10</td>
                                <td>1100</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card admin">
                <h3>💡 Monitoring Tips</h3>
                <ul class="dashboard-links">
                    <li>Investigate failures immediately</li>
                    <li>Check error messages for troubleshooting</li>
                    <li>Healthy timers should execute on schedule</li>
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