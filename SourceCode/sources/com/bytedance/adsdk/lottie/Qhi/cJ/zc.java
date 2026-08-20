package com.bytedance.adsdk.lottie.Qhi.cJ;

import android.graphics.PointF;
import java.util.List;
/* compiled from: PointKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class zc extends Sf<PointF> {
    private final PointF CJ;

    public zc(List<com.bytedance.adsdk.lottie.ROR.Qhi<PointF>> list) {
        super(list);
        this.CJ = new PointF();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    /* renamed from: cJ */
    public PointF Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<PointF> qhi, float f2) {
        return Qhi(qhi, f2, f2, f2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    /* renamed from: cJ */
    public PointF Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<PointF> qhi, float f2, float f3, float f4) {
        if (qhi.Qhi == null || qhi.cJ == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF = qhi.Qhi;
        PointF pointF2 = qhi.cJ;
        if (this.ac != null) {
            qhi.ROR.floatValue();
            CJ();
            Sf();
            throw null;
        }
        this.CJ.set(pointF.x + (f3 * (pointF2.x - pointF.x)), pointF.y + (f4 * (pointF2.y - pointF.y)));
        return this.CJ;
    }
}
