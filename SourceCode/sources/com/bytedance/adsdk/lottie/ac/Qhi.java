package com.bytedance.adsdk.lottie.ac;

import android.graphics.PointF;
/* compiled from: CubicCurveData.java */
/* loaded from: classes2.dex */
public class Qhi {
    private final PointF Qhi;
    private final PointF ac;
    private final PointF cJ;

    public Qhi() {
        this.Qhi = new PointF();
        this.cJ = new PointF();
        this.ac = new PointF();
    }

    public Qhi(PointF pointF, PointF pointF2, PointF pointF3) {
        this.Qhi = pointF;
        this.cJ = pointF2;
        this.ac = pointF3;
    }

    public void Qhi(float f2, float f3) {
        this.Qhi.set(f2, f3);
    }

    public PointF Qhi() {
        return this.Qhi;
    }

    public void cJ(float f2, float f3) {
        this.cJ.set(f2, f3);
    }

    public PointF cJ() {
        return this.cJ;
    }

    public void ac(float f2, float f3) {
        this.ac.set(f2, f3);
    }

    public PointF ac() {
        return this.ac;
    }

    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.ac.x), Float.valueOf(this.ac.y), Float.valueOf(this.Qhi.x), Float.valueOf(this.Qhi.y), Float.valueOf(this.cJ.x), Float.valueOf(this.cJ.y));
    }
}
