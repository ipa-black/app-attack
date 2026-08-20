package com.applovin.exoplayer2.e.g;

import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
final class d {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f2270a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f2271b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2272c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f2273d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f2274e;

        /* renamed from: f  reason: collision with root package name */
        public final long f2275f;

        private a(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
            this.f2270a = jArr;
            this.f2271b = iArr;
            this.f2272c = i;
            this.f2273d = jArr2;
            this.f2274e = iArr2;
            this.f2275f = j;
        }
    }

    public static a a(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 8192 / i;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += ai.a(i4, i2);
        }
        long[] jArr2 = new long[i3];
        int[] iArr2 = new int[i3];
        long[] jArr3 = new long[i3];
        int[] iArr3 = new int[i3];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < iArr.length; i8++) {
            int i9 = iArr[i8];
            long j2 = jArr[i8];
            while (i9 > 0) {
                int min = Math.min(i2, i9);
                jArr2[i6] = j2;
                int i10 = i * min;
                iArr2[i6] = i10;
                i7 = Math.max(i7, i10);
                jArr3[i6] = i5 * j;
                iArr3[i6] = 1;
                j2 += iArr2[i6];
                i5 += min;
                i9 -= min;
                i6++;
            }
        }
        return new a(jArr2, iArr2, i7, jArr3, iArr3, j * i5);
    }
}
