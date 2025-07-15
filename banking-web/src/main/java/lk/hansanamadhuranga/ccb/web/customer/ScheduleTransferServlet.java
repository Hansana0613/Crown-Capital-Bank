package lk.hansanamadhuranga.ccb.web.customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ScheduleTransferServlet", urlPatterns = {"/customer/scheduleTransfer"})
public class ScheduleTransferServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Show schedule transfer form
        request.getRequestDispatcher("/customer/scheduleTransfer.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Process scheduling, validate, call EJB/service, handle errors
        // On success: forward/redirect to success.jsp or summary
        request.getRequestDispatcher("/customer/success.jsp").forward(request, response);
    }
} 