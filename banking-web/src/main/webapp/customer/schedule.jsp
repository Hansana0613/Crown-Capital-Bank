<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../shared/navbar.jspf" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Schedule Transfer - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
<div class="container">
    <div class="hero">
        <h1>⏰ Schedule Future Transfer</h1>
        <p>Plan your payments ahead of time</p>
    </div>
    <div class="card">
        <h3>Schedule Transfer</h3>
        <form class="form-container" method="post" action="scheduleTransfer">
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
                <label for="transferDate">Transfer Date</label>
                <input type="date" id="transferDate" name="transferDate" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="recurrence">Recurrence</label>
                <select id="recurrence" name="recurrence" class="form-control">
                    <option value="ONCE">Once</option>
                    <option value="DAILY">Daily</option>
                    <option value="WEEKLY">Weekly</option>
                    <option value="MONTHLY">Monthly</option>
                </select>
            </div>
            <div class="btn-group">
                <button type="submit" class="btn btn-primary">⏰ Schedule</button>
                <a href="dashboard.jsp" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>
    <div class="table-container">
        <h3 style="padding: 1rem; margin: 0; background: linear-gradient(135deg, #273F4F 0%, #447D9B 100%); color: white;">Scheduled Transfers</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>To Account</th>
                    <th>Amount</th>
                    <th>Recurrence</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2024-02-01</td>
                    <td>****4321</td>
                    <td>LKR 10,000.00</td>
                    <td>Monthly</td>
                    <td><span class="badge badge-info">Scheduled</span></td>
                </tr>
                <tr>
                    <td>2024-01-20</td>
                    <td>****8765</td>
                    <td>LKR 2,500.00</td>
                    <td>Once</td>
                    <td><span class="badge badge-success">Completed</span></td>
                </tr>
            </tbody>
        </table>
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
