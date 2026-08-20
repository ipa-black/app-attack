package com.bytedance.adsdk.lottie.ROR;
/* compiled from: ScaleXY.java */
/* loaded from: classes2.dex */
public class ac {
    private float Qhi;
    private float cJ;

    public ac(float f2, float f3) {
        this.Qhi = f2;
        this.cJ = f3;
    }

    public ac() {
        this(1.0f, 1.0f);
    }

    public float Qhi() {
        return this.Qhi;
    }

    public float cJ() {
        return this.cJ;
    }

    public void Qhi(float f2, float f3) {
        this.Qhi = f2;
        this.cJ = f3;
    }

    public boolean cJ(float f2, float f3) {
        return this.Qhi == f2 && this.cJ == f3;
    }

    public String toString() {
        return Qhi() + "x" + cJ();
    }
}
