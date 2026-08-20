package com.bytedance.adsdk.lottie.Qhi.cJ;

import java.util.List;
/* compiled from: IntegerKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class ROR extends Sf<Integer> {
    public ROR(List<com.bytedance.adsdk.lottie.ROR.Qhi<Integer>> list) {
        super(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    /* renamed from: cJ */
    public Integer Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<Integer> qhi, float f2) {
        return Integer.valueOf(ac(qhi, f2));
    }

    int ac(com.bytedance.adsdk.lottie.ROR.Qhi<Integer> qhi, float f2) {
        if (qhi.Qhi == null || qhi.cJ == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (this.ac != null) {
            qhi.ROR.floatValue();
            CJ();
            Sf();
            throw null;
        }
        return com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(qhi.Sf(), qhi.hm(), f2);
    }

    public int hm() {
        return ac(ac(), fl());
    }
}
