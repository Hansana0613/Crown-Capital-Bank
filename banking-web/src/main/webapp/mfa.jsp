<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>MFA Verification - Crown Capital Bank</title>
    <link rel="stylesheet" href="static/css/style.css">
</head>
<body>
    <jsp:include page="shared/navbar.jspf" />
    <h2>Multi-Factor Authentication</h2>
    <form method="post" action="MFAServlet">
        <label for="otp">Enter OTP:</label>
        <input type="text" id="otp" name="otp" required><br>
        <button type="submit">Verify</button>
    </form>
    <jsp:include page="shared/alert.jspf" />
    <jsp:include page="shared/footer.jspf" />
</body>
</html> 