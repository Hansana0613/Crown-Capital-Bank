<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Configure EJB Timers - Crown Capital Bank</title>
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
            <h1>⏱️ Configure EJB Timers</h1>
            <p>Manage scheduled tasks and timer expressions for system automation</p>
        </div>
        <div class="card-grid">
            <div class="card admin">
                <h3>Timer Configuration Form</h3>
                <form method="post" action="/admin/ConfigureTimersServlet" class="form-container">
                    <div class="form-group">
                        <label for="timerName">Timer Name</label>
                        <input type="text" id="timerName" name="timerName" class="form-control" required placeholder="e.g. DailyInterestTimer">
                    </div>
                    <div class="form-group">
                        <label for="cron">Cron Expression</label>
                        <input type="text" id="cron" name="cron" class="form-control" required placeholder="e.g. 0 0 0 * * ?">
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Configure</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card admin">
                <h3>Configured Timers</h3>
                <div class="table-container" style="box-shadow:none;">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Timer Name</th>
                                <th>Cron Expression</th>
                                <th>Status</th>
                                <th>Last Executed</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>DailyInterestTimer</td>
                                <td>0 0 0 * * ?</td>
                                <td><span class="badge badge-success">Active</span></td>
                                <td>2024-01-15 00:00</td>
                            </tr>
                            <tr>
                                <td>BalanceSnapshotTimer</td>
                                <td>0 5 0 * * ?</td>
                                <td><span class="badge badge-success">Active</span></td>
                                <td>2024-01-15 00:05</td>
                            </tr>
                            <tr>
                                <td>OverdraftPenaltyTimer</td>
                                <td>0 0 2 * * ?</td>
                                <td><span class="badge badge-warning">Paused</span></td>
                                <td>2024-01-15 02:00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card admin">
                <h3>💡 Timer Tips</h3>
                <ul class="dashboard-links">
                    <li>Use valid cron expressions for scheduling</li>
                    <li>Pause timers during maintenance windows</li>
                    <li>Monitor timer logs for failures</li>
                    <li>Contact IT for advanced scheduling</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 