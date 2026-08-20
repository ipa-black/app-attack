package com.bytedance.adsdk.lottie.ac.ac;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.bytedance.adsdk.lottie.ac.cJ.HzH;
import com.bytedance.adsdk.lottie.fl.Gm;
import java.util.Collections;
/* compiled from: ShapeLayer.java */
/* loaded from: classes2.dex */
public class ROR extends Qhi {
    private final com.bytedance.adsdk.lottie.Qhi.Qhi.fl ROR;
    private final cJ Sf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ROR(com.bytedance.adsdk.lottie.hm hmVar, fl flVar, cJ cJVar, com.bytedance.adsdk.lottie.ROR ror) {
        super(hmVar, flVar);
        this.Sf = cJVar;
        com.bytedance.adsdk.lottie.Qhi.Qhi.fl flVar2 = new com.bytedance.adsdk.lottie.Qhi.Qhi.fl(hmVar, this, new HzH("__container", flVar.iMK(), false), ror);
        this.ROR = flVar2;
        flVar2.Qhi(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi
    void cJ(Canvas canvas, Matrix matrix, int i) {
        this.ROR.Qhi(canvas, matrix, i);
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi, com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(RectF rectF, Matrix matrix, boolean z) {
        super.Qhi(rectF, matrix, z);
        this.ROR.Qhi(rectF, this.Qhi, z);
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi
    public com.bytedance.adsdk.lottie.ac.cJ.Qhi Tgh() {
        com.bytedance.adsdk.lottie.ac.cJ.Qhi Tgh = super.Tgh();
        return Tgh != null ? Tgh : this.Sf.Tgh();
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi
    public Gm ROR() {
        Gm ROR = super.ROR();
        return ROR != null ? ROR : this.Sf.ROR();
    }
}
