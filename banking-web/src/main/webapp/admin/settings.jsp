<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>System Settings - Crown Capital Bank</title>
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
            <h1>System Settings</h1>
            <p>Configure bank-wide settings.</p>
        </div>

        <c:if test="${not empty message}">
            <div class="alert alert-${messageType}">${message}</div>
        </c:if>

        <div class="card">
            <h3>Update Settings</h3>
            <form action="admin" method="post" class="form-container">
                <input type="hidden" name="action" value="updateSettings">
                <div class="form-group">
                    <label for="bankName">Bank Name</label>
                    <input type="text" id="bankName" name="bankName" value="${settings.bankName}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="supportEmail">Support Email</label>
                    <input type="email" id="supportEmail" name="supportEmail" value="${settings.supportEmail}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="interestRateSavings">Savings Interest Rate (%)</label>
                    <input type="number" step="0.01" id="interestRateSavings" name="interestRateSavings" value="${settings.interestRateSavings}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="interestRateFD">Fixed Deposit Interest Rate (%)</label>
                    <input type="number" step="0.01" id="interestRateFD" name="interestRateFD" value="${settings.interestRateFD}" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="interestRateChecking">Checking Interest Rate (%)</label>
                    <input type="number" step="0.01" id="interestRateChecking" name="interestRateChecking" value="${settings.interestRateChecking}" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary">Update Settings</button>
            </form>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2025 Crown Capital Bank. All rights reserved.</p>
    </footer>
</body>
</html>