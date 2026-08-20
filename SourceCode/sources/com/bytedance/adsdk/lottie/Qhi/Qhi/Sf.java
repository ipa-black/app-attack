package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FillContent.java */
/* loaded from: classes2.dex */
public class Sf implements Tgh, zc, Qhi.InterfaceC0175Qhi {
    private com.bytedance.adsdk.lottie.Qhi.cJ.ac ABk;
    private final com.bytedance.adsdk.lottie.ac.ac.Qhi CJ;
    private final com.bytedance.adsdk.lottie.hm Gm;
    float Qhi;
    private final List<iMK> ROR;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> Sf;
    private final boolean Tgh;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> WAv;
    private final Paint ac;
    private final Path cJ;
    private final String fl;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> hm;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> zc;

    public Sf(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.hpZ hpz) {
        Path path = new Path();
        this.cJ = path;
        this.ac = new com.bytedance.adsdk.lottie.Qhi.Qhi(1);
        this.ROR = new ArrayList();
        this.CJ = qhi;
        this.fl = hpz.Qhi();
        this.Tgh = hpz.fl();
        this.Gm = hmVar;
        if (qhi.Tgh() != null) {
            com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi = qhi.Tgh().Qhi().Qhi();
            this.zc = Qhi;
            Qhi.Qhi(this);
            qhi.Qhi(this.zc);
        }
        if (qhi.ROR() != null) {
            this.ABk = new com.bytedance.adsdk.lottie.Qhi.cJ.ac(this, qhi, qhi.ROR());
        }
        if (hpz.cJ() == null || hpz.ac() == null) {
            this.Sf = null;
            this.hm = null;
            return;
        }
        path.setFillType(hpz.CJ());
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> Qhi2 = hpz.cJ().Qhi();
        this.Sf = Qhi2;
        Qhi2.Qhi(this);
        qhi.Qhi(Qhi2);
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> Qhi3 = hpz.ac().Qhi();
        this.hm = Qhi3;
        Qhi3.Qhi(this);
        qhi.Qhi(Qhi3);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        this.Gm.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
        for (int i = 0; i < list2.size(); i++) {
            ac acVar = list2.get(i);
            if (acVar instanceof iMK) {
                this.ROR.add((iMK) acVar);
            }
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(Canvas canvas, Matrix matrix, int i) {
        if (this.Tgh) {
            return;
        }
        com.bytedance.adsdk.lottie.Tgh.Qhi("FillContent#draw");
        this.ac.setColor((com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi((int) ((((i / 255.0f) * this.hm.ROR().intValue()) / 100.0f) * 255.0f), 0, 255) << 24) | (((com.bytedance.adsdk.lottie.Qhi.cJ.cJ) this.Sf).hm() & ViewCompat.MEASURED_SIZE_MASK));
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> qhi = this.WAv;
        if (qhi != null) {
            this.ac.setColorFilter(qhi.ROR());
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> qhi2 = this.zc;
        if (qhi2 != null) {
            float floatValue = qhi2.ROR().floatValue();
            if (floatValue == 0.0f) {
                this.ac.setMaskFilter(null);
            } else if (floatValue != this.Qhi) {
                this.ac.setMaskFilter(this.CJ.cJ(floatValue));
            }
            this.Qhi = floatValue;
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.ac acVar = this.ABk;
        if (acVar != null) {
            acVar.Qhi(this.ac);
        }
        this.cJ.reset();
        for (int i2 = 0; i2 < this.ROR.size(); i2++) {
            this.cJ.addPath(this.ROR.get(i2).CJ(), matrix);
        }
        canvas.drawPath(this.cJ, this.ac);
        com.bytedance.adsdk.lottie.Tgh.cJ("FillContent#draw");
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(RectF rectF, Matrix matrix, boolean z) {
        this.cJ.reset();
        for (int i = 0; i < this.ROR.size(); i++) {
            this.cJ.addPath(this.ROR.get(i).CJ(), matrix);
        }
        this.cJ.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }
}
