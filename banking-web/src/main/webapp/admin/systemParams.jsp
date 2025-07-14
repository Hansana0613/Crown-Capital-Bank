<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>System Parameters - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Configure System Parameters</h2>
    <form method="post" action="/admin/SystemParamsServlet">
        <label for="key">Parameter Key:</label>
        <input type="text" id="key" name="key" required><br>
        <label for="value">Parameter Value:</label>
        <input type="text" id="value" name="value" required><br>
        <button type="submit">Update</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 