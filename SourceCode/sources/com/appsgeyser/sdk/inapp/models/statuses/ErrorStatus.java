package com.appsgeyser.sdk.inapp.models.statuses;
/* loaded from: classes2.dex */
public class ErrorStatus implements Status {
    private String errorMessage;

    public ErrorStatus(String str) {
        this.errorMessage = str;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    /* loaded from: classes2.dex */
    public static class BillingErrorStatus extends ErrorStatus {
        public BillingErrorStatus(String str) {
            super(str);
        }
    }

    /* loaded from: classes2.dex */
    public static class ConfigErrorStatus extends ErrorStatus {
        public ConfigErrorStatus(String str) {
            super(str);
        }
    }
}
