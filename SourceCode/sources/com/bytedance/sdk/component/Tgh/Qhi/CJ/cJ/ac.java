package com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ;
/* compiled from: PolicyConfig.java */
/* loaded from: classes2.dex */
public class ac {
    private int Qhi;
    private int cJ;

    public int Qhi() {
        return this.Qhi;
    }

    public int cJ() {
        return this.cJ;
    }

    ac(int i, int i2, long j) {
        if (i2 < i) {
            throw new IllegalStateException("atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)");
        }
        this.Qhi = i;
        this.cJ = i2;
    }

    public static ac ac() {
        return new ac(1, 100, 172800000L);
    }

    public static ac CJ() {
        return new ac(1, 100, -1L);
    }

    public static ac fl() {
        return new ac(3, 100, 172800000L);
    }
}
