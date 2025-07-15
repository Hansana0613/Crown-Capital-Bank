package lk.hansanamadhuranga.ccb.common.dto;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * Shared Account DTO.
 */
public class AccountDTO implements Serializable {
    private Long id;
    private String accountNumber;
    private String accountType;
    private BigDecimal balance;
    // TODO: Add more fields as needed
    // Getters and setters
} 