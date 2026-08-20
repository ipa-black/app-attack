package com.ironsource.mediationsdk.logger;

import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
/* loaded from: classes3.dex */
public enum IronLog {
    API(IronSourceLogger.IronSourceTag.API),
    CALLBACK(IronSourceLogger.IronSourceTag.CALLBACK),
    ADAPTER_API(IronSourceLogger.IronSourceTag.ADAPTER_API),
    ADAPTER_CALLBACK(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK),
    NETWORK(IronSourceLogger.IronSourceTag.NETWORK),
    INTERNAL(IronSourceLogger.IronSourceTag.INTERNAL),
    NATIVE(IronSourceLogger.IronSourceTag.NATIVE),
    EVENT(IronSourceLogger.IronSourceTag.EVENT);
    

    /* renamed from: a  reason: collision with root package name */
    private IronSourceLogger.IronSourceTag f11199a;

    IronLog(IronSourceLogger.IronSourceTag ironSourceTag) {
        this.f11199a = ironSourceTag;
    }

    private String a() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        return String.format("%s %s", a(stackTrace, 5), b(stackTrace, 5));
    }

    private String a(String str) {
        return TextUtils.isEmpty(str) ? a() : String.format("%s - %s", a(), str);
    }

    private static String a(StackTraceElement[] stackTraceElementArr, int i) {
        String[] split = stackTraceElementArr[5].getClassName().split("\\.");
        String str = split[split.length - 1];
        return str.contains("$") ? str.split("\\$")[0] : str;
    }

    private static String b(StackTraceElement[] stackTraceElementArr, int i) {
        StackTraceElement stackTraceElement;
        StringBuilder append;
        StackTraceElement stackTraceElement2;
        String[] split = stackTraceElementArr[5].getClassName().split("\\.");
        String str = split[split.length - 1];
        if (!str.contains("$")) {
            if (stackTraceElementArr[5].getMethodName().contains("$")) {
                String[] split2 = stackTraceElementArr[6].getClassName().split("\\$");
                if (split2.length > 1) {
                    append = new StringBuilder().append(split2[1]).append(".");
                    stackTraceElement2 = stackTraceElementArr[6];
                } else {
                    stackTraceElement = stackTraceElementArr[6];
                }
            } else {
                stackTraceElement = stackTraceElementArr[5];
            }
            return stackTraceElement.getMethodName();
        }
        append = new StringBuilder().append(str.split("\\$")[1]).append(".");
        stackTraceElement2 = stackTraceElementArr[5];
        return append.append(stackTraceElement2.getMethodName()).toString();
    }

    public final void error(String str) {
        IronSourceLoggerManager.getLogger().log(this.f11199a, a(str), 3);
    }

    public final void info(String str) {
        IronSourceLoggerManager.getLogger().log(this.f11199a, a(str), 1);
    }

    public final void verbose(String str) {
        IronSourceLoggerManager.getLogger().log(this.f11199a, a(str), 0);
    }

    public final void warning(String str) {
        IronSourceLoggerManager.getLogger().log(this.f11199a, a(str), 2);
    }
}
