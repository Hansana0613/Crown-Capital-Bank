<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error - Crown Capital Bank</title>
    <link rel="stylesheet" href="static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="header">
        <div class="nav-container">
            <a href="index.jsp" class="logo">Crown Capital Bank</a>
            <nav>
                <ul class="nav-menu">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="hero" style="background: linear-gradient(135deg, #dc3545 0%, #FE7743 100%); color: white;">
            <h1 style="font-size:3rem;">🚫 Oops! Something Went Wrong</h1>
            <p style="font-size:1.2rem; margin-bottom:2rem;">An unexpected error occurred.<br>Please try again or contact support if the problem persists.</p>
            <a href="index.jsp" class="btn btn-primary" style="background: #273F4F; color: white;">Return to Home</a>
            <a href="login.jsp" class="btn btn-secondary">Login</a>
        </div>
        <div class="card-grid" style="margin-top:2rem;">
            <div class="card">
                <h3>💡 Troubleshooting Tips</h3>
                <ul class="dashboard-links">
                    <li>Check your internet connection</li>
                    <li>Clear your browser cache and cookies</li>
                    <li>Try logging in again</li>
                    <li>Contact <a href="mailto:support@ccb.lk" style="color:#FE7743;">support@ccb.lk</a> for help</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 