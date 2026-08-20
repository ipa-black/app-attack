package com.bytedance.sdk.component.Sf;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: TTThreadFactory.java */
/* loaded from: classes2.dex */
public class WAv implements ThreadFactory {
    public static final String THREAD_GROUP_NAME_PRE = "csj_g_";
    public static final String THREAD_NAME_PRE = "csj_";
    private final AtomicInteger CJ;
    protected final ThreadGroup Qhi;
    protected int ac;
    protected final String cJ;

    public WAv(String str) {
        this(5, str);
    }

    public WAv(int i, String str) {
        this.CJ = new AtomicInteger(1);
        this.ac = i;
        this.Qhi = new ThreadGroup(THREAD_GROUP_NAME_PRE.concat(String.valueOf(str)));
        this.cJ = THREAD_NAME_PRE.concat(String.valueOf(str));
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread Qhi = Qhi(this.Qhi, runnable, this.cJ + this.CJ.getAndIncrement());
        if (Qhi.isDaemon()) {
            Qhi.setDaemon(false);
        }
        int i = this.ac;
        if (i > 10 || i <= 0) {
            this.ac = 5;
        }
        Qhi.setPriority(this.ac);
        return Qhi;
    }

    protected Thread Qhi(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new Thread(threadGroup, runnable, str);
    }
}
