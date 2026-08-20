package com.bytedance.adsdk.lottie.ac.cJ;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ShapeData.java */
/* loaded from: classes2.dex */
public class pA {
    private final List<com.bytedance.adsdk.lottie.ac.Qhi> Qhi;
    private boolean ac;
    private PointF cJ;

    public pA(PointF pointF, boolean z, List<com.bytedance.adsdk.lottie.ac.Qhi> list) {
        this.cJ = pointF;
        this.ac = z;
        this.Qhi = new ArrayList(list);
    }

    public pA() {
        this.Qhi = new ArrayList();
    }

    public void Qhi(float f2, float f3) {
        if (this.cJ == null) {
            this.cJ = new PointF();
        }
        this.cJ.set(f2, f3);
    }

    public PointF Qhi() {
        return this.cJ;
    }

    public void Qhi(boolean z) {
        this.ac = z;
    }

    public boolean cJ() {
        return this.ac;
    }

    public List<com.bytedance.adsdk.lottie.ac.Qhi> ac() {
        return this.Qhi;
    }

    public void Qhi(pA pAVar, pA pAVar2, float f2) {
        if (this.cJ == null) {
            this.cJ = new PointF();
        }
        this.ac = pAVar.cJ() || pAVar2.cJ();
        if (pAVar.ac().size() != pAVar2.ac().size()) {
            pAVar.ac().size();
            pAVar2.ac().size();
        }
        int min = Math.min(pAVar.ac().size(), pAVar2.ac().size());
        if (this.Qhi.size() < min) {
            for (int size = this.Qhi.size(); size < min; size++) {
                this.Qhi.add(new com.bytedance.adsdk.lottie.ac.Qhi());
            }
        } else if (this.Qhi.size() > min) {
            for (int size2 = this.Qhi.size() - 1; size2 >= min; size2--) {
                List<com.bytedance.adsdk.lottie.ac.Qhi> list = this.Qhi;
                list.remove(list.size() - 1);
            }
        }
        PointF Qhi = pAVar.Qhi();
        PointF Qhi2 = pAVar2.Qhi();
        Qhi(com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(Qhi.x, Qhi2.x, f2), com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(Qhi.y, Qhi2.y, f2));
        for (int size3 = this.Qhi.size() - 1; size3 >= 0; size3--) {
            com.bytedance.adsdk.lottie.ac.Qhi qhi = pAVar.ac().get(size3);
            com.bytedance.adsdk.lottie.ac.Qhi qhi2 = pAVar2.ac().get(size3);
            PointF Qhi3 = qhi.Qhi();
            PointF cJ = qhi.cJ();
            PointF ac = qhi.ac();
            PointF Qhi4 = qhi2.Qhi();
            PointF cJ2 = qhi2.cJ();
            PointF ac2 = qhi2.ac();
            this.Qhi.get(size3).Qhi(com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(Qhi3.x, Qhi4.x, f2), com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(Qhi3.y, Qhi4.y, f2));
            this.Qhi.get(size3).cJ(com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(cJ.x, cJ2.x, f2), com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(cJ.y, cJ2.y, f2));
            this.Qhi.get(size3).ac(com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(ac.x, ac2.x, f2), com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(ac.y, ac2.y, f2));
        }
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.Qhi.size() + "closed=" + this.ac + '}';
    }
}
