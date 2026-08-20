package com.bytedance.adsdk.lottie;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;
/* compiled from: PathInterpolatorApi14.java */
/* loaded from: classes2.dex */
class hpZ implements Interpolator {
    private final float[] Qhi;
    private final float[] cJ;

    hpZ(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = (int) (length / 0.002f);
        int i2 = i + 1;
        this.Qhi = new float[i2];
        this.cJ = new float[i2];
        float[] fArr = new float[2];
        for (int i3 = 0; i3 < i2; i3++) {
            pathMeasure.getPosTan((i3 * length) / i, fArr, null);
            this.Qhi[i3] = fArr[0];
            this.cJ[i3] = fArr[1];
        }
    }

    hpZ(float f2, float f3, float f4, float f5) {
        this(Qhi(f2, f3, f4, f5));
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (f2 <= 0.0f) {
            return 0.0f;
        }
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        int length = this.Qhi.length - 1;
        int i = 0;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f2 < this.Qhi[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.Qhi;
        float f3 = fArr[length];
        float f4 = fArr[i];
        float f5 = f3 - f4;
        if (f5 == 0.0f) {
            return this.cJ[i];
        }
        float[] fArr2 = this.cJ;
        float f6 = fArr2[i];
        return f6 + (((f2 - f4) / f5) * (fArr2[length] - f6));
    }

    private static Path Qhi(float f2, float f3, float f4, float f5) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f2, f3, f4, f5, 1.0f, 1.0f);
        return path;
    }
}
