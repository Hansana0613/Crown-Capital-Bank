package lk.hansanamadhuranga.ccb.api.auth;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

/**
 * REST endpoint for MFA/OTP verification.
 */
@Path("/auth/mfa")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class MFAResource {
    @POST
    public Response verifyOtp(/* TODO: MFAOtpRequestDTO */) {
        // TODO: Validate OTP, return success or error
        return Response.status(Response.Status.NOT_IMPLEMENTED).build();
    }
} 