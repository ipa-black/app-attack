package com.bytedance.adsdk.lottie.Qhi.Qhi;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import com.bytedance.adsdk.lottie.ac.cJ.MQ;
import java.util.List;
/* compiled from: RectangleContent.java */
/* loaded from: classes2.dex */
public class hpZ implements iMK, zc, Qhi.InterfaceC0175Qhi {
    private final boolean CJ;
    private boolean Gm;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, PointF> ROR;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> Sf;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, PointF> Tgh;
    private final String ac;
    private final com.bytedance.adsdk.lottie.hm fl;
    private final Path Qhi = new Path();
    private final RectF cJ = new RectF();
    private final cJ hm = new cJ();
    private com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> WAv = null;

    public hpZ(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.zc zcVar) {
        this.ac = zcVar.Qhi();
        this.CJ = zcVar.fl();
        this.fl = hmVar;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<PointF, PointF> Qhi = zcVar.CJ().Qhi();
        this.Tgh = Qhi;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<PointF, PointF> Qhi2 = zcVar.ac().Qhi();
        this.ROR = Qhi2;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi3 = zcVar.cJ().Qhi();
        this.Sf = Qhi3;
        qhi.Qhi(Qhi);
        qhi.Qhi(Qhi2);
        qhi.Qhi(Qhi3);
        Qhi.Qhi(this);
        Qhi2.Qhi(this);
        Qhi3.Qhi(this);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        cJ();
    }

    private void cJ() {
        this.Gm = false;
        this.fl.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
        for (int i = 0; i < list.size(); i++) {
            ac acVar = list.get(i);
            if (acVar instanceof EBS) {
                EBS ebs = (EBS) acVar;
                if (ebs.cJ() == MQ.Qhi.SIMULTANEOUSLY) {
                    this.hm.Qhi(ebs);
                    ebs.Qhi(this);
                }
            }
            if (acVar instanceof kYc) {
                this.WAv = ((kYc) acVar).cJ();
            }
        }
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.iMK
    public Path CJ() {
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> qhi;
        if (this.Gm) {
            return this.Qhi;
        }
        this.Qhi.reset();
        if (this.CJ) {
            this.Gm = true;
            return this.Qhi;
        }
        PointF ROR = this.ROR.ROR();
        float f2 = ROR.x / 2.0f;
        float f3 = ROR.y / 2.0f;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> qhi2 = this.Sf;
        float hm = qhi2 == null ? 0.0f : ((com.bytedance.adsdk.lottie.Qhi.cJ.fl) qhi2).hm();
        if (hm == 0.0f && (qhi = this.WAv) != null) {
            hm = Math.min(qhi.ROR().floatValue(), Math.min(f2, f3));
        }
        float min = Math.min(f2, f3);
        if (hm > min) {
            hm = min;
        }
        PointF ROR2 = this.Tgh.ROR();
        this.Qhi.moveTo(ROR2.x + f2, (ROR2.y - f3) + hm);
        this.Qhi.lineTo(ROR2.x + f2, (ROR2.y + f3) - hm);
        int i = (hm > 0.0f ? 1 : (hm == 0.0f ? 0 : -1));
        if (i > 0) {
            float f4 = hm * 2.0f;
            this.cJ.set((ROR2.x + f2) - f4, (ROR2.y + f3) - f4, ROR2.x + f2, ROR2.y + f3);
            this.Qhi.arcTo(this.cJ, 0.0f, 90.0f, false);
        }
        this.Qhi.lineTo((ROR2.x - f2) + hm, ROR2.y + f3);
        if (i > 0) {
            float f5 = hm * 2.0f;
            this.cJ.set(ROR2.x - f2, (ROR2.y + f3) - f5, (ROR2.x - f2) + f5, ROR2.y + f3);
            this.Qhi.arcTo(this.cJ, 90.0f, 90.0f, false);
        }
        this.Qhi.lineTo(ROR2.x - f2, (ROR2.y - f3) + hm);
        if (i > 0) {
            float f6 = hm * 2.0f;
            this.cJ.set(ROR2.x - f2, ROR2.y - f3, (ROR2.x - f2) + f6, (ROR2.y - f3) + f6);
            this.Qhi.arcTo(this.cJ, 180.0f, 90.0f, false);
        }
        this.Qhi.lineTo((ROR2.x + f2) - hm, ROR2.y - f3);
        if (i > 0) {
            float f7 = hm * 2.0f;
            this.cJ.set((ROR2.x + f2) - f7, ROR2.y - f3, ROR2.x + f2, (ROR2.y - f3) + f7);
            this.Qhi.arcTo(this.cJ, 270.0f, 90.0f, false);
        }
        this.Qhi.close();
        this.hm.Qhi(this.Qhi);
        this.Gm = true;
        return this.Qhi;
    }
}
