package lk.hansanamadhuranga.ccb.web.auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MFAServlet", urlPatterns = {"/mfa"})
public class MFAServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Show MFA (OTP) page
        request.getRequestDispatcher("/mfa.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Validate OTP, set session attribute if successful
        // On success: redirect to dashboard
        // On failure: forward back to mfa.jsp with error
        response.sendRedirect("dashboard.jsp");
    }
} 