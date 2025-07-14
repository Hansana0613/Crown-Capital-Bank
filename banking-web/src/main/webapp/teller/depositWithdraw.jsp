<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Deposit/Withdrawal - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
</head>
<body>
    <jsp:include page="../shared/navbar.jspf" />
    <h2>Process Deposit/Withdrawal</h2>
    <form method="post" action="/teller/DepositWithdrawServlet">
        <label for="accountNumber">Account Number:</label>
        <input type="text" id="accountNumber" name="accountNumber" required><br>
        <label for="amount">Amount:</label>
        <input type="number" id="amount" name="amount" step="0.01" required><br>
        <label for="actionType">Action:</label>
        <select id="actionType" name="actionType" required>
            <option value="deposit">Deposit</option>
            <option value="withdrawal">Withdrawal</option>
        </select><br>
        <button type="submit">Submit</button>
    </form>
    <jsp:include page="../shared/alert.jspf" />
    <jsp:include page="../shared/footer.jspf" />
</body>
</html> 