package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import com.bytedance.adsdk.lottie.ac.cJ.MQ;
import java.util.List;
/* compiled from: EllipseContent.java */
/* loaded from: classes2.dex */
public class ROR implements iMK, zc, Qhi.InterfaceC0175Qhi {
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, PointF> CJ;
    private final Path Qhi = new Path();
    private final cJ ROR = new cJ();
    private boolean Sf;
    private final com.bytedance.adsdk.lottie.ac.cJ.cJ Tgh;
    private final com.bytedance.adsdk.lottie.hm ac;
    private final String cJ;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, PointF> fl;

    public ROR(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.cJ cJVar) {
        this.cJ = cJVar.Qhi();
        this.ac = hmVar;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<PointF, PointF> Qhi = cJVar.ac().Qhi();
        this.CJ = Qhi;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<PointF, PointF> Qhi2 = cJVar.cJ().Qhi();
        this.fl = Qhi2;
        this.Tgh = cJVar;
        qhi.Qhi(Qhi);
        qhi.Qhi(Qhi2);
        Qhi.Qhi(this);
        Qhi2.Qhi(this);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        cJ();
    }

    private void cJ() {
        this.Sf = false;
        this.ac.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
        for (int i = 0; i < list.size(); i++) {
            ac acVar = list.get(i);
            if (acVar instanceof EBS) {
                EBS ebs = (EBS) acVar;
                if (ebs.cJ() == MQ.Qhi.SIMULTANEOUSLY) {
                    this.ROR.Qhi(ebs);
                    ebs.Qhi(this);
                }
            }
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.iMK
    public Path CJ() {
        if (this.Sf) {
            return this.Qhi;
        }
        this.Qhi.reset();
        if (this.Tgh.fl()) {
            this.Sf = true;
            return this.Qhi;
        }
        PointF ROR = this.CJ.ROR();
        float f2 = ROR.x / 2.0f;
        float f3 = ROR.y / 2.0f;
        float f4 = f2 * 0.55228f;
        float f5 = 0.55228f * f3;
        this.Qhi.reset();
        if (this.Tgh.CJ()) {
            float f6 = -f3;
            this.Qhi.moveTo(0.0f, f6);
            float f7 = 0.0f - f4;
            float f8 = -f2;
            float f9 = 0.0f - f5;
            this.Qhi.cubicTo(f7, f6, f8, f9, f8, 0.0f);
            float f10 = f5 + 0.0f;
            this.Qhi.cubicTo(f8, f10, f7, f3, 0.0f, f3);
            float f11 = f4 + 0.0f;
            this.Qhi.cubicTo(f11, f3, f2, f10, f2, 0.0f);
            this.Qhi.cubicTo(f2, f9, f11, f6, 0.0f, f6);
        } else {
            float f12 = -f3;
            this.Qhi.moveTo(0.0f, f12);
            float f13 = f4 + 0.0f;
            float f14 = 0.0f - f5;
            this.Qhi.cubicTo(f13, f12, f2, f14, f2, 0.0f);
            float f15 = f5 + 0.0f;
            this.Qhi.cubicTo(f2, f15, f13, f3, 0.0f, f3);
            float f16 = 0.0f - f4;
            float f17 = -f2;
            this.Qhi.cubicTo(f16, f3, f17, f15, f17, 0.0f);
            this.Qhi.cubicTo(f17, f14, f16, f12, 0.0f, f12);
        }
        PointF ROR2 = this.fl.ROR();
        this.Qhi.offset(ROR2.x, ROR2.y);
        this.Qhi.close();
        this.ROR.Qhi(this.Qhi);
        this.Sf = true;
        return this.Qhi;
    }
}
