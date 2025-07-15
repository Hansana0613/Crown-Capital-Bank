package lk.hansanamadhuranga.ccb.web.auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RoleDispatcherServlet", urlPatterns = {"/dashboard"})
public class RoleDispatcherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Check session and user role, redirect to correct dashboard
        // Example:
        // String role = (String) request.getSession().getAttribute("role");
        // if (role == null) { response.sendRedirect("login.jsp"); return; }
        // switch (role) { ... }
        request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
} 