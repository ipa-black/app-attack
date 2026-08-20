package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
/* compiled from: StrokeContent.java */
/* loaded from: classes2.dex */
public class qMt extends Qhi {
    private final com.bytedance.adsdk.lottie.ac.ac.Qhi CJ;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> ROR;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> Sf;
    private final boolean Tgh;
    private final String fl;

    public qMt(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.tP tPVar) {
        super(hmVar, qhi, tPVar.ROR().Qhi(), tPVar.Sf().Qhi(), tPVar.hm(), tPVar.ac(), tPVar.CJ(), tPVar.fl(), tPVar.Tgh());
        this.CJ = qhi;
        this.fl = tPVar.Qhi();
        this.Tgh = tPVar.WAv();
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> Qhi = tPVar.cJ().Qhi();
        this.ROR = Qhi;
        Qhi.Qhi(this);
        qhi.Qhi(Qhi);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Qhi, com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(Canvas canvas, Matrix matrix, int i) {
        if (this.Tgh) {
            return;
        }
        this.cJ.setColor(((com.bytedance.adsdk.lottie.Qhi.cJ.cJ) this.ROR).hm());
        if (this.Sf != null) {
            this.cJ.setColorFilter(this.Sf.ROR());
        }
        super.Qhi(canvas, matrix, i);
    }
}
