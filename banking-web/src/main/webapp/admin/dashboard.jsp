<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Crown Capital Bank</title>
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
            <h1>⚙️ Admin Dashboard</h1>
            <p>System configuration, deployment, and advanced controls</p>
        </div>
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-value">6</div>
                <div class="stat-label">🛠️ Modules Managed</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">4</div>
                <div class="stat-label">⏱️ Active Timers</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">12</div>
                <div class="stat-label">👥 Admin Users</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">99.99%</div>
                <div class="stat-label">🟢 System Uptime</div>
            </div>
        </div>
        <div class="card-grid">
            <div class="card admin">
                <h3>Quick Links</h3>
                <ul class="dashboard-links">
                    <li><a href="configureTimers.jsp">⏱️ Configure EJB Timers</a></li>
                    <li><a href="manageRoles.jsp">👥 Manage User Roles</a></li>
                    <li><a href="monitorTimerHealth.jsp">🩺 Monitor Timer Health</a></li>
                    <li><a href="deployModules.jsp">📦 Deploy EJB Modules</a></li>
                    <li><a href="systemParams.jsp">⚙️ System Parameters</a></li>
                </ul>
            </div>
            <div class="card admin">
                <h3>🔔 Recent Admin Activity</h3>
                <div class="alert alert-success">
                    <strong>Module Deployed:</strong> banking-ejb-1.0 <small style="display:block;">5 min ago</small>
                </div>
                <div class="alert alert-info">
                    <strong>Timer Updated:</strong> DailyInterestTimer <small style="display:block;">30 min ago</small>
                </div>
                <div class="alert alert-warning">
                    <strong>Role Changed:</strong> User #102 promoted to MANAGER <small style="display:block;">1 hour ago</small>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 