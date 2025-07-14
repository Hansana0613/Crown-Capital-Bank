<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Open Customer Account - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Open New Customer Account</h2>
    <form method="post" action="/teller/OpenAccountServlet">
        <label for="customerName">Customer Name:</label>
        <input type="text" id="customerName" name="customerName" required><br>
        <label for="initialDeposit">Initial Deposit:</label>
        <input type="number" id="initialDeposit" name="initialDeposit" step="0.01" required><br>
        <button type="submit">Open Account</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 