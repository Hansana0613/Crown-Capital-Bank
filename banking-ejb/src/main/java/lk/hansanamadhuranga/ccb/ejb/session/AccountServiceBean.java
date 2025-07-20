//package lk.hansanamadhuranga.ccb.ejb.session;
//import jakarta.ejb.Stateless;
//
//import jakarta.annotation.security.RolesAllowed
//import jakarta.ejb.TransactionAttribute;
//import jakarta.ejb.TransactionAttributeType;
//import jakarta.persistence.EntityManager;
//import jakarta.persistence.PersistenceContext;
//import jakarta.persistence.TypedQuery;
//import jakarta.persistence.NoResultException;
//import jakarta.inject.Inject;
//import java.math.BigDecimal;
//import java.time.LocalDateTime;
//import java.util.List;
//import java.util.logging.Logger;
//
///**
// * Account Service Bean for Crown Capital Bank
// * Handles all account-related operations with proper security and transaction management
// */
//@Stateless
//@TransactionAttribute(TransactionAttributeType.REQUIRED)
//public class AccountServiceBean {
//
//    private static final Logger logger = Logger.getLogger(AccountServiceBean.class.getName());
//
//    @PersistenceContext(unitName = "banking-pu")
//    private EntityManager em;
//
//    @Inject
//    private TransactionServiceBean transactionService;
//
//    @Inject
//    private SystemSettingsServiceBean systemSettings;
//
//    /**
//     * UC1: View Account Summary
//     * Allows customers and tellers to view account details
//     */
//    @RolesAllowed({"CUSTOMER", "TELLER", "MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.SUPPORTS)
//    public Account getAccount(Long accountId) {
//        logger.info("Retrieving account with ID: " + accountId);
//
//        Account account = em.find(Account.class, accountId);
//        if (account == null) {
//            throw new IllegalArgumentException("Account not found with ID: " + accountId);
//        }
//
//        return account;
//    }
//
//    /**
//     * UC1: View Account Summary by Account Number
//     */
//    @RolesAllowed({"CUSTOMER", "TELLER", "MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.SUPPORTS)
//    public Account getAccountByNumber(String accountNumber) {
//        logger.info("Retrieving account with number: " + accountNumber);
//
//        try {
//            TypedQuery<Account> query = em.createNamedQuery("Account.findByAccountNumber", Account.class);
//            query.setParameter("accountNumber", accountNumber);
//            return query.getSingleResult();
//        } catch (NoResultException e) {
//            throw new IllegalArgumentException("Account not found with number: " + accountNumber);
//        }
//    }
//
//    /**
//     * UC1: Get customer accounts
//     */
//    @RolesAllowed({"CUSTOMER", "TELLER", "MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.SUPPORTS)
//    public List<Account> getCustomerAccounts(Long customerId) {
//        logger.info("Retrieving accounts for customer ID: " + customerId);
//
//        TypedQuery<Account> query = em.createNamedQuery("Account.findByCustomer", Account.class);
//        query.setParameter("customerId", customerId);
//        return query.getResultList();
//    }
//
//    /**
//     * UC6: Open New Customer Account
//     * Only tellers can create new accounts
//     */
//    @RolesAllowed({"TELLER", "MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.REQUIRED)
//    public Account createAccount(Account account) {
//        logger.info("Creating new account for customer: " + account.getCustomer().getId());
//
//        // Validate account data
//        validateAccountData(account);
//
//        // Generate account number
//        String accountNumber = generateAccountNumber(account.getAccountType());
//        account.setAccountNumber(accountNumber);
//
//        // Set default interest rate based on account type
//        BigDecimal interestRate = getDefaultInterestRate(account.getAccountType());
//        account.setInterestRate(interestRate);
//
//        // Set creation date
//        account.setCreatedDate(LocalDateTime.now());
//
//        // Persist the account
//        em.persist(account);
//        em.flush();
//
//        logger.info("Account created successfully: " + account.getAccountNumber());
//        return account;
//    }
//
//    /**
//     * UC7: Process Deposit
//     * Tellers can deposit money into accounts
//     */
//    @RolesAllowed({"TELLER", "MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.REQUIRED)
//    public Transaction deposit(Long accountId, BigDecimal amount, String description, User processedBy) {
//        logger.info("Processing deposit for account ID: " + accountId + ", amount: " + amount);
//
//        if (amount.compareTo(BigDecimal.ZERO) <= 0) {
//            throw new IllegalArgumentException("Deposit amount must be positive");
//        }
//
//        Account account = getAccount(accountId);
//
//        // Create transaction record
//        Transaction transaction = new Transaction(
//                TransactionType.DEPOSIT,
//                null, // No from account for deposits
//                account,
//                amount,
//                description,
//                processedBy
//        );
//
//        // Generate reference number
//        transaction.setReferenceNumber(generateReferenceNumber());
//
//        // Credit the account
//        account.credit(amount);
//        transaction.setBalanceAfter(account.getBalance());
//        transaction.complete();
//
//        // Persist transaction
//        em.persist(transaction);
//        em.merge(account);
//
//        logger.info("Deposit completed successfully: " + transaction.getReferenceNumber());
//        return transaction;
//    }
//
//    /**
//     * UC7: Process Withdrawal
//     * Tellers can withdraw money from accounts
//     */
//    @RolesAllowed({"TELLER", "MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.REQUIRED)
//    public Transaction withdraw(Long accountId, BigDecimal amount, String description, User processedBy) {
//        logger.info("Processing withdrawal for account ID: " + accountId + ", amount: " + amount);
//
//        if (amount.compareTo(BigDecimal.ZERO) <= 0) {
//            throw new IllegalArgumentException("Withdrawal amount must be positive");
//        }
//
//        Account account = getAccount(accountId);
//
//        // Check if withdrawal is allowed
//        if (!account.canWithdraw(amount)) {
//            throw new IllegalArgumentException("Insufficient funds for withdrawal");
//        }
//
//        // Create transaction record
//        Transaction transaction = new Transaction(
//                TransactionType.WITHDRAWAL,
//                account,
//                null, // No to account for withdrawals
//                amount,
//                description,
//                processedBy
//        );
//
//        // Generate reference number
//        transaction.setReferenceNumber(generateReferenceNumber());
//
//        // Debit the account
//        account.debit(amount);
//        transaction.setBalanceAfter(account.getBalance());
//        transaction.complete();
//
//        // Persist transaction
//        em.persist(transaction);
//        em.merge(account);
//
//        logger.info("Withdrawal completed successfully: " + transaction.getReferenceNumber());
//        return transaction;
//    }
//
//    /**
//     * UC10: Freeze Customer Account
//     * Tellers and managers can freeze accounts
//     */
//    @RolesAllowed({"TELLER", "MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.REQUIRED)
//    public void freezeAccount(Long accountId, User processedBy) {
//        logger.info("Freezing account ID: " + accountId);
//
//        Account account = getAccount(accountId);
//        account.freeze();
//        em.merge(account);
//
//        // Log the action
//        logger.info("Account frozen successfully: " + account.getAccountNumber() + " by " + processedBy.getUsername());
//    }
//
//    /**
//     * UC10: Unfreeze Customer Account
//     */
//    @RolesAllowed({"MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.REQUIRED)
//    public void unfreezeAccount(Long accountId, User processedBy) {
//        logger.info("Unfreezing account ID: " + accountId);
//
//        Account account = getAccount(accountId);
//        account.activate();
//        em.merge(account);
//
//        // Log the action
//        logger.info("Account unfrozen successfully: " + account.getAccountNumber() + " by " + processedBy.getUsername());
//    }
//
//    /**
//     * UC13: Review Account Activity
//     * Managers can review account activity
//     */
//    @RolesAllowed({"MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.SUPPORTS)
//    public List<Transaction> getAccountActivity(Long accountId, int maxResults) {
//        logger.info("Retrieving account activity for account ID: " + accountId);
//
//        TypedQuery<Transaction> query = em.createNamedQuery("Transaction.findByAccount", Transaction.class);
//        query.setParameter("accountId", accountId);
//        query.setMaxResults(maxResults);
//
//        return query.getResultList();
//    }
//
//    /**
//     * Get all active accounts (for interest calculation)
//     */
//    @RolesAllowed({"ADMIN", "MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.SUPPORTS)
//    public List<Account> getActiveAccounts() {
//        logger.info("Retrieving all active accounts");
//
//        TypedQuery<Account> query = em.createNamedQuery("Account.findActiveAccounts", Account.class);
//        return query.getResultList();
//    }
//
//    /**
//     * Get accounts eligible for interest calculation
//     */
//    @RolesAllowed({"ADMIN", "MANAGER"})
//    @TransactionAttribute(TransactionAttributeType.SUPPORTS)
//    public List<Account> getAccountsForInterest() {
//        logger.info("Retrieving accounts eligible for interest calculation");
//
//        TypedQuery<Account> query = em.createNamedQuery("Account.findAccountsForInterest", Account.class);
//        return query.getResultList();
//    }
//
//    /**
//     * Update account balance (used by timer services)
//     */
//    @RolesAllowed({"ADMIN"})
//    @TransactionAttribute(TransactionAttributeType.REQUIRED)
//    public void updateAccountBalance(Long accountId, BigDecimal newBalance) {
//        Account account = getAccount(accountId);
//        account.setBalance(newBalance);
//        account.setLastTransactionDate(LocalDateTime.now());
//        em.merge(account);
//    }
//
//    // Private helper methods
//
//    private void validateAccountData(Account account) {
//        if (account.getCustomer() == null) {
//            throw new IllegalArgumentException("Customer is required");
//        }
//        if (account.getAccountType() == null) {
//            throw new IllegalArgumentException("Account type is required");
//        }
//        if (account.getBalance().compareTo(BigDecimal.ZERO) < 0) {
//            throw new IllegalArgumentException("Initial balance cannot be negative");
//        }
//    }
//
//    private String generateAccountNumber(AccountType accountType) {
//        // Simple account number generation - in production, use more sophisticated method
//        String prefix = getAccountTypePrefix(accountType);
//        long timestamp = System.currentTimeMillis();
//        return prefix + String.format("%010d", timestamp % 10000000000L);
//    }
//
//    private String getAccountTypePrefix(AccountType accountType) {
//        switch (accountType) {
//            case SAVINGS: return "SAV";
//            case CHECKING: return "CHK";
//            case FIXED_DEPOSIT: return "FD";
//            case LOAN: return "LN";
//            default: return "ACC";
//        }
//    }
//
//    private BigDecimal getDefaultInterestRate(AccountType accountType) {
//        // Get default interest rate from system settings or use defaults
//        switch (accountType) {
//            case SAVINGS: return new BigDecimal("0.0250"); // 2.5%
//            case CHECKING: return new BigDecimal("0.0100"); // 1.0%
//            case FIXED_DEPOSIT: return new BigDecimal("0.0400"); // 4.0%
//            default: return BigDecimal.ZERO;
//        }
//    }
//
//    private String generateReferenceNumber() {
//        // Generate unique reference number
//        return "TXN" + System.currentTimeMillis() + String.format("%04d", (int)(Math.random() * 10000));
//    }
//}