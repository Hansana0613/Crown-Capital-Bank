<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Crown Capital Bank - Welcome</title>
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
                    <li><a href="#features">Features</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="hero" style="margin-bottom:2rem;">
            <h1>Welcome to <span style="color:#FE7743;">Crown Capital Bank</span></h1>
            <p style="font-size:1.3rem;">Your trusted partner for secure, modern, and convenient banking.</p>
            <a href="login.jsp" class="btn btn-primary" style="margin-top:2rem; font-size:1.2rem;">Login to Online Banking</a>
        </div>
        <div class="card-grid" id="features">
            <div class="card">
                <h3>🔒 Enterprise Security</h3>
                <ul class="dashboard-links">
                    <li>Multi-Factor Authentication (MFA)</li>
                    <li>Role-Based Access Control (RBAC)</li>
                    <li>256-bit AES Encryption</li>
                    <li>TLS 1.3 Secure Connections</li>
                </ul>
            </div>
            <div class="card">
                <h3>⚡ Fast & Reliable</h3>
                <ul class="dashboard-links">
                    <li>Real-time Fund Transfers</li>
                    <li>Scheduled Payments & Standing Orders</li>
                    <li>24/7 System Uptime</li>
                    <li>Instant Notifications</li>
                </ul>
            </div>
            <div class="card">
                <h3>📱 Modern Experience</h3>
                <ul class="dashboard-links">
                    <li>Responsive Web & Mobile UI</li>
                    <li>Personalized Dashboards</li>
                    <li>Comprehensive Account Management</li>
                    <li>Accessible & User-Friendly</li>
                </ul>
            </div>
        </div>
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-value">50K+</div>
                <div class="stat-label">Happy Customers</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">99.99%</div>
                <div class="stat-label">Uptime</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">24/7</div>
                <div class="stat-label">Support</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">15+</div>
                <div class="stat-label">Years of Trust</div>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka | <a href="#contact" style="color:#FE7743;">Contact Us</a></p>
    </div>
</body>
</html> 