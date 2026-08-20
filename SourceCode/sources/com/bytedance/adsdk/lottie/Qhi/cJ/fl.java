package com.bytedance.adsdk.lottie.Qhi.cJ;

import java.util.List;
/* compiled from: FloatKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class fl extends Sf<Float> {
    public fl(List<com.bytedance.adsdk.lottie.ROR.Qhi<Float>> list) {
        super(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    /* renamed from: cJ */
    public Float Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<Float> qhi, float f2) {
        return Float.valueOf(ac(qhi, f2));
    }

    float ac(com.bytedance.adsdk.lottie.ROR.Qhi<Float> qhi, float f2) {
        if (qhi.Qhi == null || qhi.cJ == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (this.ac != null) {
            qhi.ROR.floatValue();
            CJ();
            Sf();
            throw null;
        }
        return com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(qhi.Tgh(), qhi.ROR(), f2);
    }

    public float hm() {
        return ac(ac(), fl());
    }
}
