<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Management - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <header class="header">
        <div class="nav-container">
            <a href="dashboard.jsp" class="logo">Crown Capital Bank</a>
            <ul class="nav-menu">
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="timers.jsp">Timers</a></li>
                <li><a href="users.jsp">Users</a></li>
                <li><a href="settings.jsp">Settings</a></li>
                <li><a href="../logout">Logout</a></li>
            </ul>
        </div>
    </header>

    <div class="container">
        <div class="hero">
            <h1>User Management</h1>
            <p>Create and manage user accounts and roles.</p>
        </div>

        <c:if test="${not empty message}">
            <div class="alert alert-${messageType}">${message}</div>
        </c:if>

        <div class="card">
            <h3>Add New User</h3>
            <form action="admin" method="post" class="form-container">
                <input type="hidden" name="action" value="createUser">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" class="form-control" required>
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
                <button type="submit" class="btn btn-primary">Create User</button>
            </form>
        </div>

        <div class="table-container">
            <table class="table">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.username}</td>
                            <td>${user.email}</td>
                            <td>${userRoles[user.username]}</td>
                            <td><span class="badge badge-${user.enabled ? 'success' : 'danger'}">${user.enabled ? 'Enabled' : 'Disabled'}</span></td>
                            <td>
                                <div class="btn-group">
                                    <form action="admin" method="post" style="display:inline;">
                                        <input type="hidden" name="action" value="${user.enabled ? 'disableUser' : 'enableUser'}">
                                        <input type="hidden" name="username" value="${user.username}">
                                        <button type="submit" class="btn btn-${user.enabled ? 'danger' : 'success'}">
                                                ${user.enabled ? 'Disable' : 'Enable'}
                                        </button>
                                    </form>
                                    <form action="admin" method="post" style="display:inline;">
                                        <input type="hidden" name="action" value="updateRole">
                                        <input type="hidden" name="username" value="${user.username}">
                                        <select name="newRole" class="form-control" style="display:inline; width:150px;">
                                            <option value="CUSTOMER">Customer</option>
                                            <option value="TELLER">Teller</option>
                                            <option value="MANAGER">Manager</option>
                                            <option value="ADMIN">Admin</option>
                                        </select>
                                        <button type="submit" class="btn btn-primary">Update Role</button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2025 Crown Capital Bank. All rights reserved.</p>
    </footer>
</body>
</html>