package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.common.primitives.SignedBytes;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f1461a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f1462a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1463b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1464c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1465d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1466e;

        private a(int i, int i2, int i3, int i4, int i5) {
            this.f1462a = i;
            this.f1464c = i2;
            this.f1463b = i3;
            this.f1465d = i4;
            this.f1466e = i5;
        }
    }

    private static int a(com.applovin.exoplayer2.l.x xVar, int i) {
        int i2 = 0;
        while (true) {
            int c2 = i2 + xVar.c(i);
            if (!xVar.e()) {
                return c2;
            }
            i2 = (c2 + 1) << i;
        }
    }

    public static int a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return a(new com.applovin.exoplayer2.l.x(bArr)).f1466e;
    }

    public static int a(byte[] bArr, int i) {
        int i2 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i3 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i3 == 65535) {
            i3 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i2 = 4;
        }
        if (i == 44097) {
            i2 += 2;
        }
        return i3 + i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
        if (r11 != 11) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0085, code lost:
        if (r11 != 11) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008a, code lost:
        if (r11 != 8) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.applovin.exoplayer2.b.c.a a(com.applovin.exoplayer2.l.x r11) {
        /*
            r0 = 16
            int r1 = r11.c(r0)
            int r0 = r11.c(r0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 4
            if (r0 != r2) goto L18
            r0 = 24
            int r0 = r11.c(r0)
            r2 = 7
            goto L19
        L18:
            r2 = r3
        L19:
            int r0 = r0 + r2
            r2 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r2) goto L21
            int r0 = r0 + 2
        L21:
            r8 = r0
            r0 = 2
            int r1 = r11.c(r0)
            r2 = 3
            if (r1 != r2) goto L2f
            int r4 = a(r11, r0)
            int r1 = r1 + r4
        L2f:
            r5 = r1
            r1 = 10
            int r1 = r11.c(r1)
            boolean r4 = r11.e()
            if (r4 == 0) goto L45
            int r4 = r11.c(r2)
            if (r4 <= 0) goto L45
            r11.b(r0)
        L45:
            boolean r4 = r11.e()
            r6 = 48000(0xbb80, float:6.7262E-41)
            r7 = 44100(0xac44, float:6.1797E-41)
            if (r4 == 0) goto L53
            r9 = r6
            goto L54
        L53:
            r9 = r7
        L54:
            int r11 = r11.c(r3)
            if (r9 != r7) goto L63
            r4 = 13
            if (r11 != r4) goto L63
            int[] r0 = com.applovin.exoplayer2.b.c.f1461a
            r11 = r0[r11]
            goto L93
        L63:
            if (r9 != r6) goto L92
            int[] r4 = com.applovin.exoplayer2.b.c.f1461a
            int r6 = r4.length
            if (r11 >= r6) goto L92
            r4 = r4[r11]
            int r1 = r1 % 5
            r6 = 8
            r7 = 1
            if (r1 == r7) goto L88
            r7 = 11
            if (r1 == r0) goto L83
            if (r1 == r2) goto L88
            if (r1 == r3) goto L7c
            goto L8d
        L7c:
            if (r11 == r2) goto L8f
            if (r11 == r6) goto L8f
            if (r11 != r7) goto L8d
            goto L8f
        L83:
            if (r11 == r6) goto L8f
            if (r11 != r7) goto L8d
            goto L8f
        L88:
            if (r11 == r2) goto L8f
            if (r11 != r6) goto L8d
            goto L8f
        L8d:
            r11 = r4
            goto L93
        L8f:
            int r4 = r4 + 1
            goto L8d
        L92:
            r11 = 0
        L93:
            com.applovin.exoplayer2.b.c$a r0 = new com.applovin.exoplayer2.b.c$a
            r6 = 2
            r10 = 0
            r4 = r0
            r7 = r9
            r9 = r11
            r4.<init>(r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.b.c.a(com.applovin.exoplayer2.l.x):com.applovin.exoplayer2.b.c$a");
    }

    public static com.applovin.exoplayer2.v a(com.applovin.exoplayer2.l.y yVar, String str, String str2, com.applovin.exoplayer2.d.e eVar) {
        yVar.e(1);
        return new v.a().a(str).f(MimeTypes.AUDIO_AC4).k(2).l(((yVar.h() & 32) >> 5) == 1 ? OpusUtil.SAMPLE_RATE : 44100).a(eVar).c(str2).a();
    }

    public static void a(int i, com.applovin.exoplayer2.l.y yVar) {
        yVar.a(7);
        byte[] d2 = yVar.d();
        d2[0] = -84;
        d2[1] = SignedBytes.MAX_POWER_OF_TWO;
        d2[2] = -1;
        d2[3] = -1;
        d2[4] = (byte) ((i >> 16) & 255);
        d2[5] = (byte) ((i >> 8) & 255);
        d2[6] = (byte) (i & 255);
    }
}
