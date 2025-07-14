<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Crown Capital Bank</title>
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
                    <li><a href="#about">About</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </div>

    <div class="container">
        <div class="hero">
            <h1>🔐 Secure Login</h1>
            <p>Access your Crown Capital Bank account securely</p>
        </div>

        <div class="card-grid">
            <div class="card">
                <h3>Login to Your Account</h3>

                <%
                    String error = request.getParameter("error");
                    if (error != null) {
                %>
                    <div class="alert alert-danger">
                        <strong>Login Failed!</strong> Invalid username or password.
                    </div>
                <% } %>

                <form method="post" action="j_security_check" class="form-container">
                    <div class="form-group">
                        <label for="j_username">👤 Username</label>
                        <input type="text" id="j_username" name="j_username"
                               class="form-control" required
                               placeholder="Enter your username">
                    </div>

                    <div class="form-group">
                        <label for="j_password">🔑 Password</label>
                        <input type="password" id="j_password" name="j_password"
                               class="form-control" required
                               placeholder="Enter your password">
                    </div>

                    <div class="form-group">
                        <label>
                            <input type="checkbox" id="rememberMe" name="rememberMe">
                            Remember me
                        </label>
                    </div>

                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">
                            🚀 Login
                        </button>
                        <a href="#forgot-password" class="btn btn-secondary">
                            🔄 Forgot Password?
                        </a>
                    </div>
                </form>
            </div>

            <div class="card">
                <h3>🛡️ Security Features</h3>
                <ul class="dashboard-links">
                    <li><a href="#mfa">Multi-Factor Authentication</a></li>
                    <li><a href="#encryption">256-bit SSL Encryption</a></li>
                    <li><a href="#monitoring">24/7 Security Monitoring</a></li>
                    <li><a href="#alerts">Real-time Fraud Alerts</a></li>
                </ul>
            </div>
        </div>

        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-value">50K+</div>
                <div class="stat-label">Satisfied Customers</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">99.9%</div>
                <div class="stat-label">Uptime Guarantee</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">24/7</div>
                <div class="stat-label">Customer Support</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">15+</div>
                <div class="stat-label">Years of Trust</div>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>

    <script>
        // Add some interactivity
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.querySelector('form');
            const submitBtn = form.querySelector('button[type="submit"]');

            form.addEventListener('submit', function(e) {
                submitBtn.innerHTML = '<span class="loading"></span> Authenticating...';
                submitBtn.disabled = true;
            });
        });
    </script>
</body>
</html>