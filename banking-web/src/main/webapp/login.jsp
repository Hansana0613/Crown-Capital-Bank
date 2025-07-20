<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crown Capital Bank - Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-container {
            background: white;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .logo {
            text-align: center;
            margin-bottom: 2rem;
        }

        .logo h1 {
            color: #333;
            font-size: 1.8rem;
            margin-bottom: 0.5rem;
        }

        .logo p {
            color: #666;
            font-size: 0.9rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #333;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 0.75rem;
            border: 2px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #667eea;
        }

        .login-btn {
            width: 100%;
            padding: 0.75rem;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.2s ease;
        }

        .login-btn:hover {
            transform: translateY(-2px);
        }

        .login-btn:active {
            transform: translateY(0);
        }

        .error-message {
            background-color: #fee;
            color: #c33;
            padding: 0.75rem;
            border-radius: 5px;
            margin-bottom: 1rem;
            border: 1px solid #fcc;
        }

        .success-message {
            background-color: #efe;
            color: #363;
            padding: 0.75rem;
            border-radius: 5px;
            margin-bottom: 1rem;
            border: 1px solid #cfc;
        }

        .info-box {
            background-color: #f8f9fa;
            padding: 1rem;
            border-radius: 5px;
            margin-top: 1.5rem;
            border-left: 4px solid #667eea;
        }

        .info-box h3 {
            color: #333;
            margin-bottom: 0.5rem;
            font-size: 1rem;
        }

        .info-box ul {
            list-style: none;
            padding: 0;
        }

        .info-box li {
            margin-bottom: 0.3rem;
            font-size: 0.9rem;
            color: #666;
        }

        .info-box .role {
            font-weight: bold;
            color: #333;
        }

        .footer {
            text-align: center;
            margin-top: 2rem;
            color: #666;
            font-size: 0.8rem;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="logo">
            <h1>Crown Capital Bank</h1>
            <p>Secure Banking System</p>
        </div>

        <!-- Display error messages -->
        <% if (request.getAttribute("error") != null) { %>
            <div class="error-message">
                <%= request.getAttribute("error") %>
            </div>
        <% } %>

        <!-- Display success messages -->
        <% if (request.getParameter("message") != null) { %>
            <% if ("logout_successful".equals(request.getParameter("message"))) { %>
                <div class="success-message">
                    You have been logged out successfully.
                </div>
            <% } %>
        <% } %>

        <!-- Login Form -->
        <form action="login" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text"
                       id="username"
                       name="username"
                       required
                       maxlength="50"
                       value="<%= request.getAttribute("username") != null ? request.getAttribute("username") : "" %>"
                       placeholder="Enter your username">
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password"
                       id="password"
                       name="password"
                       required
                       maxlength="100"
                       placeholder="Enter your password">
            </div>

            <button type="submit" class="login-btn">Login</button>
        </form>

        <!-- Demo Users Information -->
        <div class="info-box">
            <h3>Demo Users (for testing):</h3>
            <ul>
                <li><span class="role">Admin:</span> admin / admin123</li>
                <li><span class="role">Manager:</span> manager / manager123</li>
                <li><span class="role">Teller:</span> teller / teller123</li>
                <li><span class="role">Customer:</span> customer / customer123</li>
            </ul>
        </div>

        <div class="footer">
            <p>&copy; 2025 Crown Capital Bank. All rights reserved.</p>
        </div>
    </div>

    <script>
        // Auto-focus on username field when page loads
        document.addEventListener('DOMContentLoaded', function() {
            document.getElementById('username').focus();
        });

        // Form validation
        document.querySelector('form').addEventListener('submit', function(e) {
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('password').value;

            if (username === '' || password === '') {
                e.preventDefault();
                alert('Please enter both username and password.');
                return false;
            }

            if (username.length < 3) {
                e.preventDefault();
                alert('Username must be at least 3 characters long.');
                return false;
            }

            if (password.length < 6) {
                e.preventDefault();
                alert('Password must be at least 6 characters long.');
                return false;
            }
        });
    </script>
</body>
</html>