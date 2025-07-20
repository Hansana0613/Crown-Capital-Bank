<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Crown Capital Bank</title>
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
            <h1>Welcome, Admin</h1>
            <p>Manage system configurations, timers, and user roles.</p>
        </div>

        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-value">${activeTimers}</div>
                <div class="stat-label">Active Timers</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">${totalUsers}</div>
                <div class="stat-label">Total Users</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">${recentLogs}</div>
                <div class="stat-label">Recent Timer Logs</div>
            </div>
        </div>

        <div class="card admin">
            <h3>Admin Actions</h3>
            <ul class="dashboard-links">
                <li><a href="timers.jsp">Configure Timers</a></li>
                <li><a href="users.jsp">Manage Users</a></li>
                <li><a href="settings.jsp">Update System Settings</a></li>
                <li><a href="#">View Deployment Status (EJB Modules)</a></li>
            </ul>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2025 Crown Capital Bank. All rights reserved.</p>
    </footer>
</body>
</html>