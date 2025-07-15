package lk.hansanamadhuranga.ccb.web.teller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TransactionReportServlet", urlPatterns = {"/teller/dailyTransactionReport"})
public class TransactionReportServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Load daily transaction report for teller
        request.getRequestDispatcher("/teller/dailyTransactionReport.jsp").forward(request, response);
    }
} 