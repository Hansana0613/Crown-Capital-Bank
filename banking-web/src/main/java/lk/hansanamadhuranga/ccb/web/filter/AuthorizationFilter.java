package lk.hansanamadhuranga.ccb.web.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(urlPatterns = {"/customer/*", "/teller/*", "/manager/*", "/admin/*"})
public class AuthorizationFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization if needed
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String path = req.getServletPath();

        // Skip if already authenticated and on a dashboard page
        if (req.getUserPrincipal() != null && path.endsWith("/dashboard.jsp")) {
            chain.doFilter(request, response);
            return;
        }

        if (path.startsWith("/customer/") && !req.isUserInRole("CUSTOMER")) {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "Access denied for CUSTOMER resources");
            return;
        } else if (path.startsWith("/teller/") && !req.isUserInRole("TELLER")) {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "Access denied for TELLER resources");
            return;
        } else if (path.startsWith("/manager/") && !req.isUserInRole("MANAGER")) {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "Access denied for MANAGER resources");
            return;
        } else if (path.startsWith("/admin/") && !req.isUserInRole("ADMIN")) {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "Access denied for ADMIN resources");
            return;
        }

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Cleanup if needed
    }
}



