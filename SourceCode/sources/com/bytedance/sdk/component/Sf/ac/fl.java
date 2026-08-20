package com.bytedance.sdk.component.Sf.ac;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: PagThreadFactory.java */
/* loaded from: classes2.dex */
public class fl implements ThreadFactory {
    protected final ThreadGroup Qhi;
    private final AtomicInteger ac = new AtomicInteger(1);
    protected final String cJ;

    public fl(String str) {
        this.Qhi = new ThreadGroup("pag_g_".concat(String.valueOf(str)));
        this.cJ = Qhi(str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread Qhi = Qhi(this.Qhi, runnable, this.cJ + "_" + this.ac.getAndIncrement());
        if (Qhi.isDaemon()) {
            Qhi.setDaemon(false);
        }
        return Qhi;
    }

    protected Thread Qhi(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new Thread(threadGroup, runnable, str);
    }

    public static String Qhi(String str) {
        return "pag_".concat(String.valueOf(str));
    }
}
