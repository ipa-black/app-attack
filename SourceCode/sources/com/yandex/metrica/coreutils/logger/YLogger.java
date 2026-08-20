package com.yandex.metrica.coreutils.logger;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class YLogger {
    public static final boolean DEBUG = false;
    public static final String FEATURE_TAG_ECOMMERCE = "[ECommerce]";
    private static YLoggerImpl impl = new YLoggerImpl(new DebugLogger(false), false);

    public static void d(String str, Object... objArr) {
    }

    public static void debug(String str, String str2, Object... objArr) {
    }

    public static void dumpJson(String str, JSONObject jSONObject) {
    }

    public static void e(String str, Object... objArr) {
    }

    public static void e(Throwable th, String str, Object... objArr) {
    }

    public static void error(String str, String str2, Object... objArr) {
    }

    public static void error(String str, Throwable th, String str2, Object... objArr) {
    }

    public static void i(String str, Object... objArr) {
    }

    public static void info(String str, String str2, Object... objArr) {
    }

    public static void w(String str, Object... objArr) {
    }

    public static void warning(String str, String str2, Object... objArr) {
    }

    private YLogger() {
    }

    public static void error(String str, Throwable th) {
        error(str, th, null, new Object[0]);
    }

    public static void setImpl(YLoggerImpl yLoggerImpl) {
        impl = yLoggerImpl;
    }

    static YLoggerImpl getImpl() {
        return impl;
    }
}
