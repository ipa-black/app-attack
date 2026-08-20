package com.explorestack.iab.utils;

import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public class Logger {

    /* renamed from: c  reason: collision with root package name */
    public static LogLevel f9394c = LogLevel.error;

    /* renamed from: a  reason: collision with root package name */
    public final List<LogListener> f9395a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final String f9396b;

    /* loaded from: classes2.dex */
    public enum LogLevel {
        debug(1),
        info(2),
        warning(3),
        error(4),
        none(5);
        

        /* renamed from: a  reason: collision with root package name */
        public int f9397a;

        LogLevel(int i) {
            this.f9397a = i;
        }

        public int getValue() {
            return this.f9397a;
        }
    }

    public Logger(String str) {
        this.f9396b = str;
    }

    public LogLevel a() {
        return f9394c;
    }

    public void a(LogListener logListener) {
        if (logListener != null) {
            this.f9395a.add(logListener);
        }
    }

    public final void a(LogLevel logLevel, String... strArr) {
        if (this.f9395a.isEmpty()) {
            return;
        }
        for (LogListener logListener : this.f9395a) {
            logListener.onLog(logLevel, this.f9396b, Arrays.toString(strArr));
        }
    }

    public void a(String str) {
        LogLevel logLevel = LogLevel.error;
        if (a(logLevel, str)) {
            Log.e(this.f9396b, str);
        }
        a(logLevel, str);
    }

    public void a(String str, String str2) {
        LogLevel logLevel = LogLevel.debug;
        if (a(logLevel, str2)) {
            Log.d(this.f9396b, "[" + str + "] " + str2);
        }
        a(logLevel, "[" + str + "] " + str2);
    }

    public void a(String str, String str2, Throwable th) {
        LogLevel logLevel = LogLevel.error;
        if (a(logLevel, str2)) {
            Log.e(this.f9396b, "[" + str + "] " + str2, th);
        }
        a(logLevel, "[" + str + "] " + str2, th.toString());
    }

    public void a(String str, Throwable th) {
        LogLevel logLevel = LogLevel.error;
        if (a(logLevel, str)) {
            Log.e(this.f9396b, str, th);
        }
        a(logLevel, str, th.toString());
    }

    public final boolean a(LogLevel logLevel) {
        LogLevel logLevel2 = f9394c;
        return (logLevel2 == null || logLevel == null || logLevel2.getValue() > logLevel.getValue()) ? false : true;
    }

    public final boolean a(LogLevel logLevel, String str) {
        return !TextUtils.isEmpty(str) && a(logLevel);
    }

    public void b(LogLevel logLevel) {
        Log.d(this.f9396b, String.format("Changing logging level. From: %s, To: %s", f9394c, logLevel));
        f9394c = logLevel;
    }

    public void b(String str, String str2) {
        LogLevel logLevel = LogLevel.error;
        if (a(logLevel, str2)) {
            Log.e(this.f9396b, "[" + str + "] " + str2);
        }
        a(logLevel, "[" + str + "] " + str2);
    }

    public boolean b(LogListener logListener) {
        return logListener != null && this.f9395a.remove(logListener);
    }

    public void c(String str, String str2) {
        LogLevel logLevel = LogLevel.warning;
        if (a(logLevel, str2)) {
            Log.w(this.f9396b, "[" + str + "] " + str2);
        }
        a(logLevel, "[" + str + "] " + str2);
    }
}
