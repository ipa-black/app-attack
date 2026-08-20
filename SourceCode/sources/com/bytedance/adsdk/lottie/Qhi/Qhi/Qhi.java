package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import com.bytedance.adsdk.lottie.ac.cJ.MQ;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BaseStrokeContent.java */
/* loaded from: classes2.dex */
public abstract class Qhi implements Tgh, zc, Qhi.InterfaceC0175Qhi {
    private final List<com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float>> ABk;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> Gm;
    private com.bytedance.adsdk.lottie.Qhi.cJ.ac HzH;
    protected final com.bytedance.adsdk.lottie.ac.ac.Qhi Qhi;
    private final com.bytedance.adsdk.lottie.hm Sf;
    private final float[] WAv;
    float ac;
    final Paint cJ;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> hpZ;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> iMK;
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> pA;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Integer> zc;
    private final PathMeasure CJ = new PathMeasure();
    private final Path fl = new Path();
    private final Path Tgh = new Path();
    private final RectF ROR = new RectF();
    private final List<C0174Qhi> hm = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, Paint.Cap cap, Paint.Join join, float f2, com.bytedance.adsdk.lottie.ac.Qhi.fl flVar, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar, List<com.bytedance.adsdk.lottie.ac.Qhi.cJ> list, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2) {
        com.bytedance.adsdk.lottie.Qhi.Qhi qhi2 = new com.bytedance.adsdk.lottie.Qhi.Qhi(1);
        this.cJ = qhi2;
        this.ac = 0.0f;
        this.Sf = hmVar;
        this.Qhi = qhi;
        qhi2.setStyle(Paint.Style.STROKE);
        qhi2.setStrokeCap(cap);
        qhi2.setStrokeJoin(join);
        qhi2.setStrokeMiter(f2);
        this.zc = flVar.Qhi();
        this.Gm = cJVar.Qhi();
        if (cJVar2 == null) {
            this.iMK = null;
        } else {
            this.iMK = cJVar2.Qhi();
        }
        this.ABk = new ArrayList(list.size());
        this.WAv = new float[list.size()];
        for (int i = 0; i < list.size(); i++) {
            this.ABk.add(list.get(i).Qhi());
        }
        qhi.Qhi(this.zc);
        qhi.Qhi(this.Gm);
        for (int i2 = 0; i2 < this.ABk.size(); i2++) {
            qhi.Qhi(this.ABk.get(i2));
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> qhi3 = this.iMK;
        if (qhi3 != null) {
            qhi.Qhi(qhi3);
        }
        this.zc.Qhi(this);
        this.Gm.Qhi(this);
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.ABk.get(i3).Qhi(this);
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> qhi4 = this.iMK;
        if (qhi4 != null) {
            qhi4.Qhi(this);
        }
        if (qhi.Tgh() != null) {
            com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi = qhi.Tgh().Qhi().Qhi();
            this.hpZ = Qhi;
            Qhi.Qhi(this);
            qhi.Qhi(this.hpZ);
        }
        if (qhi.ROR() != null) {
            this.HzH = new com.bytedance.adsdk.lottie.Qhi.cJ.ac(this, qhi, qhi.ROR());
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        this.Sf.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
        EBS ebs = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            ac acVar = list.get(size);
            if (acVar instanceof EBS) {
                EBS ebs2 = (EBS) acVar;
                if (ebs2.cJ() == MQ.Qhi.INDIVIDUALLY) {
                    ebs = ebs2;
                }
            }
        }
        if (ebs != null) {
            ebs.Qhi(this);
        }
        C0174Qhi c0174Qhi = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            ac acVar2 = list2.get(size2);
            if (acVar2 instanceof EBS) {
                EBS ebs3 = (EBS) acVar2;
                if (ebs3.cJ() == MQ.Qhi.INDIVIDUALLY) {
                    if (c0174Qhi != null) {
                        this.hm.add(c0174Qhi);
                    }
                    c0174Qhi = new C0174Qhi(ebs3);
                    ebs3.Qhi(this);
                }
            }
            if (acVar2 instanceof iMK) {
                if (c0174Qhi == null) {
                    c0174Qhi = new C0174Qhi(ebs);
                }
                c0174Qhi.Qhi.add((iMK) acVar2);
            }
        }
        if (c0174Qhi != null) {
            this.hm.add(c0174Qhi);
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(Canvas canvas, Matrix matrix, int i) {
        com.bytedance.adsdk.lottie.Tgh.Qhi("StrokeContent#draw");
        if (com.bytedance.adsdk.lottie.Tgh.ROR.cJ(matrix)) {
            com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#draw");
            return;
        }
        this.cJ.setAlpha(com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi((int) ((((i / 255.0f) * ((com.bytedance.adsdk.lottie.Qhi.cJ.ROR) this.zc).hm()) / 100.0f) * 255.0f), 0, 255));
        this.cJ.setStrokeWidth(((com.bytedance.adsdk.lottie.Qhi.cJ.fl) this.Gm).hm() * com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(matrix));
        if (this.cJ.getStrokeWidth() <= 0.0f) {
            com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#draw");
            return;
        }
        Qhi(matrix);
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<ColorFilter, ColorFilter> qhi = this.pA;
        if (qhi != null) {
            this.cJ.setColorFilter(qhi.ROR());
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> qhi2 = this.hpZ;
        if (qhi2 != null) {
            float floatValue = qhi2.ROR().floatValue();
            if (floatValue == 0.0f) {
                this.cJ.setMaskFilter(null);
            } else if (floatValue != this.ac) {
                this.cJ.setMaskFilter(this.Qhi.cJ(floatValue));
            }
            this.ac = floatValue;
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.ac acVar = this.HzH;
        if (acVar != null) {
            acVar.Qhi(this.cJ);
        }
        for (int i2 = 0; i2 < this.hm.size(); i2++) {
            C0174Qhi c0174Qhi = this.hm.get(i2);
            if (c0174Qhi.cJ != null) {
                Qhi(canvas, c0174Qhi, matrix);
            } else {
                com.bytedance.adsdk.lottie.Tgh.Qhi("StrokeContent#buildPath");
                this.fl.reset();
                for (int size = c0174Qhi.Qhi.size() - 1; size >= 0; size--) {
                    this.fl.addPath(((iMK) c0174Qhi.Qhi.get(size)).CJ(), matrix);
                }
                com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#buildPath");
                com.bytedance.adsdk.lottie.Tgh.Qhi("StrokeContent#drawPath");
                canvas.drawPath(this.fl, this.cJ);
                com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#drawPath");
            }
        }
        com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#draw");
    }

    private void Qhi(Canvas canvas, C0174Qhi c0174Qhi, Matrix matrix) {
        float f2;
        float f3;
        com.bytedance.adsdk.lottie.Tgh.Qhi("StrokeContent#applyTrimPath");
        if (c0174Qhi.cJ == null) {
            com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#applyTrimPath");
            return;
        }
        this.fl.reset();
        for (int size = c0174Qhi.Qhi.size() - 1; size >= 0; size--) {
            this.fl.addPath(((iMK) c0174Qhi.Qhi.get(size)).CJ(), matrix);
        }
        float floatValue = c0174Qhi.cJ.ac().ROR().floatValue() / 100.0f;
        float floatValue2 = c0174Qhi.cJ.CJ().ROR().floatValue() / 100.0f;
        float floatValue3 = c0174Qhi.cJ.fl().ROR().floatValue() / 360.0f;
        if (floatValue < 0.01f && floatValue2 > 0.99f) {
            canvas.drawPath(this.fl, this.cJ);
            com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#applyTrimPath");
            return;
        }
        this.CJ.setPath(this.fl, false);
        float length = this.CJ.getLength();
        while (this.CJ.nextContour()) {
            length += this.CJ.getLength();
        }
        float f4 = floatValue3 * length;
        float f5 = (floatValue * length) + f4;
        float min = Math.min((floatValue2 * length) + f4, (f5 + length) - 1.0f);
        float f6 = 0.0f;
        for (int size2 = c0174Qhi.Qhi.size() - 1; size2 >= 0; size2--) {
            this.Tgh.set(((iMK) c0174Qhi.Qhi.get(size2)).CJ());
            this.Tgh.transform(matrix);
            this.CJ.setPath(this.Tgh, false);
            float length2 = this.CJ.getLength();
            if (min > length) {
                float f7 = min - length;
                if (f7 < f6 + length2 && f6 < f7) {
                    f2 = f5 > length ? (f5 - length) / length2 : 0.0f;
                    f3 = Math.min(f7 / length2, 1.0f);
                    com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(this.Tgh, f2, f3, 0.0f);
                    canvas.drawPath(this.Tgh, this.cJ);
                    f6 += length2;
                }
            }
            float f8 = f6 + length2;
            if (f8 >= f5 && f6 <= min) {
                if (f8 <= min && f5 < f6) {
                    canvas.drawPath(this.Tgh, this.cJ);
                } else {
                    f2 = f5 < f6 ? 0.0f : (f5 - f6) / length2;
                    f3 = min > f8 ? 1.0f : (min - f6) / length2;
                    com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(this.Tgh, f2, f3, 0.0f);
                    canvas.drawPath(this.Tgh, this.cJ);
                }
            }
            f6 += length2;
        }
        com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#applyTrimPath");
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.Tgh
    public void Qhi(RectF rectF, Matrix matrix, boolean z) {
        com.bytedance.adsdk.lottie.Tgh.Qhi("StrokeContent#getBounds");
        this.fl.reset();
        for (int i = 0; i < this.hm.size(); i++) {
            C0174Qhi c0174Qhi = this.hm.get(i);
            for (int i2 = 0; i2 < c0174Qhi.Qhi.size(); i2++) {
                this.fl.addPath(((iMK) c0174Qhi.Qhi.get(i2)).CJ(), matrix);
            }
        }
        this.fl.computeBounds(this.ROR, false);
        float hm = ((com.bytedance.adsdk.lottie.Qhi.cJ.fl) this.Gm).hm();
        RectF rectF2 = this.ROR;
        float f2 = hm / 2.0f;
        rectF2.set(rectF2.left - f2, this.ROR.top - f2, this.ROR.right + f2, this.ROR.bottom + f2);
        rectF.set(this.ROR);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#getBounds");
    }

    private void Qhi(Matrix matrix) {
        com.bytedance.adsdk.lottie.Tgh.Qhi("StrokeContent#applyDashPattern");
        if (this.ABk.isEmpty()) {
            com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#applyDashPattern");
            return;
        }
        float Qhi = com.bytedance.adsdk.lottie.Tgh.ROR.Qhi(matrix);
        for (int i = 0; i < this.ABk.size(); i++) {
            this.WAv[i] = this.ABk.get(i).ROR().floatValue();
            if (i % 2 == 0) {
                float[] fArr = this.WAv;
                if (fArr[i] < 1.0f) {
                    fArr[i] = 1.0f;
                }
            } else {
                float[] fArr2 = this.WAv;
                if (fArr2[i] < 0.1f) {
                    fArr2[i] = 0.1f;
                }
            }
            float[] fArr3 = this.WAv;
            fArr3[i] = fArr3[i] * Qhi;
        }
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> qhi = this.iMK;
        this.cJ.setPathEffect(new DashPathEffect(this.WAv, qhi == null ? 0.0f : Qhi * qhi.ROR().floatValue()));
        com.bytedance.adsdk.lottie.Tgh.cJ("StrokeContent#applyDashPattern");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseStrokeContent.java */
    /* renamed from: com.bytedance.adsdk.lottie.Qhi.Qhi.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0174Qhi {
        private final List<iMK> Qhi;
        private final EBS cJ;

        private C0174Qhi(EBS ebs) {
            this.Qhi = new ArrayList();
            this.cJ = ebs;
        }
    }
}
