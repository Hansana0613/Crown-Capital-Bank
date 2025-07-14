<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Admin Dashboard</h2>
    <ul>
        <li><a href="configureTimers.jsp">Configure EJB Timers</a></li>
        <li><a href="manageRoles.jsp">Manage User Roles and Permissions</a></li>
        <li><a href="monitorTimerHealth.jsp">Monitor Timer Execution Health</a></li>
        <li><a href="deployModules.jsp">Deploy Updated EJB Modules</a></li>
        <li><a href="systemParams.jsp">Configure System Parameters</a></li>
    </ul>
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 