package lk.hansanamadhuranga.ccb.web.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(LoginServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        LOGGER.info("Login attempt for user: " + username);

        try {
            req.login(username, password);

            // Determine role and redirect to appropriate servlet path
            String redirectPath = req.getContextPath() + "/login.jsp"; // Default
            if (req.isUserInRole("ADMIN")) {
                redirectPath = req.getContextPath() + "/admin/dashboard.jsp";
            } else if (req.isUserInRole("MANAGER")) {
                redirectPath = req.getContextPath() + "/manager/dashboard.jsp"; // Implement if needed
            } else if (req.isUserInRole("TELLER")) {
                redirectPath = req.getContextPath() + "/teller/dashboard.jsp"; // Implement if needed
            } else if (req.isUserInRole("CUSTOMER")) {
                redirectPath = req.getContextPath() + "/customer/dashboard.jsp"; // Implement if needed
            }

            resp.sendRedirect(redirectPath);
            System.out.println(redirectPath);
        } catch (ServletException e) {
            LOGGER.severe("Login failed for " + username + ": " + e.getMessage());
            resp.sendRedirect(req.getContextPath() + "/login.jsp?error=login_failed");
        }
    }
}