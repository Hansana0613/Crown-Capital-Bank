<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Deploy EJB Modules - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Deploy Updated EJB Modules</h2>
    <form method="post" action="/admin/DeployModulesServlet">
        <label for="moduleName">Module Name:</label>
        <input type="text" id="moduleName" name="moduleName" required><br>
        <button type="submit">Deploy</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 