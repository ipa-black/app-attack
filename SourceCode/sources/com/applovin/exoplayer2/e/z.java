package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.ai;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class z {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2723a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2724b;

        /* renamed from: c  reason: collision with root package name */
        public final long[] f2725c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2726d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f2727e;

        public a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.f2723a = i;
            this.f2724b = i2;
            this.f2725c = jArr;
            this.f2726d = i3;
            this.f2727e = z;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f2728a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f2729b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2730c;

        public b(String str, String[] strArr, int i) {
            this.f2728a = str;
            this.f2729b = strArr;
            this.f2730c = i;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f2731a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2732b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2733c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2734d;

        public c(boolean z, int i, int i2, int i3) {
            this.f2731a = z;
            this.f2732b = i;
            this.f2733c = i2;
            this.f2734d = i3;
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f2735a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2736b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2737c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2738d;

        /* renamed from: e  reason: collision with root package name */
        public final int f2739e;

        /* renamed from: f  reason: collision with root package name */
        public final int f2740f;

        /* renamed from: g  reason: collision with root package name */
        public final int f2741g;

        /* renamed from: h  reason: collision with root package name */
        public final int f2742h;
        public final boolean i;
        public final byte[] j;

        public d(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr) {
            this.f2735a = i;
            this.f2736b = i2;
            this.f2737c = i3;
            this.f2738d = i4;
            this.f2739e = i5;
            this.f2740f = i6;
            this.f2741g = i7;
            this.f2742h = i8;
            this.i = z;
            this.j = bArr;
        }
    }

    public static int a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    private static long a(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    public static b a(com.applovin.exoplayer2.l.y yVar, boolean z, boolean z2) throws ai {
        if (z) {
            a(3, yVar, false);
        }
        String f2 = yVar.f((int) yVar.p());
        int length = f2.length();
        long p = yVar.p();
        String[] strArr = new String[(int) p];
        int i = length + 15;
        for (int i2 = 0; i2 < p; i2++) {
            String f3 = yVar.f((int) yVar.p());
            strArr[i2] = f3;
            i = i + 4 + f3.length();
        }
        if (z2 && (yVar.h() & 1) == 0) {
            throw ai.b("framing bit expected to be set", null);
        }
        return new b(f2, strArr, i + 1);
    }

    public static d a(com.applovin.exoplayer2.l.y yVar) throws ai {
        a(1, yVar, false);
        int x = yVar.x();
        int h2 = yVar.h();
        int x2 = yVar.x();
        int r = yVar.r();
        if (r <= 0) {
            r = -1;
        }
        int r2 = yVar.r();
        if (r2 <= 0) {
            r2 = -1;
        }
        int r3 = yVar.r();
        if (r3 <= 0) {
            r3 = -1;
        }
        int h3 = yVar.h();
        return new d(x, h2, x2, r, r2, r3, (int) Math.pow(2.0d, h3 & 15), (int) Math.pow(2.0d, (h3 & PsExtractor.VIDEO_STREAM_MASK) >> 4), (yVar.h() & 1) > 0, Arrays.copyOf(yVar.d(), yVar.b()));
    }

    private static void a(int i, y yVar) throws ai {
        int a2 = yVar.a(6) + 1;
        for (int i2 = 0; i2 < a2; i2++) {
            int a3 = yVar.a(16);
            if (a3 != 0) {
                com.applovin.exoplayer2.l.q.d("VorbisUtil", "mapping type other than 0 not supported: " + a3);
            } else {
                int a4 = yVar.a() ? yVar.a(4) + 1 : 1;
                if (yVar.a()) {
                    int a5 = yVar.a(8) + 1;
                    for (int i3 = 0; i3 < a5; i3++) {
                        int i4 = i - 1;
                        yVar.b(a(i4));
                        yVar.b(a(i4));
                    }
                }
                if (yVar.a(2) != 0) {
                    throw ai.b("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (a4 > 1) {
                    for (int i5 = 0; i5 < i; i5++) {
                        yVar.b(4);
                    }
                }
                for (int i6 = 0; i6 < a4; i6++) {
                    yVar.b(8);
                    yVar.b(8);
                    yVar.b(8);
                }
            }
        }
    }

    public static boolean a(int i, com.applovin.exoplayer2.l.y yVar, boolean z) throws ai {
        if (yVar.a() < 7) {
            if (z) {
                return false;
            }
            throw ai.b("too short header: " + yVar.a(), null);
        } else if (yVar.h() != i) {
            if (z) {
                return false;
            }
            throw ai.b("expected header type " + Integer.toHexString(i), null);
        } else if (yVar.h() == 118 && yVar.h() == 111 && yVar.h() == 114 && yVar.h() == 98 && yVar.h() == 105 && yVar.h() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw ai.b("expected characters 'vorbis'", null);
        }
    }

    private static c[] a(y yVar) {
        int a2 = yVar.a(6) + 1;
        c[] cVarArr = new c[a2];
        for (int i = 0; i < a2; i++) {
            cVarArr[i] = new c(yVar.a(), yVar.a(16), yVar.a(16), yVar.a(8));
        }
        return cVarArr;
    }

    public static c[] a(com.applovin.exoplayer2.l.y yVar, int i) throws ai {
        a(5, yVar, false);
        int h2 = yVar.h() + 1;
        y yVar2 = new y(yVar.d());
        yVar2.b(yVar.c() * 8);
        for (int i2 = 0; i2 < h2; i2++) {
            d(yVar2);
        }
        int a2 = yVar2.a(6) + 1;
        for (int i3 = 0; i3 < a2; i3++) {
            if (yVar2.a(16) != 0) {
                throw ai.b("placeholder of time domain transforms not zeroed out", null);
            }
        }
        c(yVar2);
        b(yVar2);
        a(i, yVar2);
        c[] a3 = a(yVar2);
        if (yVar2.a()) {
            return a3;
        }
        throw ai.b("framing bit after modes not set as expected", null);
    }

    public static b b(com.applovin.exoplayer2.l.y yVar) throws ai {
        return a(yVar, true, true);
    }

    private static void b(y yVar) throws ai {
        int a2 = yVar.a(6) + 1;
        for (int i = 0; i < a2; i++) {
            if (yVar.a(16) > 2) {
                throw ai.b("residueType greater than 2 is not decodable", null);
            }
            yVar.b(24);
            yVar.b(24);
            yVar.b(24);
            int a3 = yVar.a(6) + 1;
            yVar.b(8);
            int[] iArr = new int[a3];
            for (int i2 = 0; i2 < a3; i2++) {
                iArr[i2] = ((yVar.a() ? yVar.a(5) : 0) * 8) + yVar.a(3);
            }
            for (int i3 = 0; i3 < a3; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        yVar.b(8);
                    }
                }
            }
        }
    }

    private static void c(y yVar) throws ai {
        int a2 = yVar.a(6) + 1;
        for (int i = 0; i < a2; i++) {
            int a3 = yVar.a(16);
            if (a3 == 0) {
                yVar.b(8);
                yVar.b(16);
                yVar.b(16);
                yVar.b(6);
                yVar.b(8);
                int a4 = yVar.a(4) + 1;
                for (int i2 = 0; i2 < a4; i2++) {
                    yVar.b(8);
                }
            } else if (a3 != 1) {
                throw ai.b("floor type greater than 1 not decodable: " + a3, null);
            } else {
                int a5 = yVar.a(5);
                int[] iArr = new int[a5];
                int i3 = -1;
                for (int i4 = 0; i4 < a5; i4++) {
                    int a6 = yVar.a(4);
                    iArr[i4] = a6;
                    if (a6 > i3) {
                        i3 = a6;
                    }
                }
                int i5 = i3 + 1;
                int[] iArr2 = new int[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr2[i6] = yVar.a(3) + 1;
                    int a7 = yVar.a(2);
                    if (a7 > 0) {
                        yVar.b(8);
                    }
                    for (int i7 = 0; i7 < (1 << a7); i7++) {
                        yVar.b(8);
                    }
                }
                yVar.b(2);
                int a8 = yVar.a(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < a5; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        yVar.b(a8);
                        i9++;
                    }
                }
            }
        }
    }

    private static a d(y yVar) throws ai {
        if (yVar.a(24) == 5653314) {
            int a2 = yVar.a(16);
            int a3 = yVar.a(24);
            long[] jArr = new long[a3];
            boolean a4 = yVar.a();
            long j = 0;
            if (a4) {
                int a5 = yVar.a(5) + 1;
                int i = 0;
                while (i < a3) {
                    int a6 = yVar.a(a(a3 - i));
                    for (int i2 = 0; i2 < a6 && i < a3; i2++) {
                        jArr[i] = a5;
                        i++;
                    }
                    a5++;
                }
            } else {
                boolean a7 = yVar.a();
                for (int i3 = 0; i3 < a3; i3++) {
                    if (!a7) {
                        jArr[i3] = yVar.a(5) + 1;
                    } else if (yVar.a()) {
                        jArr[i3] = yVar.a(5) + 1;
                    } else {
                        jArr[i3] = 0;
                    }
                }
            }
            int a8 = yVar.a(4);
            if (a8 <= 2) {
                if (a8 == 1 || a8 == 2) {
                    yVar.b(32);
                    yVar.b(32);
                    int a9 = yVar.a(4) + 1;
                    yVar.b(1);
                    if (a8 != 1) {
                        j = a3 * a2;
                    } else if (a2 != 0) {
                        j = a(a3, a2);
                    }
                    yVar.b((int) (j * a9));
                }
                return new a(a2, a3, jArr, a8, a4);
            }
            throw ai.b("lookup type greater than 2 not decodable: " + a8, null);
        }
        throw ai.b("expected code book to start with [0x56, 0x43, 0x42] at " + yVar.b(), null);
    }
}
