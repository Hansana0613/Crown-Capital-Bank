<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reverse Transaction - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Reverse Failed Transaction</h2>
    <form method="post" action="/teller/ReverseTransactionServlet">
        <label for="transactionId">Transaction ID:</label>
        <input type="text" id="transactionId" name="transactionId" required><br>
        <label for="reason">Reason:</label>
        <input type="text" id="reason" name="reason" required><br>
        <button type="submit">Reverse</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 