package com.bytedance.adsdk.lottie.ac.cJ;
/* compiled from: ShapePath.java */
/* loaded from: classes2.dex */
public class kYc implements ac {
    private final boolean CJ;
    private final String Qhi;
    private final com.bytedance.adsdk.lottie.ac.Qhi.hm ac;
    private final int cJ;

    public kYc(String str, int i, com.bytedance.adsdk.lottie.ac.Qhi.hm hmVar, boolean z) {
        this.Qhi = str;
        this.cJ = i;
        this.ac = hmVar;
        this.CJ = z;
    }

    public String Qhi() {
        return this.Qhi;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.hm cJ() {
        return this.ac;
    }

    @Override // com.bytedance.adsdk.lottie.ac.cJ.ac
    public com.bytedance.adsdk.lottie.Qhi.Qhi.ac Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        return new com.bytedance.adsdk.lottie.Qhi.Qhi.tP(hmVar, qhi, this);
    }

    public boolean ac() {
        return this.CJ;
    }

    public String toString() {
        return "ShapePath{name=" + this.Qhi + ", index=" + this.cJ + '}';
    }
}
