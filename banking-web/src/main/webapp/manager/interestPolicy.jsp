<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../shared/navbar.jspf" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Interest Rate Policy - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
<div class="container">
    <div class="hero">
        <h1>💹 Interest Rate Policy</h1>
        <p>Set and review interest rates for account types</p>
    </div>
    <div class="card">
        <h3>Update Interest Rates</h3>
        <form class="form-container" method="post" action="setInterestPolicy">
            <div class="form-group">
                <label for="savingsRate">Savings Account (%)</label>
                <input type="number" id="savingsRate" name="savingsRate" class="form-control" value="6.5" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="fdRate">Fixed Deposit (%)</label>
                <input type="number" id="fdRate" name="fdRate" class="form-control" value="8.5" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="checkingRate">Checking Account (%)</label>
                <input type="number" id="checkingRate" name="checkingRate" class="form-control" value="2.0" step="0.01" required>
            </div>
            <div class="btn-group">
                <button type="submit" class="btn btn-primary">Update Policy</button>
            </div>
        </form>
    </div>
    <div class="card">
        <h3>Current Interest Rates</h3>
        <table class="table">
            <tbody>
                <tr><td>Savings Account</td><td>6.5%</td></tr>
                <tr><td>Fixed Deposit</td><td>8.5%</td></tr>
                <tr><td>Checking Account</td><td>2.0%</td></tr>
            </tbody>
        </table>
    </div>
</div>
<%@ include file="../shared/footer.jspf" %>
  </body>
</html>
