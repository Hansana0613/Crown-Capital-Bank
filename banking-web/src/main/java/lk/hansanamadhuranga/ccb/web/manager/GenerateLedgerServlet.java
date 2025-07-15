package lk.hansanamadhuranga.ccb.web.manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GenerateLedgerServlet", urlPatterns = {"/manager/endOfDayLedger"})
public class GenerateLedgerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Load end-of-day ledger report
        request.getRequestDispatcher("/manager/endOfDayLedger.jsp").forward(request, response);
    }
} 