package com.bytedance.sdk.openadsdk.core.nativeexpress.Qhi;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import android.view.Window;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: DynamicViewUtils.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static Pair<Float, Float> Qhi(Window window, int i) {
        View decorView = window.getDecorView();
        float[] fArr = {decorView.getWidth() - (decorView.getPaddingLeft() * 2), decorView.getHeight() - (decorView.getPaddingTop() * 2)};
        fArr[0] = zn.ac(window.getContext(), fArr[0]);
        float ac = zn.ac(window.getContext(), fArr[1]);
        fArr[1] = ac;
        if (fArr[0] < 10.0f || ac < 10.0f) {
            fArr = Qhi(window.getContext(), zn.ac(window.getContext(), zn.Qhi()), i);
        }
        float max = Math.max(fArr[0], fArr[1]);
        float min = Math.min(fArr[0], fArr[1]);
        if (i == 1) {
            fArr[0] = min;
            fArr[1] = max;
        } else {
            fArr[0] = max;
            fArr[1] = min;
        }
        return new Pair<>(Float.valueOf(fArr[0]), Float.valueOf(fArr[1]));
    }

    private static float[] Qhi(Context context, int i, int i2) {
        float Qhi = Qhi(context);
        float cJ = cJ(context);
        if ((i2 == 1) != (Qhi > cJ)) {
            float f2 = Qhi + cJ;
            cJ = f2 - cJ;
            Qhi = f2 - cJ;
        }
        if (i2 == 1) {
            Qhi -= i;
        } else {
            cJ -= i;
        }
        return new float[]{cJ, Qhi};
    }

    public static float Qhi(Context context) {
        return zn.ac(context, zn.hm(context));
    }

    public static float cJ(Context context) {
        return zn.ac(context, zn.WAv(context));
    }
}
