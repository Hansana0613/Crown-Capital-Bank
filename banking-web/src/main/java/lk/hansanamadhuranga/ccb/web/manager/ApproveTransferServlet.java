package lk.hansanamadhuranga.ccb.web.manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ApproveTransferServlet", urlPatterns = {"/manager/approveHighValue"})
public class ApproveTransferServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Load pending approvals for manager
        request.getRequestDispatcher("/manager/approveHighValue.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Process approval/rejection, call EJB/service, handle errors
        // On success: forward/redirect to success.jsp or dashboard
        request.getRequestDispatcher("/manager/success.jsp").forward(request, response);
    }
} 