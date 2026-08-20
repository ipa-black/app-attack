package com.bytedance.sdk.openadsdk.utils;

import android.os.SystemClock;
/* compiled from: TimeStamp.java */
/* loaded from: classes2.dex */
public class Jma {
    public long Qhi;
    private long cJ;

    private Jma(boolean z) {
        if (z) {
            CJ();
        }
    }

    public static Jma Qhi() {
        return new Jma(true);
    }

    public static Jma cJ() {
        return new Jma(false);
    }

    public long ac() {
        return SystemClock.elapsedRealtime() - this.cJ;
    }

    public long Qhi(Jma jma) {
        return Math.abs(jma.cJ - this.cJ);
    }

    public void CJ() {
        this.Qhi = System.currentTimeMillis();
        this.cJ = SystemClock.elapsedRealtime();
    }

    public boolean fl() {
        return this.cJ > 0;
    }

    public String toString() {
        return String.valueOf(this.Qhi);
    }
}
