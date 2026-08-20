package com.bytedance.sdk.openadsdk.core.CJ;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.settings.ROR;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;
/* compiled from: FrequentCallController.java */
/* loaded from: classes2.dex */
public class hm {
    private static volatile hm Qhi;
    private static volatile long ac;
    private static volatile boolean cJ;
    private final Queue<Qhi> CJ = new LinkedList();
    private final ROR Tgh = HzH.CJ();
    private Handler fl;

    private hm() {
    }

    public static hm Qhi() {
        if (Qhi == null) {
            synchronized (hm.class) {
                if (Qhi == null) {
                    Qhi = new hm();
                }
            }
        }
        return Qhi;
    }

    private synchronized boolean cJ(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        int CQU = this.Tgh.CQU();
        long Dww = this.Tgh.Dww();
        if (this.CJ.size() > 0 && this.CJ.size() >= CQU) {
            long abs = Math.abs(currentTimeMillis - this.CJ.peek().Qhi);
            if (abs <= Dww) {
                cJ(Dww - abs);
                return true;
            }
            this.CJ.poll();
            this.CJ.offer(new Qhi(currentTimeMillis, str));
        } else {
            this.CJ.offer(new Qhi(currentTimeMillis, str));
        }
        return false;
    }

    public synchronized boolean Qhi(String str) {
        if (cJ(str)) {
            Qhi(true);
            Qhi(ac);
        } else {
            Qhi(false);
        }
        return cJ;
    }

    private synchronized void Qhi(long j) {
        if (this.fl == null) {
            this.fl = new Handler(Looper.getMainLooper());
        }
        this.fl.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.CJ.hm.1
            @Override // java.lang.Runnable
            public void run() {
                hm.this.Qhi(false);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Qhi(boolean z) {
        cJ = z;
    }

    public synchronized boolean cJ() {
        return cJ;
    }

    private synchronized void cJ(long j) {
        ac = j;
    }

    public synchronized String ac() {
        String str;
        HashMap hashMap = new HashMap();
        for (Qhi qhi : this.CJ) {
            if (hashMap.containsKey(qhi.cJ)) {
                hashMap.put(qhi.cJ, Integer.valueOf(((Integer) hashMap.get(qhi.cJ)).intValue() + 1));
            } else {
                hashMap.put(qhi.cJ, 1);
            }
        }
        str = "";
        int i = Integer.MIN_VALUE;
        for (String str2 : hashMap.keySet()) {
            int intValue = ((Integer) hashMap.get(str2)).intValue();
            if (i < intValue) {
                str = str2;
                i = intValue;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FrequentCallController.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private final long Qhi;
        private final String cJ;

        private Qhi(long j, String str) {
            this.Qhi = j;
            this.cJ = str;
        }
    }
}
