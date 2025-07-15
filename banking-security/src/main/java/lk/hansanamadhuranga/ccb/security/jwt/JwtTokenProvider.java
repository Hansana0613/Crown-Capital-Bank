package lk.hansanamadhuranga.ccb.security.jwt;

import java.util.Date;
import java.util.Map;

/**
 * Provides methods to generate and validate JWT tokens.
 */
public class JwtTokenProvider {
    // TODO: Inject secret from config
    private String jwtSecret = "REPLACE_WITH_SECRET";
    private long jwtExpirationMs = 3600000; // 1 hour

    /**
     * Generate JWT token for a user.
     */
    public String generateToken(String username, Map<String, Object> claims) {
        // TODO: Implement JWT generation
        return null;
    }

    /**
     * Validate JWT token and return username if valid.
     */
    public String validateToken(String token) {
        // TODO: Implement JWT validation
        return null;
    }
} 