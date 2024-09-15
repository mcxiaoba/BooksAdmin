package org.base23.web.Utils;


public enum BorrowStatus {
    borrowed("borrowed"),
    returned("returned");

    private final String value;

    BorrowStatus(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public static BorrowStatus fromValue(String value) {
        for (BorrowStatus status : BorrowStatus.values()) {
            if (status.value.equals(value)) {
                return status;
            }
        }
        throw new IllegalArgumentException("Unknown status: " + value);
    }
}

