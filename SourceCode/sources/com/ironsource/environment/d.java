package com.ironsource.environment;

import java.lang.Thread;
/* loaded from: classes3.dex */
public final class d implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f10561a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f10561a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        StackTraceElement[] stackTrace;
        StackTraceElement[] stackTrace2 = th.getStackTrace();
        StringBuilder sb = new StringBuilder();
        sb.append(th.toString());
        sb.append(System.lineSeparator());
        boolean z = false;
        for (StackTraceElement stackTraceElement : stackTrace2) {
            sb.append(stackTraceElement.toString());
            sb.append(";" + System.lineSeparator());
            if (stackTraceElement.toString().contains(e.a().f10567b)) {
                z = true;
            }
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            sb.append("--CAUSE");
            sb.append(System.lineSeparator());
            sb.append(cause.toString());
            sb.append(System.lineSeparator());
            for (StackTraceElement stackTraceElement2 : cause.getStackTrace()) {
                sb.append(stackTraceElement2.toString());
                sb.append(";" + System.lineSeparator());
                if (stackTraceElement2.toString().contains(e.a().f10567b)) {
                    z = true;
                }
            }
        }
        if (z) {
            new c(sb.toString(), new StringBuilder().append(System.currentTimeMillis()).toString(), "Crash").d();
        }
        this.f10561a.uncaughtException(thread, th);
    }
}
