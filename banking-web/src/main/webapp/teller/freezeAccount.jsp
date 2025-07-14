<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Freeze Account - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Freeze Customer Account</h2>
    <form method="post" action="/teller/FreezeAccountServlet">
        <label for="accountNumber">Account Number:</label>
        <input type="text" id="accountNumber" name="accountNumber" required><br>
        <label for="reason">Reason:</label>
        <input type="text" id="reason" name="reason" required><br>
        <button type="submit">Freeze</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 