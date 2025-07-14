<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Redirecting... - Crown Capital Bank</title>
    <link rel="stylesheet" href="static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .centered {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 60vh;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="nav-container">
            <a href="index.jsp" class="logo">Crown Capital Bank</a>
        </div>
    </div>
    <div class="container">
        <div class="centered">
            <div class="loading" style="margin-bottom:1.5rem;"></div>
            <h2 style="color:#273F4F;">Redirecting to your dashboard...</h2>
            <p style="color:#447D9B;">Please wait while we load your personalized experience.</p>
            <form method="post" action="logout" style="margin-top:2rem;">
                <button class="btn btn-secondary">Logout</button>
            </form>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
<%
    HttpSession session = request.getSession(false);
    String role = (session != null) ? (String) session.getAttribute("role") : null;
    if (role == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    switch (role) {
        case "CUSTOMER":
            response.sendRedirect("customer/dashboard.jsp");
            break;
        case "TELLER":
            response.sendRedirect("teller/dashboard.jsp");
            break;
        case "MANAGER":
            response.sendRedirect("manager/dashboard.jsp");
            break;
        case "ADMIN":
            response.sendRedirect("admin/dashboard.jsp");
            break;
        default:
            // Show error message for unknown role
%>
    <div class="container">
        <div class="alert alert-danger" style="margin-top:2rem;">
            <strong>Unknown role detected.</strong> Please contact support or <a href="logout" style="color:#FE7743;">logout</a> and try again.
        </div>
    </div>
<%
    }
%>
</body>
</html> 