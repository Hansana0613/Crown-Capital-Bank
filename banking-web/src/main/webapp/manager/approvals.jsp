<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../shared/navbar.jspf" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Pending Approvals - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
<div class="container">
    <div class="hero">
        <h1>📝 Pending Approvals</h1>
        <p>Review and approve high-value transactions</p>
    </div>
    <div class="card">
        <h3>Transactions Awaiting Approval</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>Transaction ID</th>
                    <th>Date</th>
                    <th>Account</th>
                    <th>Amount</th>
                    <th>Type</th>
                    <th>Requested By</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>7890</td>
                    <td>2024-01-20</td>
                    <td>****1234</td>
                    <td>LKR 500,000.00</td>
                    <td><span class="badge badge-warning">TRANSFER_OUT</span></td>
                    <td>John Doe</td>
                    <td><span class="badge badge-info">PENDING</span></td>
                    <td><button class="btn btn-success">Approve</button> <button class="btn btn-danger">Reject</button></td>
                </tr>
                <tr>
                    <td>7891</td>
                    <td>2024-01-19</td>
                    <td>****5678</td>
                    <td>LKR 250,000.00</td>
                    <td><span class="badge badge-warning">TRANSFER_OUT</span></td>
                    <td>Jane Smith</td>
                    <td><span class="badge badge-info">PENDING</span></td>
                    <td><button class="btn btn-success">Approve</button> <button class="btn btn-danger">Reject</button></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<%@ include file="../shared/footer.jspf" %>
  </body>
</html>
