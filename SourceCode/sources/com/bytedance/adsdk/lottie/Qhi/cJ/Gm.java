package com.bytedance.adsdk.lottie.Qhi.cJ;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;
/* compiled from: PathKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class Gm extends Sf<PointF> {
    private final PointF CJ;
    private WAv ROR;
    private final PathMeasure Tgh;
    private final float[] fl;

    public Gm(List<? extends com.bytedance.adsdk.lottie.ROR.Qhi<PointF>> list) {
        super(list);
        this.CJ = new PointF();
        this.fl = new float[2];
        this.Tgh = new PathMeasure();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    /* renamed from: cJ */
    public PointF Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<PointF> qhi, float f2) {
        WAv wAv = (WAv) qhi;
        Path cJ = wAv.cJ();
        if (cJ == null) {
            return qhi.Qhi;
        }
        if (this.ac != null) {
            wAv.ROR.floatValue();
            CJ();
            Sf();
            throw null;
        }
        if (this.ROR != wAv) {
            this.Tgh.setPath(cJ, false);
            this.ROR = wAv;
        }
        PathMeasure pathMeasure = this.Tgh;
        pathMeasure.getPosTan(f2 * pathMeasure.getLength(), this.fl, null);
        PointF pointF = this.CJ;
        float[] fArr = this.fl;
        pointF.set(fArr[0], fArr[1]);
        return this.CJ;
    }
}
