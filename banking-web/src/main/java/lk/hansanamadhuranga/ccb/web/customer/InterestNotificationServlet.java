package lk.hansanamadhuranga.ccb.web.customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InterestNotificationServlet", urlPatterns = {"/customer/interestNotification"})
public class InterestNotificationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Load interest notifications for the logged-in user
        request.getRequestDispatcher("/customer/interestNotification.jsp").forward(request, response);
    }
} 