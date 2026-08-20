package com.bytedance.adsdk.lottie.ac.cJ;

import java.util.Arrays;
/* compiled from: GradientColor.java */
/* loaded from: classes2.dex */
public class fl {
    private final float[] Qhi;
    private final int[] cJ;

    public fl(float[] fArr, int[] iArr) {
        this.Qhi = fArr;
        this.cJ = iArr;
    }

    public float[] Qhi() {
        return this.Qhi;
    }

    public int[] cJ() {
        return this.cJ;
    }

    public int ac() {
        return this.cJ.length;
    }

    public void Qhi(fl flVar, fl flVar2, float f2) {
        if (flVar.cJ.length != flVar2.cJ.length) {
            throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + flVar.cJ.length + " vs " + flVar2.cJ.length + ")");
        }
        for (int i = 0; i < flVar.cJ.length; i++) {
            this.Qhi[i] = com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(flVar.Qhi[i], flVar2.Qhi[i], f2);
            this.cJ[i] = com.bytedance.adsdk.lottie.Tgh.cJ.Qhi(f2, flVar.cJ[i], flVar2.cJ[i]);
        }
    }

    public fl Qhi(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            iArr[i] = Qhi(fArr[i]);
        }
        return new fl(fArr, iArr);
    }

    private int Qhi(float f2) {
        int binarySearch = Arrays.binarySearch(this.Qhi, f2);
        if (binarySearch >= 0) {
            return this.cJ[binarySearch];
        }
        int i = -(binarySearch + 1);
        if (i == 0) {
            return this.cJ[0];
        }
        int[] iArr = this.cJ;
        if (i == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.Qhi;
        int i2 = i - 1;
        float f3 = fArr[i2];
        return com.bytedance.adsdk.lottie.Tgh.cJ.Qhi((f2 - f3) / (fArr[i] - f3), iArr[i2], iArr[i]);
    }
}
