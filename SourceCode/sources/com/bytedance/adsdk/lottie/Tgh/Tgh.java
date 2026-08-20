package com.bytedance.adsdk.lottie.Tgh;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.adsdk.lottie.ac.cJ.pA;
/* compiled from: MiscUtils.java */
/* loaded from: classes2.dex */
public class Tgh {
    private static final PointF Qhi = new PointF();

    public static float Qhi(float f2, float f3, float f4) {
        return f2 + (f4 * (f3 - f2));
    }

    public static int Qhi(int i, int i2, float f2) {
        return (int) (i + (f2 * (i2 - i)));
    }

    public static boolean ac(float f2, float f3, float f4) {
        return f2 >= f3 && f2 <= f4;
    }

    public static PointF Qhi(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static void Qhi(pA pAVar, Path path) {
        path.reset();
        PointF Qhi2 = pAVar.Qhi();
        path.moveTo(Qhi2.x, Qhi2.y);
        Qhi.set(Qhi2.x, Qhi2.y);
        for (int i = 0; i < pAVar.ac().size(); i++) {
            com.bytedance.adsdk.lottie.ac.Qhi qhi = pAVar.ac().get(i);
            PointF Qhi3 = qhi.Qhi();
            PointF cJ = qhi.cJ();
            PointF ac = qhi.ac();
            PointF pointF = Qhi;
            if (Qhi3.equals(pointF) && cJ.equals(ac)) {
                path.lineTo(ac.x, ac.y);
            } else {
                path.cubicTo(Qhi3.x, Qhi3.y, cJ.x, cJ.y, ac.x, ac.y);
            }
            pointF.set(ac.x, ac.y);
        }
        if (pAVar.cJ()) {
            path.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int Qhi(float f2, float f3) {
        return Qhi((int) f2, (int) f3);
    }

    private static int Qhi(int i, int i2) {
        return i - (i2 * cJ(i, i2));
    }

    private static int cJ(int i, int i2) {
        int i3 = i / i2;
        return (((i ^ i2) >= 0) || i % i2 == 0) ? i3 : i3 - 1;
    }

    public static int Qhi(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    public static float cJ(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f4, f2));
    }
}
