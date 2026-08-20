package com.bytedance.sdk.component.Tgh.Qhi.cJ;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.Comparator;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: LogThreadCenter.java */
/* loaded from: classes2.dex */
public class fl {
    private final Comparator<Tgh> Gm;
    private volatile Handler WAv;
    private volatile com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac hm;
    private final PriorityBlockingQueue<Tgh> zc;
    public static final fl Qhi = new fl();
    public static final com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi CJ = new com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi();
    public static final AtomicLong fl = new AtomicLong(0);
    public static final AtomicLong Tgh = new AtomicLong(0);
    public static final long ROR = System.currentTimeMillis();
    public static long Sf = 0;
    public volatile boolean cJ = false;
    public volatile boolean ac = false;

    public PriorityBlockingQueue<Tgh> Qhi() {
        return this.zc;
    }

    private fl() {
        Comparator<Tgh> comparator = new Comparator<Tgh>() { // from class: com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.1
            @Override // java.util.Comparator
            /* renamed from: Qhi */
            public int compare(Tgh tgh, Tgh tgh2) {
                return fl.this.Qhi(tgh, tgh2);
            }
        };
        this.Gm = comparator;
        this.zc = new PriorityBlockingQueue<>(8, comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int Qhi(Tgh tgh, Tgh tgh2) {
        long j;
        long j2;
        long j3;
        long j4;
        if (tgh == null) {
            return tgh2 == null ? 0 : -1;
        } else if (tgh2 == null) {
            return 1;
        } else {
            if (tgh.fl() == tgh2.fl()) {
                if (tgh.Qhi() != null) {
                    j = tgh.Qhi().Qhi();
                    j2 = tgh.Qhi().cJ();
                } else {
                    j = 0;
                    j2 = 0;
                }
                if (tgh2.Qhi() != null) {
                    j4 = tgh2.Qhi().Qhi();
                    j3 = tgh2.Qhi().cJ();
                } else {
                    j3 = 0;
                    j4 = 0;
                }
                if (j == 0 || j4 == 0) {
                    return 0;
                }
                long j5 = j - j4;
                if (Math.abs(j5) > 2147483647L) {
                    return 0;
                }
                if (j5 == 0) {
                    if (j2 == 0 || j3 == 0) {
                        return 0;
                    }
                    return (int) (j2 - j3);
                }
                return (int) j5;
            }
            return tgh.fl() - tgh2.fl();
        }
    }

    public void cJ() {
        CJ();
        fl();
    }

    public void Qhi(Handler handler) {
        this.WAv = handler;
    }

    public void ac() {
        if (this.hm == null || !this.hm.isAlive()) {
            return;
        }
        synchronized (this) {
            if (this.hm != null && this.hm.isAlive()) {
                if (this.WAv != null) {
                    this.WAv.removeCallbacksAndMessages(null);
                }
                this.hm.Qhi(false);
                this.hm.quitSafely();
                this.hm = null;
            }
        }
    }

    public boolean CJ() {
        try {
            if (this.hm != null || com.bytedance.sdk.component.Tgh.Qhi.cJ.cJ()) {
                return false;
            }
            synchronized (this) {
                if (this.hm == null) {
                    this.hm = new com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac(this.zc);
                    this.hm.start();
                    return true;
                }
                return false;
            }
        } catch (Throwable th) {
            th.getMessage();
            return false;
        }
    }

    public void Qhi(Tgh tgh, int i) {
        CJ();
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac acVar = this.hm;
        if (acVar != null) {
            Qhi(hpZ, tgh);
            acVar.Qhi(tgh, tgh.fl() == 4);
        }
    }

    private void Qhi(final com.bytedance.sdk.component.Tgh.Qhi.Tgh tgh, Tgh tgh2) {
        if (tgh != null) {
            try {
                if (tgh.ROR()) {
                    final long cJ = (tgh2 == null || tgh2.Qhi() == null) ? 0L : tgh2.Qhi().cJ();
                    if (cJ == 1) {
                        Sf = System.currentTimeMillis();
                    }
                    AtomicLong zjb = CJ.zjb();
                    com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(zjb, 1);
                    if (zjb.get() == 200) {
                        if (Looper.getMainLooper() == Looper.myLooper()) {
                            Executor CJ2 = tgh.CJ();
                            if (CJ2 == null) {
                                CJ2 = tgh.fl();
                            }
                            if (CJ2 != null) {
                                CJ2.execute(new com.bytedance.sdk.component.Tgh.Qhi.fl.Tgh("report") { // from class: com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        fl.this.Qhi(tgh, cJ);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        Qhi(tgh, cJ);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(com.bytedance.sdk.component.Tgh.Qhi.Tgh tgh, long j) {
        com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac acVar = this.hm;
        if (tgh == null || acVar == null) {
            return;
        }
        com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi qhi = CJ;
        acVar.Qhi(tgh.Qhi(qhi.cJ(j)), true);
        qhi.jPH();
    }

    public void fl() {
        com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(CJ.js(), 1);
        final com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac acVar = this.hm;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            if (acVar != null) {
                acVar.ac(2);
                return;
            }
            return;
        }
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        if (hpZ != null) {
            Executor CJ2 = hpZ.CJ();
            if (CJ2 == null) {
                CJ2 = hpZ.fl();
            }
            if (CJ2 != null) {
                CJ2.execute(new com.bytedance.sdk.component.Tgh.Qhi.fl.Tgh("flush") { // from class: com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.3
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.component.Tgh.Qhi.cJ.ac.ac acVar2 = acVar;
                        if (acVar2 != null) {
                            acVar2.ac(2);
                        }
                    }
                });
            }
        }
    }
}
