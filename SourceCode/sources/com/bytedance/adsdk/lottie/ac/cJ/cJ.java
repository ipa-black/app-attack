package com.bytedance.adsdk.lottie.ac.cJ;

import android.graphics.PointF;
/* compiled from: CircleShape.java */
/* loaded from: classes2.dex */
public class cJ implements ac {
    private final boolean CJ;
    private final String Qhi;
    private final com.bytedance.adsdk.lottie.ac.Qhi.ROR ac;
    private final com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> cJ;
    private final boolean fl;

    public cJ(String str, com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> imk, com.bytedance.adsdk.lottie.ac.Qhi.ROR ror, boolean z, boolean z2) {
        this.Qhi = str;
        this.cJ = imk;
        this.ac = ror;
        this.CJ = z;
        this.fl = z2;
    }

    @Override // com.bytedance.adsdk.lottie.ac.cJ.ac
    public com.bytedance.adsdk.lottie.Qhi.Qhi.ac Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        return new com.bytedance.adsdk.lottie.Qhi.Qhi.ROR(hmVar, qhi, this);
    }

    public String Qhi() {
        return this.Qhi;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> cJ() {
        return this.cJ;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.ROR ac() {
        return this.ac;
    }

    public boolean CJ() {
        return this.CJ;
    }

    public boolean fl() {
        return this.fl;
    }
}
