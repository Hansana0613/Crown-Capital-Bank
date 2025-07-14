package lk.hansanamadhuranga.ccb.ejb.util;

public class LedgerUtil {
    public static String formatLedgerEntry(Object entry) {
        // Format a ledger entry for reporting
        return entry != null ? entry.toString() : "";
    }

    public static String createSnapshot(Object ledger) {
        // Create a snapshot of the ledger for audit/reporting
        return ledger != null ? ledger.toString() : "";
    }
} 