package com.bytedance.adsdk.lottie.ac.cJ;

import android.graphics.PointF;
/* compiled from: RectangleShape.java */
/* loaded from: classes2.dex */
public class zc implements ac {
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ CJ;
    private final String Qhi;
    private final com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> ac;
    private final com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> cJ;
    private final boolean fl;

    public zc(String str, com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> imk, com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> imk2, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar, boolean z) {
        this.Qhi = str;
        this.cJ = imk;
        this.ac = imk2;
        this.CJ = cJVar;
        this.fl = z;
    }

    public String Qhi() {
        return this.Qhi;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ cJ() {
        return this.CJ;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> ac() {
        return this.ac;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> CJ() {
        return this.cJ;
    }

    public boolean fl() {
        return this.fl;
    }

    @Override // com.bytedance.adsdk.lottie.ac.cJ.ac
    public com.bytedance.adsdk.lottie.Qhi.Qhi.ac Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        return new com.bytedance.adsdk.lottie.Qhi.Qhi.hpZ(hmVar, qhi, this);
    }

    public String toString() {
        return "RectangleShape{position=" + this.cJ + ", size=" + this.ac + '}';
    }
}
