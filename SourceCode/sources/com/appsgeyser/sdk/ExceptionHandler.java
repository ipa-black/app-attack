package com.appsgeyser.sdk;
/* loaded from: classes2.dex */
class ExceptionHandler {
    ExceptionHandler() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void handleException(Exception exc) {
        Logger.ErrorLog(exc.getMessage());
    }
}
