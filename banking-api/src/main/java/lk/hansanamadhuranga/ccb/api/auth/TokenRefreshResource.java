package lk.hansanamadhuranga.ccb.api.auth;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

/**
 * REST endpoint for refreshing JWT tokens.
 */
@Path("/auth/refresh")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class TokenRefreshResource {
    @POST
    public Response refresh(/* TODO: TokenRefreshRequestDTO */) {
        // TODO: Validate refresh token, return new JWT or error
        return Response.status(Response.Status.NOT_IMPLEMENTED).build();
    }
} 