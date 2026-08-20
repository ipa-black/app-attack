package com.bytedance.adsdk.lottie.ac.ac;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.bytedance.adsdk.lottie.WAv;
/* compiled from: ImageLayer.java */
/* loaded from: classes2.dex */
public class ac extends Qhi {
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> Gm;
    private final Paint ROR;
    private final Rect Sf;
    private final WAv WAv;
    private final Rect hm;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Bitmap, Bitmap> zc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(com.bytedance.adsdk.lottie.hm hmVar, fl flVar) {
        super(hmVar, flVar);
        this.ROR = new com.bytedance.adsdk.lottie.Qhi.Qhi(3);
        this.Sf = new Rect();
        this.hm = new Rect();
        this.WAv = hmVar.Tgh(flVar.ROR());
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi
    public void cJ(Canvas canvas, Matrix matrix, int i) {
        Bitmap Sf = Sf();
        if (Sf == null || Sf.isRecycled() || this.WAv == null) {
            return;
        }
        float Qhi = com.bytedance.adsdk.lottie.Tgh.ROR.Qhi();
        this.ROR.setAlpha(i);
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> qhi = this.Gm;
        if (qhi != null) {
            this.ROR.setColorFilter(qhi.ROR());
        }
        canvas.save();
        canvas.concat(matrix);
        this.Sf.set(0, 0, Sf.getWidth(), Sf.getHeight());
        if (this.cJ.CJ()) {
            this.hm.set(0, 0, (int) (this.WAv.Qhi() * Qhi), (int) (this.WAv.cJ() * Qhi));
        } else {
            this.hm.set(0, 0, (int) (Sf.getWidth() * Qhi), (int) (Sf.getHeight() * Qhi));
        }
        canvas.drawBitmap(Sf, this.Sf, this.hm, this.ROR);
        canvas.restore();
    }

    @Override // com.bytedance.adsdk.lottie.ac.ac.Qhi, com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(RectF rectF, Matrix matrix, boolean z) {
        super.Qhi(rectF, matrix, z);
        if (this.WAv != null) {
            float Qhi = com.bytedance.adsdk.lottie.Tgh.ROR.Qhi();
            rectF.set(0.0f, 0.0f, this.WAv.Qhi() * Qhi, this.WAv.cJ() * Qhi);
            this.Qhi.mapRect(rectF);
        }
    }

    private Bitmap Sf() {
        Bitmap ROR;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Bitmap, Bitmap> qhi = this.zc;
        if (qhi == null || (ROR = qhi.ROR()) == null) {
            Bitmap fl = this.cJ.fl(this.ac.ROR());
            if (fl != null) {
                return fl;
            }
            WAv wAv = this.WAv;
            if (wAv != null) {
                return wAv.Tgh();
            }
            return null;
        }
        return ROR;
    }
}
