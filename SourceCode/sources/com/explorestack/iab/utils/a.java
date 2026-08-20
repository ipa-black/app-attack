package com.explorestack.iab.utils;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f9404a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public long f9405a;

        /* renamed from: b  reason: collision with root package name */
        public byte[] f9406b;

        /* renamed from: c  reason: collision with root package name */
        public int f9407c;

        /* renamed from: d  reason: collision with root package name */
        public int f9408d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f9409e;

        /* renamed from: f  reason: collision with root package name */
        public int f9410f;

        private b() {
        }
    }

    public final int a(int i, int i2) {
        int i3 = i - 2147483648;
        int i4 = i2 - 2147483648;
        if (i3 < i4) {
            return -1;
        }
        return i3 == i4 ? 0 : 1;
    }

    public final int a(b bVar) {
        if (bVar.f9406b != null) {
            return bVar.f9407c - bVar.f9408d;
        }
        return 0;
    }

    public String a(String str) {
        return a(str.getBytes(Charset.forName(C.UTF8_NAME)));
    }

    public String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return new String(bArr);
        }
        b bVar = new b();
        a(bArr, 0, bArr.length, bVar);
        a(bArr, 0, -1, bVar);
        int i = bVar.f9407c;
        byte[] bArr2 = new byte[i];
        a(bArr2, i, bVar);
        return new String(bArr2);
    }

    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v20 */
    public final void a(byte[] bArr, int i, int i2, b bVar) {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        byte b2;
        long j9;
        if (bVar.f9409e) {
            return;
        }
        ?? r3 = 1;
        if (i2 < 0) {
            bVar.f9409e = true;
        }
        int i3 = 0;
        int i4 = i;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            if (b3 == 61) {
                bVar.f9409e = r3;
                break;
            }
            byte[] a2 = a(7, bVar);
            if (b3 >= 0) {
                byte[] bArr2 = f9404a;
                if (b3 < bArr2.length && (b2 = bArr2[b3]) >= 0) {
                    int i6 = (bVar.f9410f + r3) % 8;
                    bVar.f9410f = i6;
                    bVar.f9405a = (bVar.f9405a << 5) + b2;
                    if (i6 == 0) {
                        int i7 = bVar.f9407c;
                        int i8 = i7 + 1;
                        bVar.f9407c = i8;
                        a2[i7] = (byte) ((j9 >> 32) & 255);
                        int i9 = i7 + 2;
                        bVar.f9407c = i9;
                        a2[i8] = (byte) ((j9 >> 24) & 255);
                        int i10 = i7 + 3;
                        bVar.f9407c = i10;
                        a2[i9] = (byte) ((j9 >> 16) & 255);
                        int i11 = i7 + 4;
                        bVar.f9407c = i11;
                        a2[i10] = (byte) ((j9 >> 8) & 255);
                        bVar.f9407c = i7 + 5;
                        a2[i11] = (byte) (j9 & 255);
                    }
                }
            }
            i3++;
            i4 = i5;
            r3 = 1;
        }
        if (!bVar.f9409e || bVar.f9410f <= 0) {
            return;
        }
        byte[] a3 = a(7, bVar);
        switch (bVar.f9410f) {
            case 1:
            case 2:
                int i12 = bVar.f9407c;
                bVar.f9407c = i12 + 1;
                a3[i12] = (byte) ((bVar.f9405a >> 2) & 255);
                return;
            case 3:
                int i13 = bVar.f9407c;
                bVar.f9407c = i13 + 1;
                a3[i13] = (byte) ((bVar.f9405a >> 7) & 255);
                return;
            case 4:
                bVar.f9405a = bVar.f9405a >> 4;
                int i14 = bVar.f9407c;
                int i15 = i14 + 1;
                bVar.f9407c = i15;
                a3[i14] = (byte) ((j >> 12) & 255);
                bVar.f9407c = i14 + 2;
                a3[i15] = (byte) (j2 & 255);
                return;
            case 5:
                bVar.f9405a = bVar.f9405a >> 1;
                int i16 = bVar.f9407c;
                int i17 = i16 + 1;
                bVar.f9407c = i17;
                a3[i16] = (byte) ((j3 >> 17) & 255);
                int i18 = i16 + 2;
                bVar.f9407c = i18;
                a3[i17] = (byte) ((j3 >> 9) & 255);
                bVar.f9407c = i16 + 3;
                a3[i18] = (byte) (j4 & 255);
                return;
            case 6:
                bVar.f9405a = bVar.f9405a >> 6;
                int i19 = bVar.f9407c;
                int i20 = i19 + 1;
                bVar.f9407c = i20;
                a3[i19] = (byte) ((j5 >> 22) & 255);
                int i21 = i19 + 2;
                bVar.f9407c = i21;
                a3[i20] = (byte) ((j5 >> 14) & 255);
                bVar.f9407c = i19 + 3;
                a3[i21] = (byte) (j6 & 255);
                return;
            case 7:
                bVar.f9405a = bVar.f9405a >> 3;
                int i22 = bVar.f9407c;
                int i23 = i22 + 1;
                bVar.f9407c = i23;
                a3[i22] = (byte) ((j7 >> 27) & 255);
                int i24 = i22 + 2;
                bVar.f9407c = i24;
                a3[i23] = (byte) ((j7 >> 19) & 255);
                int i25 = i22 + 3;
                bVar.f9407c = i25;
                a3[i24] = (byte) ((j7 >> 11) & 255);
                bVar.f9407c = i22 + 4;
                a3[i25] = (byte) (j8 & 255);
                return;
            default:
                throw new IllegalStateException("Impossible modulus " + bVar.f9410f);
        }
    }

    public final void a(byte[] bArr, int i, b bVar) {
        if (bVar.f9406b != null) {
            int min = Math.min(a(bVar), i);
            System.arraycopy(bVar.f9406b, bVar.f9408d, bArr, 0, min);
            int i2 = bVar.f9408d + min;
            bVar.f9408d = i2;
            if (i2 >= bVar.f9407c) {
                bVar.f9406b = null;
            }
        }
    }

    public final byte[] a(int i, b bVar) {
        byte[] bArr = bVar.f9406b;
        if (bArr == null) {
            bVar.f9406b = new byte[Math.max(i, 8192)];
            bVar.f9407c = 0;
            bVar.f9408d = 0;
        } else {
            int i2 = bVar.f9407c + i;
            if (i2 - bArr.length > 0) {
                return a(bVar, i2);
            }
        }
        return bVar.f9406b;
    }

    public final byte[] a(b bVar, int i) {
        int length = bVar.f9406b.length * 2;
        if (a(length, i) < 0) {
            length = i;
        }
        if (a(length, 2147483639) > 0) {
            length = Math.max(i, 2147483639);
        }
        byte[] bArr = new byte[length];
        byte[] bArr2 = bVar.f9406b;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        bVar.f9406b = bArr;
        return bArr;
    }
}
