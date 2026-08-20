package com.applovin.impl.sdk;

import android.os.Process;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class AppLovinExceptionHandler implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private static final AppLovinExceptionHandler f5390a = new AppLovinExceptionHandler();

    /* renamed from: b  reason: collision with root package name */
    private final Set<n> f5391b = new HashSet(2);

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f5392c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f5393d;

    public static AppLovinExceptionHandler shared() {
        return f5390a;
    }

    public void addSdk(n nVar) {
        this.f5391b.add(nVar);
    }

    public void enable() {
        if (this.f5392c.compareAndSet(false, true)) {
            this.f5393d = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        for (n nVar : this.f5391b) {
            nVar.D();
            if (v.a()) {
                nVar.D().b("AppLovinExceptionHandler", "Detected unhandled exception");
            }
            ((EventServiceImpl) nVar.x()).trackEventSynchronously("paused");
            ((EventServiceImpl) nVar.x()).trackEventSynchronously("crashed");
        }
        try {
            Thread.sleep(100L);
        } catch (InterruptedException unused) {
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f5393d;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
            return;
        }
        Process.killProcess(Process.myPid());
        System.exit(1);
    }
}
