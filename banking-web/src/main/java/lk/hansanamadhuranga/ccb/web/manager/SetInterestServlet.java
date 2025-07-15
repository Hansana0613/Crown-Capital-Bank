package lk.hansanamadhuranga.ccb.web.manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SetInterestServlet", urlPatterns = {"/manager/setInterestPolicy"})
public class SetInterestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Show interest policy form
        request.getRequestDispatcher("/manager/setInterestPolicy.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: Process interest policy update, call EJB/service, handle errors
        // On success: forward/redirect to success.jsp or dashboard
        request.getRequestDispatcher("/manager/success.jsp").forward(request, response);
    }
} 