<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Set Interest Rate Policy - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Set Interest Rate Policy</h2>
    <form method="post" action="/manager/SetInterestPolicyServlet">
        <label for="accountType">Account Type:</label>
        <select id="accountType" name="accountType" required>
            <option value="SAVINGS">Savings</option>
            <option value="FIXED_DEPOSIT">Fixed Deposit</option>
        </select><br>
        <label for="interestRate">Interest Rate (%):</label>
        <input type="number" id="interestRate" name="interestRate" step="0.01" required><br>
        <label for="effectiveDate">Effective Date:</label>
        <input type="date" id="effectiveDate" name="effectiveDate" required><br>
        <button type="submit">Set Policy</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 