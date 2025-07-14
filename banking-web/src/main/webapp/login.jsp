<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Crown Capital Bank</title>
    <link rel="stylesheet" href="static/css/style.css">
</head>
<body>
    <jsp:include page="shared/navbar.jspf" />
    <h2>Login</h2>
    <form method="post" action="j_security_check">
        <label for="j_username">Username:</label>
        <input type="text" id="j_username" name="j_username" required><br>
        <label for="j_password">Password:</label>
        <input type="password" id="j_password" name="j_password" required><br>
        <button type="submit">Login</button>
    </form>
    <jsp:include page="shared/alert.jspf" />
    <jsp:include page="shared/footer.jspf" />
</body>
</html> 