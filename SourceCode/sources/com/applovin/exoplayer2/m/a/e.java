package com.applovin.exoplayer2.m.a;
/* loaded from: classes.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    public final a f3897a;

    /* renamed from: b  reason: collision with root package name */
    public final a f3898b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3899c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f3900d;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final b[] f3901a;

        public a(b... bVarArr) {
            this.f3901a = bVarArr;
        }

        public int a() {
            return this.f3901a.length;
        }

        public b a(int i) {
            return this.f3901a[i];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3902a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3903b;

        /* renamed from: c  reason: collision with root package name */
        public final float[] f3904c;

        /* renamed from: d  reason: collision with root package name */
        public final float[] f3905d;

        public b(int i, float[] fArr, float[] fArr2, int i2) {
            this.f3902a = i;
            com.applovin.exoplayer2.l.a.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f3904c = fArr;
            this.f3905d = fArr2;
            this.f3903b = i2;
        }
    }

    public e(a aVar, int i) {
        this(aVar, aVar, i);
    }

    public e(a aVar, a aVar2, int i) {
        this.f3897a = aVar;
        this.f3898b = aVar2;
        this.f3899c = i;
        this.f3900d = aVar == aVar2;
    }

    public static e a(float f2, int i, int i2, float f3, float f4, int i3) {
        int i4;
        float f5;
        int i5;
        int i6;
        int i7;
        float[] fArr;
        int i8;
        int i9 = i;
        int i10 = i2;
        com.applovin.exoplayer2.l.a.a(f2 > 0.0f);
        com.applovin.exoplayer2.l.a.a(i9 >= 1);
        com.applovin.exoplayer2.l.a.a(i10 >= 1);
        com.applovin.exoplayer2.l.a.a(f3 > 0.0f && f3 <= 180.0f);
        com.applovin.exoplayer2.l.a.a(f4 > 0.0f && f4 <= 360.0f);
        float radians = (float) Math.toRadians(f3);
        float radians2 = (float) Math.toRadians(f4);
        float f6 = radians / i9;
        float f7 = radians2 / i10;
        int i11 = i10 + 1;
        int i12 = ((i11 * 2) + 2) * i9;
        float[] fArr2 = new float[i12 * 3];
        float[] fArr3 = new float[i12 * 2];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < i9) {
            float f8 = radians / 2.0f;
            float f9 = (i13 * f6) - f8;
            int i16 = i13 + 1;
            float f10 = (i16 * f6) - f8;
            int i17 = 0;
            while (i17 < i11) {
                float f11 = f9;
                int i18 = i16;
                int i19 = 0;
                int i20 = 2;
                while (i19 < i20) {
                    if (i19 == 0) {
                        f5 = f11;
                        i4 = i11;
                    } else {
                        i4 = i11;
                        f5 = f10;
                    }
                    float f12 = i17 * f7;
                    float f13 = f7;
                    int i21 = i17;
                    double d2 = f2;
                    float f14 = f6;
                    double d3 = (f12 + 3.1415927f) - (radians2 / 2.0f);
                    int i22 = i19;
                    double d4 = f5;
                    float[] fArr4 = fArr3;
                    float f15 = f10;
                    fArr2[i14] = -((float) (Math.sin(d3) * d2 * Math.cos(d4)));
                    float f16 = radians;
                    float f17 = radians2;
                    fArr2[i14 + 1] = (float) (d2 * Math.sin(d4));
                    int i23 = i14 + 3;
                    fArr2[i14 + 2] = (float) (d2 * Math.cos(d3) * Math.cos(d4));
                    fArr4[i15] = f12 / f17;
                    int i24 = i15 + 2;
                    fArr4[i15 + 1] = ((i13 + i22) * f14) / f16;
                    if (i21 == 0 && i22 == 0) {
                        i5 = i2;
                        i6 = i21;
                        i7 = i22;
                    } else {
                        i5 = i2;
                        i6 = i21;
                        i7 = i22;
                        if (i6 != i5 || i7 != 1) {
                            fArr = fArr4;
                            i8 = 2;
                            i15 = i24;
                            i14 = i23;
                            int i25 = i7 + 1;
                            fArr3 = fArr;
                            i20 = i8;
                            radians = f16;
                            i11 = i4;
                            f7 = f13;
                            f6 = f14;
                            f10 = f15;
                            i19 = i25;
                            i10 = i5;
                            i17 = i6;
                            radians2 = f17;
                        }
                    }
                    System.arraycopy(fArr2, i14, fArr2, i23, 3);
                    i14 += 6;
                    fArr = fArr4;
                    i8 = 2;
                    System.arraycopy(fArr, i15, fArr, i24, 2);
                    i15 += 4;
                    int i252 = i7 + 1;
                    fArr3 = fArr;
                    i20 = i8;
                    radians = f16;
                    i11 = i4;
                    f7 = f13;
                    f6 = f14;
                    f10 = f15;
                    i19 = i252;
                    i10 = i5;
                    i17 = i6;
                    radians2 = f17;
                }
                float f18 = radians2;
                int i26 = i17;
                int i27 = i10;
                int i28 = i26 + 1;
                f9 = f11;
                i16 = i18;
                f7 = f7;
                radians2 = f18;
                f10 = f10;
                i10 = i27;
                i17 = i28;
            }
            i9 = i;
            i13 = i16;
        }
        return new e(new a(new b(0, fArr2, fArr3, 1)), i3);
    }

    public static e a(int i) {
        return a(50.0f, 36, 72, 180.0f, 360.0f, i);
    }
}
