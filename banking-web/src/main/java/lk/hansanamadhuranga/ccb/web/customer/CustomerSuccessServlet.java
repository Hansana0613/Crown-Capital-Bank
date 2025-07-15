package lk.hansanamadhuranga.ccb.web.customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerSuccessServlet", urlPatterns = {"/customer/success"})
public class CustomerSuccessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Show success/feedback page
        request.getRequestDispatcher("/customer/success.jsp").forward(request, response);
    }
} 