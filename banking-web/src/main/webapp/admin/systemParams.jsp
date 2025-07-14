<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>System Parameters - Crown Capital Bank</title>
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
            <h1>⚙️ System Parameters</h1>
            <p>Configure and manage global system settings</p>
        </div>
        <div class="card-grid">
            <div class="card admin">
                <h3>Update Parameter</h3>
                <form method="post" action="/admin/SystemParamsServlet" class="form-container">
                    <div class="form-group">
                        <label for="key">Parameter Key</label>
                        <input type="text" id="key" name="key" class="form-control" required placeholder="e.g. MAX_LOGIN_ATTEMPTS">
                    </div>
                    <div class="form-group">
                        <label for="value">Parameter Value</label>
                        <input type="text" id="value" name="value" class="form-control" required placeholder="e.g. 5">
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Update</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card admin">
                <h3>Current System Parameters</h3>
                <div class="table-container" style="box-shadow:none;">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Key</th>
                                <th>Value</th>
                                <th>Last Modified</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>MAX_LOGIN_ATTEMPTS</td>
                                <td>5</td>
                                <td>2024-01-10 09:00</td>
                            </tr>
                            <tr>
                                <td>PASSWORD_EXPIRY_DAYS</td>
                                <td>90</td>
                                <td>2024-01-01 08:00</td>
                            </tr>
                            <tr>
                                <td>MAINTENANCE_MODE</td>
                                <td>OFF</td>
                                <td>2024-01-12 22:00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card admin">
                <h3>💡 Parameter Tips</h3>
                <ul class="dashboard-links">
                    <li>Update parameters with caution</li>
                    <li>Document all changes for audit</li>
                    <li>Some changes may require system restart</li>
                    <li>Contact IT for critical settings</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 