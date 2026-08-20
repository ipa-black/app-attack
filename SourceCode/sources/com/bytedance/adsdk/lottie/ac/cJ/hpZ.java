package com.bytedance.adsdk.lottie.ac.cJ;

import android.graphics.Path;
/* compiled from: ShapeFill.java */
/* loaded from: classes2.dex */
public class hpZ implements ac {
    private final com.bytedance.adsdk.lottie.ac.Qhi.Qhi CJ;
    private final boolean Qhi;
    private final boolean Tgh;
    private final String ac;
    private final Path.FillType cJ;
    private final com.bytedance.adsdk.lottie.ac.Qhi.fl fl;

    public hpZ(String str, boolean z, Path.FillType fillType, com.bytedance.adsdk.lottie.ac.Qhi.Qhi qhi, com.bytedance.adsdk.lottie.ac.Qhi.fl flVar, boolean z2) {
        this.ac = str;
        this.Qhi = z;
        this.cJ = fillType;
        this.CJ = qhi;
        this.fl = flVar;
        this.Tgh = z2;
    }

    public String Qhi() {
        return this.ac;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.Qhi cJ() {
        return this.CJ;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.fl ac() {
        return this.fl;
    }

    public Path.FillType CJ() {
        return this.cJ;
    }

    public boolean fl() {
        return this.Tgh;
    }

    @Override // com.bytedance.adsdk.lottie.ac.cJ.ac
    public com.bytedance.adsdk.lottie.Qhi.Qhi.ac Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        return new com.bytedance.adsdk.lottie.Qhi.Qhi.Sf(hmVar, qhi, this);
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.Qhi + '}';
    }
}
