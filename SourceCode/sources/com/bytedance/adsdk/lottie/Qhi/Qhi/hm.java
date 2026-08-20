package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.ArrayList;
import java.util.List;
/* compiled from: GradientFillContent.java */
/* loaded from: classes2.dex */
public class hm implements Tgh, zc, Qhi.InterfaceC0175Qhi {
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> ABk;
    private final com.bytedance.adsdk.lottie.ac.ac.Qhi CJ;
    private final com.bytedance.adsdk.lottie.ac.cJ.Sf Gm;
    private com.bytedance.adsdk.lottie.Qhi.cJ.kYc HzH;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> MQ;
    float Qhi;
    private final Path ROR;
    private final Paint Sf;
    private final List<iMK> WAv;
    private final boolean ac;
    private final String cJ;
    private final RectF hm;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> hpZ;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<PointF, PointF> iMK;
    private final com.bytedance.adsdk.lottie.hm kYc;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<PointF, PointF> pA;
    private com.bytedance.adsdk.lottie.Qhi.cJ.ac qMt;
    private final int tP;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<com.bytedance.adsdk.lottie.ac.cJ.fl, com.bytedance.adsdk.lottie.ac.cJ.fl> zc;
    private final LongSparseArray<LinearGradient> fl = new LongSparseArray<>();
    private final LongSparseArray<RadialGradient> Tgh = new LongSparseArray<>();

    public hm(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.Tgh tgh) {
        Path path = new Path();
        this.ROR = path;
        this.Sf = new com.bytedance.adsdk.lottie.Qhi.Qhi(1);
        this.hm = new RectF();
        this.WAv = new ArrayList();
        this.Qhi = 0.0f;
        this.CJ = qhi;
        this.cJ = tgh.Qhi();
        this.ac = tgh.Sf();
        this.kYc = hmVar;
        this.Gm = tgh.cJ();
        path.setFillType(tgh.ac());
        this.tP = (int) (ror.fl() / 32.0f);
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<com.bytedance.adsdk.lottie.ac.cJ.fl, com.bytedance.adsdk.lottie.ac.cJ.fl> Qhi = tgh.CJ().Qhi();
        this.zc = Qhi;
        Qhi.Qhi(this);
        qhi.Qhi(Qhi);
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Integer, Integer> Qhi2 = tgh.fl().Qhi();
        this.ABk = Qhi2;
        Qhi2.Qhi(this);
        qhi.Qhi(Qhi2);
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<PointF, PointF> Qhi3 = tgh.Tgh().Qhi();
        this.iMK = Qhi3;
        Qhi3.Qhi(this);
        qhi.Qhi(Qhi3);
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<PointF, PointF> Qhi4 = tgh.ROR().Qhi();
        this.pA = Qhi4;
        Qhi4.Qhi(this);
        qhi.Qhi(Qhi4);
        if (qhi.Tgh() != null) {
            com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi5 = qhi.Tgh().Qhi().Qhi();
            this.MQ = Qhi5;
            Qhi5.Qhi(this);
            qhi.Qhi(this.MQ);
        }
        if (qhi.ROR() != null) {
            this.qMt = new com.bytedance.adsdk.lottie.Qhi.cJ.ac(this, qhi, qhi.ROR());
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        this.kYc.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
        for (int i = 0; i < list2.size(); i++) {
            ac acVar = list2.get(i);
            if (acVar instanceof iMK) {
                this.WAv.add((iMK) acVar);
            }
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(Canvas canvas, Matrix matrix, int i) {
        Shader ac;
        if (this.ac) {
            return;
        }
        com.bytedance.adsdk.lottie.Tgh.Qhi("GradientFillContent#draw");
        this.ROR.reset();
        for (int i2 = 0; i2 < this.WAv.size(); i2++) {
            this.ROR.addPath(this.WAv.get(i2).CJ(), matrix);
        }
        this.ROR.computeBounds(this.hm, false);
        if (this.Gm == com.bytedance.adsdk.lottie.ac.cJ.Sf.LINEAR) {
            ac = cJ();
        } else {
            ac = ac();
        }
        ac.setLocalMatrix(matrix);
        this.Sf.setShader(ac);
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> qhi = this.hpZ;
        if (qhi != null) {
            this.Sf.setColorFilter(qhi.ROR());
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> qhi2 = this.MQ;
        if (qhi2 != null) {
            float floatValue = qhi2.ROR().floatValue();
            if (floatValue == 0.0f) {
                this.Sf.setMaskFilter(null);
            } else if (floatValue != this.Qhi) {
                this.Sf.setMaskFilter(new BlurMaskFilter(floatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.Qhi = floatValue;
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.ac acVar = this.qMt;
        if (acVar != null) {
            acVar.Qhi(this.Sf);
        }
        this.Sf.setAlpha(com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi((int) ((((i / 255.0f) * this.ABk.ROR().intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.ROR, this.Sf);
        com.bytedance.adsdk.lottie.Tgh.cJ("GradientFillContent#draw");
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(RectF rectF, Matrix matrix, boolean z) {
        this.ROR.reset();
        for (int i = 0; i < this.WAv.size(); i++) {
            this.ROR.addPath(this.WAv.get(i).CJ(), matrix);
        }
        this.ROR.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    private LinearGradient cJ() {
        long CJ = CJ();
        LinearGradient linearGradient = this.fl.get(CJ);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF ROR = this.iMK.ROR();
        PointF ROR2 = this.pA.ROR();
        com.bytedance.adsdk.lottie.ac.cJ.fl ROR3 = this.zc.ROR();
        LinearGradient linearGradient2 = new LinearGradient(ROR.x, ROR.y, ROR2.x, ROR2.y, Qhi(ROR3.cJ()), ROR3.Qhi(), Shader.TileMode.CLAMP);
        this.fl.put(CJ, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient ac() {
        long CJ = CJ();
        RadialGradient radialGradient = this.Tgh.get(CJ);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF ROR = this.iMK.ROR();
        PointF ROR2 = this.pA.ROR();
        com.bytedance.adsdk.lottie.ac.cJ.fl ROR3 = this.zc.ROR();
        int[] Qhi = Qhi(ROR3.cJ());
        float[] Qhi2 = ROR3.Qhi();
        float f2 = ROR.x;
        float f3 = ROR.y;
        float hypot = (float) Math.hypot(ROR2.x - f2, ROR2.y - f3);
        if (hypot <= 0.0f) {
            hypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f2, f3, hypot, Qhi, Qhi2, Shader.TileMode.CLAMP);
        this.Tgh.put(CJ, radialGradient2);
        return radialGradient2;
    }

    private int CJ() {
        int round = Math.round(this.iMK.Sf() * this.tP);
        int round2 = Math.round(this.pA.Sf() * this.tP);
        int round3 = Math.round(this.zc.Sf() * this.tP);
        int i = round != 0 ? round * IronSourceError.ERROR_NON_EXISTENT_INSTANCE : 17;
        if (round2 != 0) {
            i = i * 31 * round2;
        }
        return round3 != 0 ? i * 31 * round3 : i;
    }

    private int[] Qhi(int[] iArr) {
        if (this.HzH == null) {
            return iArr;
        }
        throw null;
    }
}
