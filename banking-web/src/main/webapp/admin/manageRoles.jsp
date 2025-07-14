<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage User Roles - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Manage User Roles and Permissions</h2>
    <form method="post" action="/admin/ManageRolesServlet">
        <label for="userId">User ID:</label>
        <input type="text" id="userId" name="userId" required><br>
        <label for="role">Role:</label>
        <select id="role" name="role" required>
            <option value="CUSTOMER">Customer</option>
            <option value="TELLER">Teller</option>
            <option value="MANAGER">Manager</option>
            <option value="ADMIN">Admin</option>
        </select><br>
        <button type="submit">Assign Role</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 