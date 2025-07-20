<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../shared/navbar.jspf" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Transaction History - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
<div class="container">
    <div class="hero">
        <h1>📜 Transaction History</h1>
        <p>Review your past transactions</p>
    </div>
    <div class="card">
        <h3>Filter Transactions</h3>
        <form class="form-container" method="get" action="history.jsp">
            <div class="form-group">
                <label for="dateFrom">From</label>
                <input type="date" id="dateFrom" name="dateFrom" class="form-control">
            </div>
            <div class="form-group">
                <label for="dateTo">To</label>
                <input type="date" id="dateTo" name="dateTo" class="form-control">
            </div>
            <div class="form-group">
                <label for="type">Type</label>
                <select id="type" name="type" class="form-control">
                    <option value="">All</option>
                    <option value="DEPOSIT">Deposit</option>
                    <option value="WITHDRAWAL">Withdrawal</option>
                    <option value="TRANSFER_IN">Transfer In</option>
                    <option value="TRANSFER_OUT">Transfer Out</option>
                    <option value="INTEREST">Interest</option>
                </select>
            </div>
            <div class="btn-group">
                <button type="submit" class="btn btn-primary">🔍 Filter</button>
            </div>
        </form>
    </div>
    <div class="table-container">
        <h3 style="padding: 1rem; margin: 0; background: linear-gradient(135deg, #273F4F 0%, #447D9B 100%); color: white;">Transaction History</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Type</th>
                    <th>Amount</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2024-01-15</td>
                    <td>Online Transfer to John Doe</td>
                    <td><span class="badge badge-warning">TRANSFER_OUT</span></td>
                    <td style="color: #dc3545;">-LKR 5,000.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
                <tr>
                    <td>2024-01-14</td>
                    <td>Monthly Interest Credit</td>
                    <td><span class="badge badge-info">INTEREST</span></td>
                    <td style="color: #28a745;">+LKR 1,200.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
                <tr>
                    <td>2024-01-13</td>
                    <td>ATM Withdrawal</td>
                    <td><span class="badge badge-danger">WITHDRAWAL</span></td>
                    <td style="color: #dc3545;">-LKR 2,000.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
                <tr>
                    <td>2024-01-12</td>
                    <td>Salary Credit</td>
                    <td><span class="badge badge-success">DEPOSIT</span></td>
                    <td style="color: #28a745;">+LKR 75,000.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
                <tr>
                    <td>2024-01-11</td>
                    <td>Utility Bill Payment</td>
                    <td><span class="badge badge-warning">TRANSFER_OUT</span></td>
                    <td style="color: #dc3545;">-LKR 3,450.00</td>
                    <td><span class="badge badge-success">SUCCESS</span></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<%@ include file="../shared/footer.jspf" %>
  </body>
</html>
