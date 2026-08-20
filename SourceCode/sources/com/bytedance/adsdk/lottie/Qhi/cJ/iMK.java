package com.bytedance.adsdk.lottie.Qhi.cJ;

import android.graphics.Path;
import com.bytedance.adsdk.lottie.Qhi.Qhi.MQ;
import java.util.List;
/* compiled from: ShapeKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class iMK extends Qhi<com.bytedance.adsdk.lottie.ac.cJ.pA, Path> {
    private final com.bytedance.adsdk.lottie.ac.cJ.pA CJ;
    private List<MQ> Tgh;
    private final Path fl;

    public iMK(List<com.bytedance.adsdk.lottie.ROR.Qhi<com.bytedance.adsdk.lottie.ac.cJ.pA>> list) {
        super(list);
        this.CJ = new com.bytedance.adsdk.lottie.ac.cJ.pA();
        this.fl = new Path();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi
    /* renamed from: cJ */
    public Path Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<com.bytedance.adsdk.lottie.ac.cJ.pA> qhi, float f2) {
        this.CJ.Qhi(qhi.Qhi, qhi.cJ, f2);
        com.bytedance.adsdk.lottie.ac.cJ.pA pAVar = this.CJ;
        List<MQ> list = this.Tgh;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                pAVar = this.Tgh.get(size).Qhi(pAVar);
            }
        }
        com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(pAVar, this.fl);
        return this.fl;
    }

    public void Qhi(List<MQ> list) {
        this.Tgh = list;
    }
}
