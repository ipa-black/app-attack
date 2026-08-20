package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import com.bytedance.adsdk.lottie.ac.cJ.Gm;
import com.bytedance.adsdk.lottie.ac.cJ.MQ;
import java.util.List;
/* compiled from: PolystarContent.java */
/* loaded from: classes2.dex */
public class pA implements iMK, zc, Qhi.InterfaceC0175Qhi {
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> ABk;
    private final Gm.Qhi CJ;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> Gm;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> ROR;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, PointF> Sf;
    private final boolean Tgh;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> WAv;
    private final com.bytedance.adsdk.lottie.hm ac;
    private final String cJ;
    private final boolean fl;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> hm;
    private boolean pA;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> zc;
    private final Path Qhi = new Path();
    private final cJ iMK = new cJ();

    public pA(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.Gm gm) {
        this.ac = hmVar;
        this.cJ = gm.Qhi();
        Gm.Qhi cJ = gm.cJ();
        this.CJ = cJ;
        this.fl = gm.WAv();
        this.Tgh = gm.Gm();
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi = gm.ac().Qhi();
        this.ROR = Qhi;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<PointF, PointF> Qhi2 = gm.CJ().Qhi();
        this.Sf = Qhi2;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi3 = gm.fl().Qhi();
        this.hm = Qhi3;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi4 = gm.ROR().Qhi();
        this.Gm = Qhi4;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi5 = gm.hm().Qhi();
        this.ABk = Qhi5;
        if (cJ == Gm.Qhi.STAR) {
            this.WAv = gm.Tgh().Qhi();
            this.zc = gm.Sf().Qhi();
        } else {
            this.WAv = null;
            this.zc = null;
        }
        qhi.Qhi(Qhi);
        qhi.Qhi(Qhi2);
        qhi.Qhi(Qhi3);
        qhi.Qhi(Qhi4);
        qhi.Qhi(Qhi5);
        if (cJ == Gm.Qhi.STAR) {
            qhi.Qhi(this.WAv);
            qhi.Qhi(this.zc);
        }
        Qhi.Qhi(this);
        Qhi2.Qhi(this);
        Qhi3.Qhi(this);
        Qhi4.Qhi(this);
        Qhi5.Qhi(this);
        if (cJ == Gm.Qhi.STAR) {
            this.WAv.Qhi(this);
            this.zc.Qhi(this);
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        cJ();
    }

    private void cJ() {
        this.pA = false;
        this.ac.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
        for (int i = 0; i < list.size(); i++) {
            ac acVar = list.get(i);
            if (acVar instanceof EBS) {
                EBS ebs = (EBS) acVar;
                if (ebs.cJ() == MQ.Qhi.SIMULTANEOUSLY) {
                    this.iMK.Qhi(ebs);
                    ebs.Qhi(this);
                }
            }
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.iMK
    public Path CJ() {
        if (this.pA) {
            return this.Qhi;
        }
        this.Qhi.reset();
        if (this.fl) {
            this.pA = true;
            return this.Qhi;
        }
        int i = AnonymousClass1.Qhi[this.CJ.ordinal()];
        if (i == 1) {
            ac();
        } else if (i == 2) {
            fl();
        }
        this.Qhi.close();
        this.iMK.Qhi(this.Qhi);
        this.pA = true;
        return this.Qhi;
    }

    /* compiled from: PolystarContent.java */
    /* renamed from: com.bytedance.adsdk.lottie.Qhi.Qhi.pA$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Qhi;

        static {
            int[] iArr = new int[Gm.Qhi.values().length];
            Qhi = iArr;
            try {
                iArr[Gm.Qhi.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Qhi[Gm.Qhi.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void ac() {
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> qhi;
        int i;
        float f2;
        float f3;
        double d2;
        float f4;
        float f5;
        float f6;
        float f7;
        double d3;
        float f8;
        float f9;
        float f10;
        double d4;
        float floatValue = this.ROR.ROR().floatValue();
        double radians = Math.toRadians((this.hm == null ? 0.0d : qhi.ROR().floatValue()) - 90.0d);
        double d5 = floatValue;
        float f11 = (float) (6.283185307179586d / d5);
        if (this.Tgh) {
            f11 *= -1.0f;
        }
        float f12 = f11 / 2.0f;
        float f13 = floatValue - ((int) floatValue);
        int i2 = (f13 > 0.0f ? 1 : (f13 == 0.0f ? 0 : -1));
        if (i2 != 0) {
            radians += (1.0f - f13) * f12;
        }
        float floatValue2 = this.Gm.ROR().floatValue();
        float floatValue3 = this.WAv.ROR().floatValue();
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> qhi2 = this.zc;
        float floatValue4 = qhi2 != null ? qhi2.ROR().floatValue() / 100.0f : 0.0f;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> qhi3 = this.ABk;
        float floatValue5 = qhi3 != null ? qhi3.ROR().floatValue() / 100.0f : 0.0f;
        if (i2 != 0) {
            f5 = ((floatValue2 - floatValue3) * f13) + floatValue3;
            i = i2;
            double d6 = f5;
            float cos = (float) (d6 * Math.cos(radians));
            f4 = (float) (d6 * Math.sin(radians));
            this.Qhi.moveTo(cos, f4);
            d2 = radians + ((f11 * f13) / 2.0f);
            f2 = cos;
            f3 = f12;
        } else {
            i = i2;
            double d7 = floatValue2;
            float cos2 = (float) (Math.cos(radians) * d7);
            float sin = (float) (d7 * Math.sin(radians));
            this.Qhi.moveTo(cos2, sin);
            f2 = cos2;
            f3 = f12;
            d2 = radians + f3;
            f4 = sin;
            f5 = 0.0f;
        }
        double ceil = Math.ceil(d5) * 2.0d;
        int i3 = 0;
        float f14 = f3;
        float f15 = f2;
        boolean z = false;
        while (true) {
            double d8 = i3;
            if (d8 < ceil) {
                float f16 = z ? floatValue2 : floatValue3;
                int i4 = (f5 > 0.0f ? 1 : (f5 == 0.0f ? 0 : -1));
                if (i4 == 0 || d8 != ceil - 2.0d) {
                    f6 = f11;
                    f7 = f14;
                } else {
                    f6 = f11;
                    f7 = (f11 * f13) / 2.0f;
                }
                if (i4 == 0 || d8 != ceil - 1.0d) {
                    d3 = d8;
                    f8 = f5;
                    f5 = f16;
                } else {
                    d3 = d8;
                    f8 = f5;
                }
                double d9 = f5;
                double d10 = ceil;
                float cos3 = (float) (d9 * Math.cos(d2));
                float sin2 = (float) (d9 * Math.sin(d2));
                if (floatValue4 == 0.0f && floatValue5 == 0.0f) {
                    this.Qhi.lineTo(cos3, sin2);
                    d4 = d2;
                    f9 = floatValue4;
                    f10 = floatValue5;
                } else {
                    f9 = floatValue4;
                    double atan2 = (float) (Math.atan2(f4, f15) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan2);
                    float sin3 = (float) Math.sin(atan2);
                    f10 = floatValue5;
                    d4 = d2;
                    double atan22 = (float) (Math.atan2(sin2, cos3) - 1.5707963267948966d);
                    float cos5 = (float) Math.cos(atan22);
                    float sin4 = (float) Math.sin(atan22);
                    float f17 = z ? f9 : f10;
                    float f18 = z ? f10 : f9;
                    float f19 = (z ? floatValue3 : floatValue2) * f17 * 0.47829f;
                    float f20 = cos4 * f19;
                    float f21 = f19 * sin3;
                    float f22 = (z ? floatValue2 : floatValue3) * f18 * 0.47829f;
                    float f23 = cos5 * f22;
                    float f24 = f22 * sin4;
                    if (i != 0) {
                        if (i3 == 0) {
                            f20 *= f13;
                            f21 *= f13;
                        } else if (d3 == d10 - 1.0d) {
                            f23 *= f13;
                            f24 *= f13;
                        }
                    }
                    this.Qhi.cubicTo(f15 - f20, f4 - f21, cos3 + f23, sin2 + f24, cos3, sin2);
                }
                d2 = d4 + f7;
                z = !z;
                i3++;
                f15 = cos3;
                f4 = sin2;
                floatValue5 = f10;
                floatValue4 = f9;
                f5 = f8;
                f11 = f6;
                ceil = d10;
            } else {
                PointF ROR = this.Sf.ROR();
                this.Qhi.offset(ROR.x, ROR.y);
                this.Qhi.close();
                return;
            }
        }
    }

    private void fl() {
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> qhi;
        int i;
        double d2;
        double d3;
        double d4;
        int floor = (int) Math.floor(this.ROR.ROR().floatValue());
        double radians = Math.toRadians((this.hm == null ? 0.0d : qhi.ROR().floatValue()) - 90.0d);
        double d5 = floor;
        float floatValue = this.ABk.ROR().floatValue() / 100.0f;
        float floatValue2 = this.Gm.ROR().floatValue();
        double d6 = floatValue2;
        float cos = (float) (Math.cos(radians) * d6);
        float sin = (float) (Math.sin(radians) * d6);
        this.Qhi.moveTo(cos, sin);
        double d7 = (float) (6.283185307179586d / d5);
        double d8 = radians + d7;
        double ceil = Math.ceil(d5);
        int i2 = 0;
        while (i2 < ceil) {
            float cos2 = (float) (Math.cos(d8) * d6);
            double d9 = ceil;
            float sin2 = (float) (d6 * Math.sin(d8));
            if (floatValue != 0.0f) {
                d3 = d6;
                i = i2;
                d2 = d8;
                double atan2 = (float) (Math.atan2(sin, cos) - 1.5707963267948966d);
                float cos3 = (float) Math.cos(atan2);
                d4 = d7;
                double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                float f2 = floatValue2 * floatValue * 0.25f;
                this.Qhi.cubicTo(cos - (cos3 * f2), sin - (((float) Math.sin(atan2)) * f2), cos2 + (((float) Math.cos(atan22)) * f2), sin2 + (f2 * ((float) Math.sin(atan22))), cos2, sin2);
            } else {
                i = i2;
                d2 = d8;
                d3 = d6;
                d4 = d7;
                this.Qhi.lineTo(cos2, sin2);
            }
            d8 = d2 + d4;
            i2 = i + 1;
            sin = sin2;
            cos = cos2;
            ceil = d9;
            d6 = d3;
            d7 = d4;
        }
        PointF ROR = this.Sf.ROR();
        this.Qhi.offset(ROR.x, ROR.y);
        this.Qhi.close();
    }
}
