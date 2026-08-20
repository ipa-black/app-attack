package com.bytedance.adsdk.lottie.ac.ac;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
/* compiled from: SolidLayer.java */
/* loaded from: classes2.dex */
public class Sf extends Qhi {
    private final fl Gm;
    private final RectF ROR;
    private final Paint Sf;
    private final Path WAv;
    private final float[] hm;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> zc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Sf(com.bytedance.adsdk.lottie.hm hmVar, fl flVar) {
        super(hmVar, flVar);
        this.ROR = new RectF();
        com.bytedance.adsdk.lottie.Qhi.Qhi qhi = new com.bytedance.adsdk.lottie.Qhi.Qhi();
        this.Sf = qhi;
        this.hm = new float[8];
        this.WAv = new Path();
        this.Gm = flVar;
        qhi.setAlpha(0);
        qhi.setStyle(Paint.Style.FILL);
        qhi.setColor(flVar.hpZ());
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi
    public void cJ(Canvas canvas, Matrix matrix, int i) {
        int alpha = Color.alpha(this.Gm.hpZ());
        if (alpha == 0) {
            return;
        }
        int intValue = (int) ((i / 255.0f) * (((alpha / 255.0f) * (this.CJ.Qhi() == null ? 100 : this.CJ.Qhi().ROR().intValue())) / 100.0f) * 255.0f);
        this.Sf.setAlpha(intValue);
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> qhi = this.zc;
        if (qhi != null) {
            this.Sf.setColorFilter(qhi.ROR());
        }
        if (intValue > 0) {
            float[] fArr = this.hm;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.Gm.kYc();
            float[] fArr2 = this.hm;
            fArr2[3] = 0.0f;
            fArr2[4] = this.Gm.kYc();
            this.hm[5] = this.Gm.HzH();
            float[] fArr3 = this.hm;
            fArr3[6] = 0.0f;
            fArr3[7] = this.Gm.HzH();
            matrix.mapPoints(this.hm);
            this.WAv.reset();
            Path path = this.WAv;
            float[] fArr4 = this.hm;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.WAv;
            float[] fArr5 = this.hm;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.WAv;
            float[] fArr6 = this.hm;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.WAv;
            float[] fArr7 = this.hm;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.WAv;
            float[] fArr8 = this.hm;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.WAv.close();
            canvas.drawPath(this.WAv, this.Sf);
        }
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi, com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(RectF rectF, Matrix matrix, boolean z) {
        super.Qhi(rectF, matrix, z);
        this.ROR.set(0.0f, 0.0f, this.Gm.kYc(), this.Gm.HzH());
        this.Qhi.mapRect(this.ROR);
        rectF.set(this.ROR);
    }
}
