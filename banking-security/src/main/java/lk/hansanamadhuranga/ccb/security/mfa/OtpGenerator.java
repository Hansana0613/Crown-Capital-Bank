package lk.hansanamadhuranga.ccb.security.mfa;

import java.security.SecureRandom;

/**
 * Generates OTP codes for MFA.
 */
public class OtpGenerator {
    private static final SecureRandom random = new SecureRandom();
    private static final int OTP_LENGTH = 6;

    public static String generateOtp() {
        // TODO: Generate a secure random OTP
        return null;
    }
} 