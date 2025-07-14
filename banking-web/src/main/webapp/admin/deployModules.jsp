<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Deploy EJB Modules - Crown Capital Bank</title>
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
            <h1>📦 Deploy EJB Modules</h1>
            <p>Deploy, update, and manage EJB modules for the banking system</p>
        </div>
        <div class="card-grid">
            <div class="card admin">
                <h3>Deploy Module</h3>
                <form method="post" action="/admin/DeployModulesServlet" class="form-container">
                    <div class="form-group">
                        <label for="moduleName">Module Name</label>
                        <input type="text" id="moduleName" name="moduleName" class="form-control" required placeholder="e.g. banking-ejb-1.0">
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Deploy</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card admin">
                <h3>Deployed Modules</h3>
                <div class="table-container" style="box-shadow:none;">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Module Name</th>
                                <th>Version</th>
                                <th>Status</th>
                                <th>Deployed At</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>banking-ejb</td>
                                <td>1.0</td>
                                <td><span class="badge badge-success">Active</span></td>
                                <td>2024-01-15 09:00</td>
                            </tr>
                            <tr>
                                <td>banking-model</td>
                                <td>1.0</td>
                                <td><span class="badge badge-success">Active</span></td>
                                <td>2024-01-15 08:50</td>
                            </tr>
                            <tr>
                                <td>banking-web</td>
                                <td>1.0</td>
                                <td><span class="badge badge-warning">Pending</span></td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card admin">
                <h3>💡 Deployment Tips</h3>
                <ul class="dashboard-links">
                    <li>Deploy modules during off-peak hours</li>
                    <li>Verify module version before deployment</li>
                    <li>Monitor system after deployment</li>
                    <li>Rollback if issues are detected</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 