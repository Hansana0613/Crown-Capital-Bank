package lk.hansanamadhuranga.ccb.web.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SystemSettingsServlet", urlPatterns = {"/admin/systemParams"})
public class SystemSettingsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Show system settings form
        request.getRequestDispatcher("/admin/systemParams.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Process settings update, call EJB/service, handle errors
        // On success: forward/redirect to success.jsp or dashboard
        request.getRequestDispatcher("/admin/success.jsp").forward(request, response);
    }
} 