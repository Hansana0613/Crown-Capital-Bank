package lk.hansanamadhuranga.ccb.web.servlet;

import lk.hansanamadhuranga.ccb.model.entity.*;
import lk.hansanamadhuranga.ccb.ejb.session.*;
import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.annotation.security.DeclareRoles;
import jakarta.annotation.security.RolesAllowed;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@WebServlet("/admin/*")
@DeclareRoles({"ADMIN"})
@RolesAllowed({"ADMIN"})
public class AdminServlet extends HttpServlet {

    @EJB
    private AdminServiceBean adminService;

    @EJB
    private UserServiceBean userService;

    @EJB
    private TimerServiceBean timerService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pathInfo = request.getPathInfo();
        String page = (pathInfo == null || pathInfo.equals("/")) ? "dashboard" : pathInfo.substring(1).replace(".jsp", "");

        try {
            switch (page) {
                case "dashboard":
                    loadDashboardData(request);
                    break;
                case "timers":
                    loadTimerData(request);
                    break;
                case "users":
                    loadUserData(request);
                    break;
                case "settings":
                    loadSettingsData(request);
                    break;
                default:
                    response.sendError(HttpServletResponse.SC_NOT_FOUND);
                    return;
            }
            // Serve JSP directly without redirect to avoid filter re-entry
            request.getRequestDispatcher("/admin/" + page + ".jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error loading page: " + e.getMessage());
            request.setAttribute("messageType", "error");
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            switch (action) {
                case "enableTimer":
                    enableTimer(request, response);
                    break;
                case "disableTimer":
                    disableTimer(request, response);
                    break;
                case "rescheduleTimer":
                    rescheduleTimer(request, response);
                    break;
                case "createUser":
                    createUser(request, response);
                    break;
                case "enableUser":
                    enableUser(request, response);
                    break;
                case "disableUser":
                    disableUser(request, response);
                    break;
                case "updateRole":
                    updateUserRole(request, response);
                    break;
                case "updateSettings":
                    updateSettings(request, response);
                    break;
                default:
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unknown action");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error: " + e.getMessage());
            request.setAttribute("messageType", "error");
            response.sendRedirect(request.getContextPath() + "/error.jsp");
        }
    }

    // Existing private methods remain unchanged
    private void loadDashboardData(HttpServletRequest request) {
        try {
            long activeTimers = timerService.countActiveTimers();
            long totalUsers = userService.countTotalUsers();
            long recentLogs = timerService.countRecentLogs();

            request.setAttribute("activeTimers", activeTimers);
            request.setAttribute("totalUsers", totalUsers);
            request.setAttribute("recentLogs", recentLogs);
        } catch (Exception e) {
            request.setAttribute("message", "Error loading dashboard data: " + e.getMessage());
            request.setAttribute("messageType", "error");
        }
    }

    private void loadTimerData(HttpServletRequest request) {
        try {
            List<TimerConfig> timers = timerService.getAllTimerConfigs();
            List<TimerLog> timerLogs = timerService.getRecentTimerLogs(50);

            request.setAttribute("timers", timers);
            request.setAttribute("timerLogs", timerLogs);
        } catch (Exception e) {
            request.setAttribute("message", "Error loading timer data: " + e.getMessage());
            request.setAttribute("messageType", "error");
        }
    }

    private void loadUserData(HttpServletRequest request) {
        try {
            List<User> users = userService.getAllUsers();
            Map<String, String> userRoles = userService.getUserRolesMap();

            request.setAttribute("users", users);
            request.setAttribute("userRoles", userRoles);
        } catch (Exception e) {
            request.setAttribute("message", "Error loading user data: " + e.getMessage());
            request.setAttribute("messageType", "error");
        }
    }

    private void loadSettingsData(HttpServletRequest request) {
        try {
            SystemSettings settings = adminService.getSystemSettings();
            request.setAttribute("settings", settings);
        } catch (Exception e) {
            request.setAttribute("message", "Error loading settings: " + e.getMessage());
            request.setAttribute("messageType", "error");
        }
    }

    private void enableTimer(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String timerName = request.getParameter("timerName");
        try {
            timerService.enableTimer(timerName);
            request.getSession().setAttribute("message", "Timer enabled successfully");
            request.getSession().setAttribute("messageType", "success");
        } catch (Exception e) {
            request.getSession().setAttribute("message", "Error enabling timer: " + e.getMessage());
            request.getSession().setAttribute("messageType", "error");
        }
        response.sendRedirect("timers.jsp");
    }

    private void disableTimer(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String timerName = request.getParameter("timerName");
        try {
            timerService.disableTimer(timerName);
            request.getSession().setAttribute("message", "Timer disabled successfully");
            request.getSession().setAttribute("messageType", "success");
        } catch (Exception e) {
            request.getSession().setAttribute("message", "Error disabling timer: " + e.getMessage());
            request.getSession().setAttribute("messageType", "error");
        }
        response.sendRedirect("timers.jsp");
    }

    private void rescheduleTimer(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String timerName = request.getParameter("timerName");
        String newSchedule = request.getParameter("newSchedule");
        try {
            timerService.rescheduleTimer(timerName, newSchedule);
            request.getSession().setAttribute("message", "Timer rescheduled successfully");
            request.getSession().setAttribute("messageType", "success");
        } catch (Exception e) {
            request.getSession().setAttribute("message", "Error rescheduling timer: " + e.getMessage());
            request.getSession().setAttribute("messageType", "error");
        }
        response.sendRedirect("timers.jsp");
    }

    private void createUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String role = request.getParameter("role");

        try {
            userService.createUser(username, password, email, role);
            request.getSession().setAttribute("message", "User created successfully");
            request.getSession().setAttribute("messageType", "success");
        } catch (Exception e) {
            request.getSession().setAttribute("message", "Error creating user: " + e.getMessage());
            request.getSession().setAttribute("messageType", "error");
        }
        response.sendRedirect("users.jsp");
    }

    private void enableUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        try {
            userService.enableUser(username);
            request.getSession().setAttribute("message", "User enabled successfully");
            request.getSession().setAttribute("messageType", "success");
        } catch (Exception e) {
            request.getSession().setAttribute("message", "Error enabling user: " + e.getMessage());
            request.getSession().setAttribute("messageType", "error");
        }
        response.sendRedirect("users.jsp");
    }

    private void disableUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        try {
            userService.disableUser(username);
            request.getSession().setAttribute("message", "User disabled successfully");
            request.getSession().setAttribute("messageType", "success");
        } catch (Exception e) {
            request.getSession().setAttribute("message", "Error disabling user: " + e.getMessage());
            request.getSession().setAttribute("messageType", "error");
        }
        response.sendRedirect("users.jsp");
    }

    private void updateUserRole(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String newRole = request.getParameter("newRole");
        try {
            userService.updateUserRole(username, newRole);
            request.getSession().setAttribute("message", "User role updated successfully");
            request.getSession().setAttribute("messageType", "success");
        } catch (Exception e) {
            request.getSession().setAttribute("message", "Error updating user role: " + e.getMessage());
            request.getSession().setAttribute("messageType", "error");
        }
        response.sendRedirect("users.jsp");
    }

    private void updateSettings(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String bankName = request.getParameter("bankName");
            String supportEmail = request.getParameter("supportEmail");
            BigDecimal interestRateSavings = new BigDecimal(request.getParameter("interestRateSavings"));
            BigDecimal interestRateFD = new BigDecimal(request.getParameter("interestRateFD"));
            BigDecimal interestRateChecking = new BigDecimal(request.getParameter("interestRateChecking"));

            SystemSettings settings = new SystemSettings();
            settings.setBankName(bankName);
            settings.setSupportEmail(supportEmail);
            settings.setInterestRateSavings(interestRateSavings.doubleValue());
            settings.setInterestRateFD(interestRateFD.doubleValue());
            settings.setInterestRateChecking(interestRateChecking.doubleValue());

            adminService.updateSystemSettings(settings);

            request.getSession().setAttribute("message", "Settings updated successfully");
            request.getSession().setAttribute("messageType", "success");
        } catch (Exception e) {
            request.getSession().setAttribute("message", "Error updating settings: " + e.getMessage());
            request.getSession().setAttribute("messageType", "error");
        }
        response.sendRedirect("settings.jsp");
    }
}