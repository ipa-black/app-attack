package com.bytedance.adsdk.lottie.ac.Qhi;

import java.util.Arrays;
import java.util.List;
/* compiled from: AnimatableGradientColorValue.java */
/* loaded from: classes2.dex */
public class ac extends pA<com.bytedance.adsdk.lottie.ac.cJ.fl, com.bytedance.adsdk.lottie.ac.cJ.fl> {
    @Override // com.bytedance.adsdk.lottie.ac.Qhi.pA, com.bytedance.adsdk.lottie.ac.Qhi.iMK
    public /* bridge */ /* synthetic */ List ac() {
        return super.ac();
    }

    @Override // com.bytedance.adsdk.lottie.ac.Qhi.pA, com.bytedance.adsdk.lottie.ac.Qhi.iMK
    public /* bridge */ /* synthetic */ boolean cJ() {
        return super.cJ();
    }

    @Override // com.bytedance.adsdk.lottie.ac.Qhi.pA
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public ac(List<com.bytedance.adsdk.lottie.ROR.Qhi<com.bytedance.adsdk.lottie.ac.cJ.fl>> list) {
        super(Qhi(list));
    }

    private static List<com.bytedance.adsdk.lottie.ROR.Qhi<com.bytedance.adsdk.lottie.ac.cJ.fl>> Qhi(List<com.bytedance.adsdk.lottie.ROR.Qhi<com.bytedance.adsdk.lottie.ac.cJ.fl>> list) {
        for (int i = 0; i < list.size(); i++) {
            list.set(i, Qhi(list.get(i)));
        }
        return list;
    }

    private static com.bytedance.adsdk.lottie.ROR.Qhi<com.bytedance.adsdk.lottie.ac.cJ.fl> Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<com.bytedance.adsdk.lottie.ac.cJ.fl> qhi) {
        com.bytedance.adsdk.lottie.ac.cJ.fl flVar = qhi.Qhi;
        com.bytedance.adsdk.lottie.ac.cJ.fl flVar2 = qhi.cJ;
        if (flVar == null || flVar2 == null || flVar.Qhi().length == flVar2.Qhi().length) {
            return qhi;
        }
        float[] Qhi = Qhi(flVar.Qhi(), flVar2.Qhi());
        return qhi.Qhi(flVar.Qhi(Qhi), flVar2.Qhi(Qhi));
    }

    static float[] Qhi(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f2 = Float.NaN;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            float f3 = fArr3[i2];
            if (f3 != f2) {
                fArr3[i] = f3;
                i++;
                f2 = fArr3[i2];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i);
    }

    @Override // com.bytedance.adsdk.lottie.ac.Qhi.iMK
    public com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<com.bytedance.adsdk.lottie.ac.cJ.fl, com.bytedance.adsdk.lottie.ac.cJ.fl> Qhi() {
        return new com.bytedance.adsdk.lottie.Qhi.cJ.Tgh(this.Qhi);
    }
}
