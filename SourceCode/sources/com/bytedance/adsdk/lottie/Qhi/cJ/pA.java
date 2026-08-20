package com.bytedance.adsdk.lottie.Qhi.cJ;

import android.graphics.PointF;
import java.util.Collections;
/* compiled from: SplitDimensionPathKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class pA extends Qhi<PointF, PointF> {
    protected com.bytedance.adsdk.lottie.ROR.cJ<Float> CJ;
    private final PointF ROR;
    private final Qhi<Float, Float> Sf;
    private final PointF Tgh;
    protected com.bytedance.adsdk.lottie.ROR.cJ<Float> fl;
    private final Qhi<Float, Float> hm;

    public pA(Qhi<Float, Float> qhi, Qhi<Float, Float> qhi2) {
        super(Collections.emptyList());
        this.Tgh = new PointF();
        this.ROR = new PointF();
        this.Sf = qhi;
        this.hm = qhi2;
        Qhi(Sf());
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    public void Qhi(float f2) {
        this.Sf.Qhi(f2);
        this.hm.Qhi(f2);
        this.Tgh.set(this.Sf.ROR().floatValue(), this.hm.ROR().floatValue());
        for (int i = 0; i < this.Qhi.size(); i++) {
            this.Qhi.get(i).Qhi();
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    /* renamed from: hm */
    public PointF ROR() {
        return Qhi(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    /* renamed from: cJ */
    public PointF Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<PointF> qhi, float f2) {
        com.bytedance.adsdk.lottie.ROR.Qhi<Float> ac;
        com.bytedance.adsdk.lottie.ROR.Qhi<Float> ac2;
        if (this.CJ != null && (ac2 = this.Sf.ac()) != null) {
            this.Sf.fl();
            Float f3 = ac2.ROR;
            if (f3 != null) {
                f3.floatValue();
            }
            throw null;
        } else if (this.fl != null && (ac = this.hm.ac()) != null) {
            this.hm.fl();
            Float f4 = ac.ROR;
            if (f4 != null) {
                f4.floatValue();
            }
            throw null;
        } else {
            this.ROR.set(this.Tgh.x, 0.0f);
            PointF pointF = this.ROR;
            pointF.set(pointF.x, this.Tgh.y);
            return this.ROR;
        }
    }
}
