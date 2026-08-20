package com.bytedance.adsdk.lottie.Tgh;
/* compiled from: MeanCalculator.java */
/* loaded from: classes2.dex */
public class fl {
    private float Qhi;
    private int cJ;

    public void Qhi(float f2) {
        float f3 = this.Qhi + f2;
        this.Qhi = f3;
        int i = this.cJ + 1;
        this.cJ = i;
        if (i == Integer.MAX_VALUE) {
            this.Qhi = f3 / 2.0f;
            this.cJ = i / 2;
        }
    }
}
