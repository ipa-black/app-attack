package com.appsgeyser.sdk;
/* loaded from: classes2.dex */
public class ErrorInfo {
    private int code;
    private final String message;

    public ErrorInfo(String str) {
        this.message = str;
    }

    public ErrorInfo(int i, String str) {
        this.code = i;
        this.message = str;
    }

    public String getMessage() {
        return this.message;
    }

    public int getCode() {
        return this.code;
    }
}
