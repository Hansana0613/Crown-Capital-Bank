package lk.hansanamadhuranga.ccb.api.filter;

import jakarta.ws.rs.container.ContainerRequestContext;
import jakarta.ws.rs.container.ContainerRequestFilter;
import jakarta.ws.rs.ext.Provider;
import java.io.IOException;

/**
 * JAX-RS filter for validating JWT on API requests.
 */
@Provider
public class JwtApiRequestFilter implements ContainerRequestFilter {
    @Override
    public void filter(ContainerRequestContext requestContext) throws IOException {
        // TODO: Extract and validate JWT from Authorization header
        // Abort with 401 if invalid
    }
} 