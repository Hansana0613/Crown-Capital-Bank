<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Teller Dashboard - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Teller Dashboard</h2>
    <ul>
        <li><a href="openCustomerAccount.jsp">Open New Customer Account</a></li>
        <li><a href="depositWithdraw.jsp">Process Deposit/Withdrawal</a></li>
        <li><a href="dailyTransactionReport.jsp">Daily Transaction Report</a></li>
        <li><a href="reverseTransaction.jsp">Reverse Failed Transactions</a></li>
        <li><a href="freezeAccount.jsp">Freeze Customer Account</a></li>
    </ul>
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 