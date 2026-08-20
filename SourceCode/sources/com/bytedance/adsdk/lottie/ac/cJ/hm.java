package com.bytedance.adsdk.lottie.ac.cJ;
/* compiled from: Mask.java */
/* loaded from: classes2.dex */
public class hm {
    private final boolean CJ;
    private final Qhi Qhi;
    private final com.bytedance.adsdk.lottie.ac.Qhi.fl ac;
    private final com.bytedance.adsdk.lottie.ac.Qhi.hm cJ;

    /* compiled from: Mask.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public hm(Qhi qhi, com.bytedance.adsdk.lottie.ac.Qhi.hm hmVar, com.bytedance.adsdk.lottie.ac.Qhi.fl flVar, boolean z) {
        this.Qhi = qhi;
        this.cJ = hmVar;
        this.ac = flVar;
        this.CJ = z;
    }

    public Qhi Qhi() {
        return this.Qhi;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.hm cJ() {
        return this.cJ;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.fl ac() {
        return this.ac;
    }

    public boolean CJ() {
        return this.CJ;
    }
}
