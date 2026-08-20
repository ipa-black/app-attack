package com.pgl.ssdk;

import java.lang.Thread;
/* compiled from: CrashChecker.java */
/* loaded from: classes3.dex */
public class H implements Thread.UncaughtExceptionHandler {

    /* renamed from: c  reason: collision with root package name */
    private static volatile H f12170c;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f12172b = false;

    /* renamed from: a  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f12171a = Thread.getDefaultUncaughtExceptionHandler();

    private H() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static H b() {
        if (f12170c == null) {
            synchronized (H.class) {
                if (f12170c == null) {
                    f12170c = new H();
                }
            }
        }
        return f12170c;
    }

    public boolean a() {
        return this.f12172b;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.f12172b = true;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f12171a;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
