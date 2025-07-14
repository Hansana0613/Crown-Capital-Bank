<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession session = request.getSession(false);
    String role = (session != null) ? (String) session.getAttribute("role") : null;
    if (role == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    switch (role) {
        case "CUSTOMER":
            response.sendRedirect("customer/dashboard.jsp");
            break;
        case "TELLER":
            response.sendRedirect("teller/dashboard.jsp");
            break;
        case "MANAGER":
            response.sendRedirect("manager/dashboard.jsp");
            break;
        case "ADMIN":
            response.sendRedirect("admin/dashboard.jsp");
            break;
        default:
            response.sendRedirect("login.jsp");
    }
%> 