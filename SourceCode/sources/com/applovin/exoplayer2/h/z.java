package com.applovin.exoplayer2.h;

import java.util.Arrays;
import java.util.Random;
/* loaded from: classes.dex */
public interface z {

    /* loaded from: classes.dex */
    public static class a implements z {

        /* renamed from: a  reason: collision with root package name */
        private final Random f3160a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f3161b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f3162c;

        public a(int i) {
            this(i, new Random());
        }

        private a(int i, Random random) {
            this(a(i, random), random);
        }

        private a(int[] iArr, Random random) {
            this.f3161b = iArr;
            this.f3160a = random;
            this.f3162c = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.f3162c[iArr[i]] = i;
            }
        }

        private static int[] a(int i, Random random) {
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int i3 = i2 + 1;
                int nextInt = random.nextInt(i3);
                iArr[i2] = iArr[nextInt];
                iArr[nextInt] = i2;
                i2 = i3;
            }
            return iArr;
        }

        @Override // com.applovin.exoplayer2.h.z
        public int a() {
            return this.f3161b.length;
        }

        @Override // com.applovin.exoplayer2.h.z
        public int a(int i) {
            int i2 = this.f3162c[i] + 1;
            int[] iArr = this.f3161b;
            if (i2 < iArr.length) {
                return iArr[i2];
            }
            return -1;
        }

        @Override // com.applovin.exoplayer2.h.z
        public z a(int i, int i2) {
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int i3 = 0;
            int i4 = 0;
            while (i4 < i2) {
                iArr[i4] = this.f3160a.nextInt(this.f3161b.length + 1);
                int i5 = i4 + 1;
                int nextInt = this.f3160a.nextInt(i5);
                iArr2[i4] = iArr2[nextInt];
                iArr2[nextInt] = i4 + i;
                i4 = i5;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f3161b.length + i2];
            int i6 = 0;
            int i7 = 0;
            while (true) {
                int[] iArr4 = this.f3161b;
                if (i3 >= iArr4.length + i2) {
                    return new a(iArr3, new Random(this.f3160a.nextLong()));
                }
                if (i6 >= i2 || i7 != iArr[i6]) {
                    int i8 = i7 + 1;
                    int i9 = iArr4[i7];
                    iArr3[i3] = i9;
                    if (i9 >= i) {
                        iArr3[i3] = i9 + i2;
                    }
                    i7 = i8;
                } else {
                    iArr3[i3] = iArr2[i6];
                    i6++;
                }
                i3++;
            }
        }

        @Override // com.applovin.exoplayer2.h.z
        public int b() {
            int[] iArr = this.f3161b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // com.applovin.exoplayer2.h.z
        public int b(int i) {
            int i2 = this.f3162c[i] - 1;
            if (i2 >= 0) {
                return this.f3161b[i2];
            }
            return -1;
        }

        @Override // com.applovin.exoplayer2.h.z
        public z b(int i, int i2) {
            int i3 = i2 - i;
            int[] iArr = new int[this.f3161b.length - i3];
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int[] iArr2 = this.f3161b;
                if (i4 >= iArr2.length) {
                    return new a(iArr, new Random(this.f3160a.nextLong()));
                }
                int i6 = iArr2[i4];
                if (i6 < i || i6 >= i2) {
                    int i7 = i4 - i5;
                    if (i6 >= i) {
                        i6 -= i3;
                    }
                    iArr[i7] = i6;
                } else {
                    i5++;
                }
                i4++;
            }
        }

        @Override // com.applovin.exoplayer2.h.z
        public int c() {
            int[] iArr = this.f3161b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // com.applovin.exoplayer2.h.z
        public z d() {
            return new a(0, new Random(this.f3160a.nextLong()));
        }
    }

    int a();

    int a(int i);

    z a(int i, int i2);

    int b();

    int b(int i);

    z b(int i, int i2);

    int c();

    z d();
}
