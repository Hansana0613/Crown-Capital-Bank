package lk.hansanamadhuranga.ccb.web.manager;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ManagerSuccessServlet", urlPatterns = {"/manager/success"})
public class ManagerSuccessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Show success/feedback page
        request.getRequestDispatcher("/manager/success.jsp").forward(request, response);
    }
} 