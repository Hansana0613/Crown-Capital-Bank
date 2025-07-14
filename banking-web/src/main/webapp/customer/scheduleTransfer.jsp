<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Schedule Transfer - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Schedule Future Transfer</h2>
    <form method="post" action="/customer/ScheduleTransferServlet">
        <label for="toAccount">To Account:</label>
        <input type="text" id="toAccount" name="toAccount" required><br>
        <label for="amount">Amount:</label>
        <input type="number" id="amount" name="amount" step="0.01" required><br>
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required><br>
        <button type="submit">Schedule</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 