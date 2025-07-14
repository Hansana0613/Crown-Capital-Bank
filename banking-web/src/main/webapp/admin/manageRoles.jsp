<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage User Roles - Crown Capital Bank</title>
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
            <h1>👥 Manage User Roles</h1>
            <p>Assign and update user roles and permissions</p>
        </div>
        <div class="card-grid">
            <div class="card admin">
                <h3>Assign Role</h3>
                <form method="post" action="/admin/ManageRolesServlet" class="form-container">
                    <div class="form-group">
                        <label for="userId">User ID</label>
                        <input type="text" id="userId" name="userId" class="form-control" required placeholder="Enter user ID">
                    </div>
                    <div class="form-group">
                        <label for="role">Role</label>
                        <select id="role" name="role" class="form-control" required>
                            <option value="CUSTOMER">Customer</option>
                            <option value="TELLER">Teller</option>
                            <option value="MANAGER">Manager</option>
                            <option value="ADMIN">Admin</option>
                        </select>
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Assign Role</button>
                        <button type="reset" class="btn btn-secondary">Clear</button>
                    </div>
                </form>
            </div>
            <div class="card admin">
                <h3>Current Users & Roles</h3>
                <div class="table-container" style="box-shadow:none;">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>User ID</th>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>101</td>
                                <td>admin1</td>
                                <td>admin1@ccb.lk</td>
                                <td><span class="badge badge-info">ADMIN</span></td>
                                <td><span class="badge badge-success">Active</span></td>
                            </tr>
                            <tr>
                                <td>102</td>
                                <td>manager1</td>
                                <td>manager1@ccb.lk</td>
                                <td><span class="badge badge-warning">MANAGER</span></td>
                                <td><span class="badge badge-success">Active</span></td>
                            </tr>
                            <tr>
                                <td>103</td>
                                <td>teller1</td>
                                <td>teller1@ccb.lk</td>
                                <td><span class="badge badge-secondary">TELLER</span></td>
                                <td><span class="badge badge-success">Active</span></td>
                            </tr>
                            <tr>
                                <td>104</td>
                                <td>customer1</td>
                                <td>customer1@ccb.lk</td>
                                <td><span class="badge badge-primary">CUSTOMER</span></td>
                                <td><span class="badge badge-success">Active</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card admin">
                <h3>💡 Role Management Tips</h3>
                <ul class="dashboard-links">
                    <li>Assign roles based on job function and access needs</li>
                    <li>Review user status regularly</li>
                    <li>Deactivate users who leave the organization</li>
                    <li>All changes are logged for audit</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 