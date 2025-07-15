package lk.hansanamadhuranga.ccb.web.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "RoleAccessFilter", urlPatterns = {"/customer/*", "/teller/*", "/manager/*", "/admin/*"})
public class RoleAccessFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);
        String uri = req.getRequestURI();
        String role = (session != null) ? (String) session.getAttribute("role") : null;
        // TODO: Adjust role logic as needed
        if (uri.contains("/customer/") && !"CUSTOMER".equals(role)) {
            res.sendRedirect(req.getContextPath() + "/error.jsp");
            return;
        }
        if (uri.contains("/teller/") && !"TELLER".equals(role)) {
            res.sendRedirect(req.getContextPath() + "/error.jsp");
            return;
        }
        if (uri.contains("/manager/") && !"MANAGER".equals(role)) {
            res.sendRedirect(req.getContextPath() + "/error.jsp");
            return;
        }
        if (uri.contains("/admin/") && !"ADMIN".equals(role)) {
            res.sendRedirect(req.getContextPath() + "/error.jsp");
            return;
        }
        chain.doFilter(request, response);
    }
} 