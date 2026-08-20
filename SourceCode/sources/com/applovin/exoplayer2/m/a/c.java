package com.applovin.exoplayer2.m.a;

import android.opengl.Matrix;
import com.applovin.exoplayer2.l.af;
/* loaded from: classes.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private final af<float[]> f3888a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3889b;

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float f2 = fArr2[10];
        float f3 = fArr2[8];
        float sqrt = (float) Math.sqrt((f2 * f2) + (f3 * f3));
        float f4 = fArr2[10];
        fArr[0] = f4 / sqrt;
        float f5 = fArr2[8];
        fArr[2] = f5 / sqrt;
        fArr[8] = (-f5) / sqrt;
        fArr[10] = f4 / sqrt;
    }

    public void a() {
        this.f3888a.a();
        this.f3889b = false;
    }

    public void a(long j, float[] fArr) {
        this.f3888a.a(j, (long) fArr);
    }
}
