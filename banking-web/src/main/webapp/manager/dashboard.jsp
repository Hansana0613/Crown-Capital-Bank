<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manager Dashboard - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Manager Dashboard</h2>
    <ul>
        <li><a href="approveHighValue.jsp">Approve High-Value Transfers</a></li>
        <li><a href="setInterestPolicy.jsp">Set Interest Rate Policy</a></li>
        <li><a href="auditDashboard.jsp">Review Account Activity for Audit</a></li>
        <li><a href="endOfDayLedger.jsp">Generate End-of-Day Ledger Report</a></li>
        <li><a href="viewTimerLogs.jsp">View Timer Service Logs</a></li>
    </ul>
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 