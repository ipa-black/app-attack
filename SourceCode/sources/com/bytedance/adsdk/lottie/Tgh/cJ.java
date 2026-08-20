package com.bytedance.adsdk.lottie.Tgh;
/* compiled from: GammaEvaluator.java */
/* loaded from: classes2.dex */
public class cJ {
    private static float Qhi(float f2) {
        return f2 <= 0.0031308f ? f2 * 12.92f : (float) ((Math.pow(f2, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    private static float cJ(float f2) {
        return f2 <= 0.04045f ? f2 / 12.92f : (float) Math.pow((f2 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static int Qhi(float f2, int i, int i2) {
        if (i == i2) {
            return i;
        }
        float f3 = ((i >> 24) & 255) / 255.0f;
        float cJ = cJ(((i >> 16) & 255) / 255.0f);
        float cJ2 = cJ(((i >> 8) & 255) / 255.0f);
        float cJ3 = cJ((i & 255) / 255.0f);
        float cJ4 = cJ(((i2 >> 16) & 255) / 255.0f);
        float cJ5 = cJ(((i2 >> 8) & 255) / 255.0f);
        float cJ6 = cJ3 + (f2 * (cJ((i2 & 255) / 255.0f) - cJ3));
        return (Math.round(Qhi(cJ + ((cJ4 - cJ) * f2)) * 255.0f) << 16) | (Math.round((f3 + (((((i2 >> 24) & 255) / 255.0f) - f3) * f2)) * 255.0f) << 24) | (Math.round(Qhi(cJ2 + ((cJ5 - cJ2) * f2)) * 255.0f) << 8) | Math.round(Qhi(cJ6) * 255.0f);
    }
}
