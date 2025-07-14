<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Customer Dashboard</h2>
    <ul>
        <li><a href="accountSummary.jsp">View Account Summary</a></li>
        <li><a href="transferFunds.jsp">Transfer Funds</a></li>
        <li><a href="transactionHistory.jsp">Transaction History</a></li>
        <li><a href="scheduleTransfer.jsp">Schedule Future Transfer</a></li>
        <li><a href="interestNotification.jsp">Interest Notifications</a></li>
    </ul>
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 