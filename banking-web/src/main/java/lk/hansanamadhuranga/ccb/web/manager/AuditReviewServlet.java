package lk.hansanamadhuranga.ccb.web.manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AuditReviewServlet", urlPatterns = {"/manager/auditDashboard"})
public class AuditReviewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Load audit logs for manager
        request.getRequestDispatcher("/manager/auditDashboard.jsp").forward(request, response);
    }
} 