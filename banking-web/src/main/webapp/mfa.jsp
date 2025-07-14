<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>MFA Verification - Crown Capital Bank</title>
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
        <div class="hero" style="background: linear-gradient(135deg, #447D9B 0%, #273F4F 100%); color: white;">
            <h1 style="font-size:2.5rem;">🔐 Multi-Factor Authentication</h1>
            <p style="font-size:1.1rem;">For your security, please enter the One-Time Password (OTP) sent to your registered device.</p>
        </div>
        <div class="card-grid" style="margin-top:2rem;">
            <div class="card">
                <h3>Enter OTP</h3>
                <form method="post" action="MFAServlet" class="form-container">
                    <div class="form-group">
                        <label for="otp">One-Time Password (OTP)</label>
                        <input type="text" id="otp" name="otp" class="form-control" required maxlength="10" placeholder="Enter OTP">
                    </div>
                    <div class="btn-group">
                        <button type="submit" class="btn btn-primary">Verify</button>
                        <a href="login.jsp" class="btn btn-secondary">Back to Login</a>
                    </div>
                </form>
                <div style="margin-top:1rem;">
                    <span style="color:#FE7743;">Didn't receive the code?</span> <a href="#" style="color:#447D9B;">Resend OTP</a>
                </div>
            </div>
            <div class="card">
                <h3>🛡️ Security Tips</h3>
                <ul class="dashboard-links">
                    <li>Never share your OTP with anyone</li>
                    <li>OTP is valid for a limited time</li>
                    <li>Contact support if you suspect fraud</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Crown Capital Bank. All rights reserved. | Regulated by Central Bank of Sri Lanka</p>
    </div>
</body>
</html> 