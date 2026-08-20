package com.bytedance.sdk.openadsdk.hpZ;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: CrashMonitor.java */
/* loaded from: classes2.dex */
public class cJ {
    private int CJ;
    private ScheduledExecutorService Qhi = null;
    private long ac = 0;
    private hm cJ;
    private Qhi fl;

    /* compiled from: CrashMonitor.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
    }

    public cJ(hm hmVar, int i) {
        this.cJ = hmVar;
        this.CJ = i;
    }

    public void Qhi(long j) {
        this.ac = j;
    }

    public void Qhi(int i) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1);
        this.Qhi = newScheduledThreadPool;
        newScheduledThreadPool.scheduleAtFixedRate(new Runnable() { // from class: com.bytedance.sdk.openadsdk.hpZ.cJ.1
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                long unused = cJ.this.ac;
                if (System.currentTimeMillis() - cJ.this.ac > cJ.this.CJ) {
                    cJ.this.Qhi.shutdown();
                    if (cJ.this.cJ != null) {
                        cJ.this.cJ.cJ(0, "Automatic detection of stuck");
                    }
                    if (cJ.this.fl != null) {
                        Qhi unused2 = cJ.this.fl;
                    }
                }
            }
        }, 0L, i, TimeUnit.MILLISECONDS);
    }

    public void Qhi() {
        ScheduledExecutorService scheduledExecutorService = this.Qhi;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
    }

    public boolean cJ() {
        ScheduledExecutorService scheduledExecutorService = this.Qhi;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.isShutdown();
        }
        return true;
    }
}
