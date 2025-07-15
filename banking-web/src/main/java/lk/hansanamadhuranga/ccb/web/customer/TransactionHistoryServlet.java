package lk.hansanamadhuranga.ccb.web.customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TransactionHistoryServlet", urlPatterns = {"/customer/transactionHistory"})
public class TransactionHistoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Load transaction history for the logged-in user
        request.getRequestDispatcher("/customer/transactionHistory.jsp").forward(request, response);
    }
} 