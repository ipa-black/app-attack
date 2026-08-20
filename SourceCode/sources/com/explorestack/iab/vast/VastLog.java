package com.explorestack.iab.vast;

import com.explorestack.iab.utils.LogListener;
import com.explorestack.iab.utils.Logger;
/* loaded from: classes2.dex */
public class VastLog {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f9464a = new Logger("VastLog");

    public static void a(String str) {
        f9464a.a(str);
    }

    public static void a(String str, String str2) {
        f9464a.b(str, str2);
    }

    public static void a(String str, String str2, Throwable th) {
        f9464a.a(str, str2, th);
    }

    public static void a(String str, Throwable th) {
        f9464a.a(str, th);
    }

    public static void addLogListener(LogListener logListener) {
        f9464a.a(logListener);
    }

    public static void d(String str, String str2) {
        f9464a.a(str, str2);
    }

    public static boolean removeLogListener(LogListener logListener) {
        return f9464a.b(logListener);
    }

    public static void setLoggingLevel(Logger.LogLevel logLevel) {
        f9464a.b(logLevel);
    }
}
