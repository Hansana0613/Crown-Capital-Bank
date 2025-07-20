<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="navbar.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <title>Internal Server Error - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container" style="max-width: 500px; margin: 4rem auto;">
    <% request.setAttribute("alert", "Sorry, something went wrong on our end. Please try again later."); request.setAttribute("alertType", "danger"); %>
    <%@ include file="alert.jspf" %>
    <div style="text-align:center; margin-top:2rem;">
        <a href="../index.jsp" class="btn btn-primary">Back to Home</a>
    </div>
</div>
<%@ include file="footer.jspf" %>
</body>
</html> 