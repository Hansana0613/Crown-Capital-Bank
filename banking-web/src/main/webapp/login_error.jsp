<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="shared/navbar.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Error - Crown Capital Bank</title>
    <link rel="stylesheet" href="static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container" style="max-width: 500px; margin: 4rem auto;">
    <% request.setAttribute("alert", "Your login attempt was unsuccessful. Please try again."); request.setAttribute("alertType", "danger"); %>
    <%@ include file="shared/alert.jspf" %>
    <div style="text-align:center; margin-top:2rem;">
        <a href="login.jsp" class="btn btn-primary">Back to Login</a>
    </div>
</div>
<%@ include file="shared/footer.jspf" %>
</body>
</html> 