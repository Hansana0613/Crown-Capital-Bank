<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../shared/navbar.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <title>Transfer Funds - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div class="container">
    <div class="hero">
        <h1>💸 Transfer Funds</h1>
        <p>Send money securely to another account</p>
    </div>
    <div class="card">
        <h3>Transfer Form</h3>
        <form class="form-container" method="post" action="transferFunds">
            <div class="form-group">
                <label for="fromAccount">From Account</label>
                <select id="fromAccount" name="fromAccount" class="form-control" required>
                    <option value="">Select Account</option>
                    <option value="****1234">****1234 (Savings)</option>
                    <option value="****5678">****5678 (Checking)</option>
                </select>
            </div>
            <div class="form-group">
                <label for="toAccount">To Account Number</label>
                <input type="text" id="toAccount" name="toAccount" class="form-control" required pattern="\d{4,20}" placeholder="Enter recipient account number">
            </div>
            <div class="form-group">
                <label for="amount">Amount (LKR)</label>
                <input type="number" id="amount" name="amount" class="form-control" required min="1" step="0.01" placeholder="Enter amount">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <input type="text" id="description" name="description" class="form-control" maxlength="100" placeholder="Optional">
            </div>
            <div class="btn-group">
                <button type="submit" class="btn btn-primary">🚀 Transfer</button>
                <a href="dashboard.jsp" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>
</div>
<%@ include file="../shared/footer.jspf" %>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const form = document.querySelector('form');
        form.addEventListener('submit', function(e) {
            const amount = parseFloat(document.getElementById('amount').value);
            if (isNaN(amount) || amount <= 0) {
                alert('Please enter a valid amount.');
                e.preventDefault();
            }
        });
    });
</script>
</body>
</html>
