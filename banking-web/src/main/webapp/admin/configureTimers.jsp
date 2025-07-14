<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Configure EJB Timers - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Configure EJB Timers</h2>
    <form method="post" action="/admin/ConfigureTimersServlet">
        <label for="timerName">Timer Name:</label>
        <input type="text" id="timerName" name="timerName" required><br>
        <label for="cron">Cron Expression:</label>
        <input type="text" id="cron" name="cron" required><br>
        <button type="submit">Configure</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 