<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../shared/navbar.jspf" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Account Activity Review - Crown Capital Bank</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
<div class="container">
    <div class="hero">
        <h1>🔍 Account Activity Review</h1>
        <p>Monitor and audit account activities</p>
    </div>
    <div class="card">
        <h3>Recent Account Activities</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>Date/Time</th>
                    <th>User</th>
                    <th>Action</th>
                    <th>Target</th>
                    <th>IP Address</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2024-01-20 10:15</td>
                    <td>manager1</td>
                    <td>APPROVE_TRANSFER</td>
                    <td>Txn #7890</td>
                    <td>192.168.1.10</td>
                    <td>Approved transfer of LKR 500,000</td>
                </tr>
                <tr>
                    <td>2024-01-19 16:40</td>
                    <td>manager1</td>
                    <td>UPDATE_POLICY</td>
                    <td>Interest Policy</td>
                    <td>192.168.1.10</td>
                    <td>Updated savings rate to 6.5%</td>
                </tr>
                <tr>
                    <td>2024-01-19 09:05</td>
                    <td>teller1</td>
                    <td>WITHDRAWAL</td>
                    <td>****5678</td>
                    <td>192.168.1.15</td>
                    <td>Withdrawal of LKR 10,000</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<%@ include file="../shared/footer.jspf" %>
  </body>
</html>
