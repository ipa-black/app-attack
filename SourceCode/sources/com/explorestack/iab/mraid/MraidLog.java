package com.explorestack.iab.mraid;

import com.explorestack.iab.utils.LogListener;
import com.explorestack.iab.utils.Logger;
/* loaded from: classes2.dex */
public class MraidLog {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f9285a = new Logger("MraidLog");

    public static Logger.LogLevel a() {
        return f9285a.a();
    }

    public static void a(String str) {
        f9285a.a(str);
    }

    public static void a(String str, String str2) {
        f9285a.b(str, str2);
    }

    public static void a(String str, Throwable th) {
        f9285a.a(str, th);
    }

    public static void addLogListener(LogListener logListener) {
        f9285a.a(logListener);
    }

    public static void b(String str, String str2) {
        f9285a.c(str, str2);
    }

    public static void d(String str, String str2) {
        f9285a.a(str, str2);
    }

    public static boolean removeLogListener(LogListener logListener) {
        return f9285a.b(logListener);
    }

    public static void setLoggingLevel(Logger.LogLevel logLevel) {
        f9285a.b(logLevel);
    }
}
