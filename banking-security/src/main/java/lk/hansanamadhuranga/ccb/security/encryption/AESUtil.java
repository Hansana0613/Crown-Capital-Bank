package lk.hansanamadhuranga.ccb.security.encryption;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.util.Base64;

/**
 * Utility for AES-256 encryption and decryption.
 */
public class AESUtil {
    private static final String ALGORITHM = "AES";
    private static final String TRANSFORMATION = "AES/ECB/PKCS5Padding";

    public static String encrypt(String plainText, String key) throws Exception {
        // TODO: Implement AES-256 encryption
        return null;
    }

    public static String decrypt(String cipherText, String key) throws Exception {
        // TODO: Implement AES-256 decryption
        return null;
    }
} 