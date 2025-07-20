<%--
  Created by IntelliJ IDEA.
  User: Hansana
  Date: 7/19/2025
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="lk.hansanamadhuranga.ccb.ejb.session.UserServiceBean" %>
<%@ page import="jakarta.ejb.EJB" %>
<jsp:useBean id="userService" class="lk.hansanamadhuranga.ccb.ejb.session.UserServiceBean" scope="request" />
<html>
<head>
    <title>Crown Capital Bank - User Management</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .message { color: green; }
        table { border-collapse: collapse; width: 50%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
<div>
    <h2>User Management</h2>
    <% if (request.getParameter("message") != null && request.getParameter("message").equals("user_added")) { %>
        <p class="message">User added successfully!</p>
    <% } %>
    <h3>Existing Users</h3>
    <table>
        <tr>
            <th>Username</th>
            <th>Role</th>
        </tr>
        <c:forEach var="user" items="${userService.getAllUsers()}">
            <tr>
                <td>${user.username}</td>
                <td>${user.role}</td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="addUser">Add New User</a>
</div>
</body>
</html>