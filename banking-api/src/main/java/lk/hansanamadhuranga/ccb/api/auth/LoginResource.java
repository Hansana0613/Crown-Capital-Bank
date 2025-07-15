package lk.hansanamadhuranga.ccb.api.auth;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

/**
 * REST endpoint for user login.
 */
@Path("/auth/login")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class LoginResource {
    @POST
    public Response login(/* TODO: LoginRequestDTO */) {
        // TODO: Authenticate user, return JWT or error
        return Response.status(Response.Status.NOT_IMPLEMENTED).build();
    }
} 