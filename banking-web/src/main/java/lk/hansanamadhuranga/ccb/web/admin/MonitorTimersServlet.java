package lk.hansanamadhuranga.ccb.web.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MonitorTimersServlet", urlPatterns = {"/admin/monitorTimerHealth"})
public class MonitorTimersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Load timer health/status for admin
        request.getRequestDispatcher("/admin/monitorTimerHealth.jsp").forward(request, response);
    }
} 