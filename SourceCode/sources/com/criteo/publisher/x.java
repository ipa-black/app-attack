package com.criteo.publisher;

import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.concurrent.ExecutionException;
import javax.net.ssl.SSLException;
/* compiled from: SafeRunnable.java */
/* loaded from: classes2.dex */
public abstract class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f9252a = com.criteo.publisher.logging.h.b(x.class);

    /* renamed from: b  reason: collision with root package name */
    private final StackTraceElement[] f9253b = Thread.currentThread().getStackTrace();

    public abstract void a() throws Throwable;

    @Override // java.lang.Runnable
    public void run() {
        try {
            a();
        } catch (Throwable th) {
            ExecutionException executionException = new ExecutionException(th);
            executionException.setStackTrace(this.f9253b);
            if (th instanceof RuntimeException) {
                com.criteo.publisher.n0.o.a((Throwable) executionException);
            } else if (a(th)) {
                this.f9252a.a(v.d(executionException));
            } else {
                this.f9252a.a(v.c(executionException));
            }
        }
    }

    private boolean a(Throwable th) {
        return (th instanceof SocketException) || (th instanceof UnknownHostException) || (th instanceof SSLException) || (th instanceof ProtocolException) || (th instanceof SocketTimeoutException);
    }
}
