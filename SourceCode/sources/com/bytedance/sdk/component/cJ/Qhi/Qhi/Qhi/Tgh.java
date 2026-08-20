package com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: NetDispatcher.java */
/* loaded from: classes2.dex */
public class Tgh extends com.bytedance.sdk.component.cJ.Qhi.fl {
    private ExecutorService Qhi;
    private List<com.bytedance.sdk.component.cJ.Qhi.cJ> cJ = new CopyOnWriteArrayList();
    private List<com.bytedance.sdk.component.cJ.Qhi.cJ> ac = new CopyOnWriteArrayList();
    private AtomicInteger CJ = new AtomicInteger(64);

    public Tgh() {
        if (this.Qhi == null) {
            this.Qhi = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi.Tgh.1
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable, "systemHttp Dispatcher");
                    thread.setDaemon(false);
                    thread.setPriority(10);
                    return thread;
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public ExecutorService cJ() {
        return this.Qhi;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public void Qhi(int i) {
        this.CJ.set(i);
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public List<com.bytedance.sdk.component.cJ.Qhi.cJ> ac() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public List<com.bytedance.sdk.component.cJ.Qhi.cJ> CJ() {
        return this.ac;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.fl
    public int Qhi() {
        return this.CJ.get();
    }
}
