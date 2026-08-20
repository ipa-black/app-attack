package com.bytedance.adsdk.lottie.Qhi.cJ;

import java.util.List;
/* compiled from: ScaleKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class ABk extends Sf<com.bytedance.adsdk.lottie.ROR.ac> {
    private final com.bytedance.adsdk.lottie.ROR.ac CJ;

    public ABk(List<com.bytedance.adsdk.lottie.ROR.Qhi<com.bytedance.adsdk.lottie.ROR.ac>> list) {
        super(list);
        this.CJ = new com.bytedance.adsdk.lottie.ROR.ac();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    /* renamed from: cJ */
    public com.bytedance.adsdk.lottie.ROR.ac Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<com.bytedance.adsdk.lottie.ROR.ac> qhi, float f2) {
        if (qhi.Qhi == null || qhi.cJ == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        com.bytedance.adsdk.lottie.ROR.ac acVar = qhi.Qhi;
        com.bytedance.adsdk.lottie.ROR.ac acVar2 = qhi.cJ;
        if (this.ac != null) {
            qhi.ROR.floatValue();
            CJ();
            Sf();
            throw null;
        }
        this.CJ.Qhi(com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(acVar.Qhi(), acVar2.Qhi(), f2), com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(acVar.cJ(), acVar2.cJ(), f2));
        return this.CJ;
    }
}
