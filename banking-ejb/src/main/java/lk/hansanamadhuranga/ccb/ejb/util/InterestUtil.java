package lk.hansanamadhuranga.ccb.ejb.util;

import java.math.BigDecimal;

public class InterestUtil {
    public static BigDecimal calculateInterest(BigDecimal principal, BigDecimal rate, int days) {
        // Simple interest calculation
        if (principal == null || rate == null || days < 0) return BigDecimal.ZERO;
        return principal.multiply(rate).multiply(BigDecimal.valueOf(days)).divide(BigDecimal.valueOf(36500), 2, BigDecimal.ROUND_HALF_UP);
    }
} 