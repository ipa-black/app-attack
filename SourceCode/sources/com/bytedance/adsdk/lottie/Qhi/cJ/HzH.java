package com.bytedance.adsdk.lottie.Qhi.cJ;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
/* compiled from: TransformKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class HzH {
    private Qhi<?, Float> ABk;
    private final Matrix CJ;
    private fl Gm;
    private final Matrix Qhi = new Matrix();
    private Qhi<?, PointF> ROR;
    private Qhi<com.bytedance.adsdk.lottie.ROR.ac, com.bytedance.adsdk.lottie.ROR.ac> Sf;
    private Qhi<PointF, PointF> Tgh;
    private Qhi<Integer, Integer> WAv;
    private final Matrix ac;
    private final Matrix cJ;
    private final float[] fl;
    private Qhi<Float, Float> hm;
    private Qhi<?, Float> iMK;
    private fl zc;

    public HzH(com.bytedance.adsdk.lottie.ac.Qhi.ABk aBk) {
        this.Tgh = aBk.Qhi() == null ? null : aBk.Qhi().Qhi();
        this.ROR = aBk.cJ() == null ? null : aBk.cJ().Qhi();
        this.Sf = aBk.ac() == null ? null : aBk.ac().Qhi();
        this.hm = aBk.CJ() == null ? null : aBk.CJ().Qhi();
        fl flVar = aBk.Sf() == null ? null : (fl) aBk.Sf().Qhi();
        this.Gm = flVar;
        if (flVar != null) {
            this.cJ = new Matrix();
            this.ac = new Matrix();
            this.CJ = new Matrix();
            this.fl = new float[9];
        } else {
            this.cJ = null;
            this.ac = null;
            this.CJ = null;
            this.fl = null;
        }
        this.zc = aBk.hm() == null ? null : (fl) aBk.hm().Qhi();
        if (aBk.fl() != null) {
            this.WAv = aBk.fl().Qhi();
        }
        if (aBk.Tgh() != null) {
            this.ABk = aBk.Tgh().Qhi();
        } else {
            this.ABk = null;
        }
        if (aBk.ROR() != null) {
            this.iMK = aBk.ROR().Qhi();
        } else {
            this.iMK = null;
        }
    }

    public void Qhi(com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        qhi.Qhi(this.WAv);
        qhi.Qhi(this.ABk);
        qhi.Qhi(this.iMK);
        qhi.Qhi(this.Tgh);
        qhi.Qhi(this.ROR);
        qhi.Qhi(this.Sf);
        qhi.Qhi(this.hm);
        qhi.Qhi(this.Gm);
        qhi.Qhi(this.zc);
    }

    public void Qhi(Qhi.InterfaceC0175Qhi interfaceC0175Qhi) {
        Qhi<Integer, Integer> qhi = this.WAv;
        if (qhi != null) {
            qhi.Qhi(interfaceC0175Qhi);
        }
        Qhi<?, Float> qhi2 = this.ABk;
        if (qhi2 != null) {
            qhi2.Qhi(interfaceC0175Qhi);
        }
        Qhi<?, Float> qhi3 = this.iMK;
        if (qhi3 != null) {
            qhi3.Qhi(interfaceC0175Qhi);
        }
        Qhi<PointF, PointF> qhi4 = this.Tgh;
        if (qhi4 != null) {
            qhi4.Qhi(interfaceC0175Qhi);
        }
        Qhi<?, PointF> qhi5 = this.ROR;
        if (qhi5 != null) {
            qhi5.Qhi(interfaceC0175Qhi);
        }
        Qhi<com.bytedance.adsdk.lottie.ROR.ac, com.bytedance.adsdk.lottie.ROR.ac> qhi6 = this.Sf;
        if (qhi6 != null) {
            qhi6.Qhi(interfaceC0175Qhi);
        }
        Qhi<Float, Float> qhi7 = this.hm;
        if (qhi7 != null) {
            qhi7.Qhi(interfaceC0175Qhi);
        }
        fl flVar = this.Gm;
        if (flVar != null) {
            flVar.Qhi(interfaceC0175Qhi);
        }
        fl flVar2 = this.zc;
        if (flVar2 != null) {
            flVar2.Qhi(interfaceC0175Qhi);
        }
    }

    public void Qhi(float f2) {
        Qhi<Integer, Integer> qhi = this.WAv;
        if (qhi != null) {
            qhi.Qhi(f2);
        }
        Qhi<?, Float> qhi2 = this.ABk;
        if (qhi2 != null) {
            qhi2.Qhi(f2);
        }
        Qhi<?, Float> qhi3 = this.iMK;
        if (qhi3 != null) {
            qhi3.Qhi(f2);
        }
        Qhi<PointF, PointF> qhi4 = this.Tgh;
        if (qhi4 != null) {
            qhi4.Qhi(f2);
        }
        Qhi<?, PointF> qhi5 = this.ROR;
        if (qhi5 != null) {
            qhi5.Qhi(f2);
        }
        Qhi<com.bytedance.adsdk.lottie.ROR.ac, com.bytedance.adsdk.lottie.ROR.ac> qhi6 = this.Sf;
        if (qhi6 != null) {
            qhi6.Qhi(f2);
        }
        Qhi<Float, Float> qhi7 = this.hm;
        if (qhi7 != null) {
            qhi7.Qhi(f2);
        }
        fl flVar = this.Gm;
        if (flVar != null) {
            flVar.Qhi(f2);
        }
        fl flVar2 = this.zc;
        if (flVar2 != null) {
            flVar2.Qhi(f2);
        }
    }

    public Qhi<?, Integer> Qhi() {
        return this.WAv;
    }

    public Qhi<?, Float> cJ() {
        return this.ABk;
    }

    public Qhi<?, Float> ac() {
        return this.iMK;
    }

    public Matrix CJ() {
        PointF ROR;
        float hm;
        PointF ROR2;
        this.Qhi.reset();
        Qhi<?, PointF> qhi = this.ROR;
        if (qhi != null && (ROR2 = qhi.ROR()) != null && (ROR2.x != 0.0f || ROR2.y != 0.0f)) {
            this.Qhi.preTranslate(ROR2.x, ROR2.y);
        }
        Qhi<Float, Float> qhi2 = this.hm;
        if (qhi2 != null) {
            if (qhi2 instanceof kYc) {
                hm = qhi2.ROR().floatValue();
            } else {
                hm = ((fl) qhi2).hm();
            }
            if (hm != 0.0f) {
                this.Qhi.preRotate(hm);
            }
        }
        fl flVar = this.Gm;
        if (flVar != null) {
            fl flVar2 = this.zc;
            float cos = flVar2 == null ? 0.0f : (float) Math.cos(Math.toRadians((-flVar2.hm()) + 90.0f));
            fl flVar3 = this.zc;
            float sin = flVar3 == null ? 1.0f : (float) Math.sin(Math.toRadians((-flVar3.hm()) + 90.0f));
            float tan = (float) Math.tan(Math.toRadians(flVar.hm()));
            fl();
            float[] fArr = this.fl;
            fArr[0] = cos;
            fArr[1] = sin;
            float f2 = -sin;
            fArr[3] = f2;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            this.cJ.setValues(fArr);
            fl();
            float[] fArr2 = this.fl;
            fArr2[0] = 1.0f;
            fArr2[3] = tan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.ac.setValues(fArr2);
            fl();
            float[] fArr3 = this.fl;
            fArr3[0] = cos;
            fArr3[1] = f2;
            fArr3[3] = sin;
            fArr3[4] = cos;
            fArr3[8] = 1.0f;
            this.CJ.setValues(fArr3);
            this.ac.preConcat(this.cJ);
            this.CJ.preConcat(this.ac);
            this.Qhi.preConcat(this.CJ);
        }
        Qhi<com.bytedance.adsdk.lottie.ROR.ac, com.bytedance.adsdk.lottie.ROR.ac> qhi3 = this.Sf;
        if (qhi3 != null) {
            com.bytedance.adsdk.lottie.ROR.ac ROR3 = qhi3.ROR();
            if (ROR3.Qhi() != 1.0f || ROR3.cJ() != 1.0f) {
                this.Qhi.preScale(ROR3.Qhi(), ROR3.cJ());
            }
        }
        Qhi<PointF, PointF> qhi4 = this.Tgh;
        if (qhi4 != null && (((ROR = qhi4.ROR()) != null && ROR.x != 0.0f) || ROR.y != 0.0f)) {
            this.Qhi.preTranslate(-ROR.x, -ROR.y);
        }
        return this.Qhi;
    }

    private void fl() {
        for (int i = 0; i < 9; i++) {
            this.fl[i] = 0.0f;
        }
    }

    public Matrix cJ(float f2) {
        Qhi<?, PointF> qhi = this.ROR;
        PointF ROR = qhi == null ? null : qhi.ROR();
        Qhi<com.bytedance.adsdk.lottie.ROR.ac, com.bytedance.adsdk.lottie.ROR.ac> qhi2 = this.Sf;
        com.bytedance.adsdk.lottie.ROR.ac ROR2 = qhi2 == null ? null : qhi2.ROR();
        this.Qhi.reset();
        if (ROR != null) {
            this.Qhi.preTranslate(ROR.x * f2, ROR.y * f2);
        }
        if (ROR2 != null) {
            double d2 = f2;
            this.Qhi.preScale((float) Math.pow(ROR2.Qhi(), d2), (float) Math.pow(ROR2.cJ(), d2));
        }
        Qhi<Float, Float> qhi3 = this.hm;
        if (qhi3 != null) {
            float floatValue = qhi3.ROR().floatValue();
            Qhi<PointF, PointF> qhi4 = this.Tgh;
            PointF ROR3 = qhi4 != null ? qhi4.ROR() : null;
            this.Qhi.preRotate(floatValue * f2, ROR3 == null ? 0.0f : ROR3.x, ROR3 != null ? ROR3.y : 0.0f);
        }
        return this.Qhi;
    }
}
