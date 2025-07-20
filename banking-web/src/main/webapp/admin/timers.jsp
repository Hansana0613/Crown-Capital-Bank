<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Timer Management - Crown Capital Bank</title>
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
            <h1>Timer Management</h1>
            <p>Configure and monitor EJB timers.</p>
        </div>

        <c:if test="${not empty message}">
            <div class="alert alert-${messageType}">${message}</div>
        </c:if>

        <div class="table-container">
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Type</th>
                        <th>Schedule</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="timer" items="${timers}">
                        <tr>
                            <td>${timer.name}</td>
                            <td>${timer.type}</td>
                            <td>${timer.schedule}</td>
                            <td><span class="badge badge-${timer.status == 'ACTIVE' ? 'success' : 'danger'}">${timer.status}</span></td>
                            <td>
                                <div class="btn-group">
                                    <form action="admin" method="post" style="display:inline;">
                                        <input type="hidden" name="action" value="${timer.status == 'ACTIVE' ? 'disableTimer' : 'enableTimer'}">
                                        <input type="hidden" name="timerName" value="${timer.name}">
                                        <button type="submit" class="btn btn-${timer.status == 'ACTIVE' ? 'danger' : 'success'}">
                                                ${timer.status == 'ACTIVE' ? 'Disable' : 'Enable'}
                                        </button>
                                    </form>
                                    <form action="admin" method="post" style="display:inline;">
                                        <input type="hidden" name="action" value="rescheduleTimer">
                                        <input type="hidden" name="timerName" value="${timer.name}">
                                        <input type="text" name="newSchedule" placeholder="New schedule" class="form-control" style="display:inline; width:150px;">
                                        <button type="submit" class="btn btn-primary">Reschedule</button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="card">
            <h3>Timer Logs</h3>
            <div class="table-container">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Log ID</th>
                            <th>Timer Name</th>
                            <th>Execution Time</th>
                            <th>Status</th>
                            <th>Message</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="log" items="${timerLogs}">
                            <tr>
                                <td>${log.logId}</td>
                                <td>${log.timer.name}</td>
                                <td>${log.executionTime}</td>
                                <td><span class="badge badge-${log.status == 'SUCCESS' ? 'success' : 'danger'}">${log.status}</span></td>
                                <td>${log.message}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2025 Crown Capital Bank. All rights reserved.</p>
    </footer>
</body>
</html>