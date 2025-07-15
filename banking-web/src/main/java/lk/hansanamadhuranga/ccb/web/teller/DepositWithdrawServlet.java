package lk.hansanamadhuranga.ccb.web.teller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DepositWithdrawServlet", urlPatterns = {"/teller/depositWithdraw"})
public class DepositWithdrawServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Show deposit/withdrawal form
        request.getRequestDispatcher("/teller/depositWithdraw.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Process deposit/withdrawal, validate, call EJB/service, handle errors
        // On success: forward/redirect to success.jsp or summary
        request.getRequestDispatcher("/teller/success.jsp").forward(request, response);
    }
} 