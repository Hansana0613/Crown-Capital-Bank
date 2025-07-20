<%--
  Created by IntelliJ IDEA.
  User: Hansana
  Date: 7/19/2025
  Time: 12:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Crown Capital Bank - Add User</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .form-container { max-width: 400px; margin: auto; }
        .error { color: red; }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Add New User</h2>
    <% if (request.getAttribute("error") != null) { %>
        <p class="error"><%= request.getAttribute("error") %></p>
    <% } %>
    <form action="addUser" method="post">
        <label>Username: </label><br>
        <input type="text" name="username" required><br><br>
        <label>Password: </label><br>
        <input type="password" name="password" required><br><br>
        <label>Confirm Password: </label><br>
        <input type="password" name="confirmPassword" required><br><br>
        <label>Role: </label><br>
        <select name="role" required>
            <option value="CUSTOMER">CUSTOMER</option>
            <option value="TELLER">TELLER</option>
            <option value="MANAGER">MANAGER</option>
            <option value="ADMIN">ADMIN</option>
        </select><br><br>
        <input type="submit" value="Add User">
    </form>
</div>
</body>
</html>
