package com.applovin.exoplayer2.g.e;

import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.x;
import com.applovin.exoplayer2.l.y;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
/* loaded from: classes.dex */
public final class g extends com.applovin.exoplayer2.g.g {

    /* renamed from: a  reason: collision with root package name */
    public static final a f2894a = new a() { // from class: com.applovin.exoplayer2.g.e.g$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.e.g.a
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            boolean b2;
            b2 = g.b(i, i2, i3, i4, i5);
            return b2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final a f2895b;

    /* loaded from: classes.dex */
    public interface a {
        boolean evaluate(int i, int i2, int i3, int i4, int i5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f2896a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f2897b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2898c;

        public b(int i, boolean z, int i2) {
            this.f2896a = i;
            this.f2897b = z;
            this.f2898c = i2;
        }
    }

    public g() {
        this(null);
    }

    public g(a aVar) {
        this.f2895b = aVar;
    }

    private static int a(byte[] bArr, int i, int i2) {
        int b2 = b(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return b2;
        }
        while (b2 < bArr.length - 1) {
            if ((b2 - i) % 2 == 0 && bArr[b2 + 1] == 0) {
                return b2;
            }
            b2 = b(bArr, b2 + 1);
        }
        return bArr.length;
    }

    private static com.applovin.exoplayer2.g.e.a a(y yVar, int i, int i2) throws UnsupportedEncodingException {
        int b2;
        String str;
        int h2 = yVar.h();
        String a2 = a(h2);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        yVar.a(bArr, 0, i3);
        if (i2 == 2) {
            str = "image/" + Ascii.toLowerCase(new String(bArr, 0, 3, C.ISO88591_NAME));
            if ("image/jpg".equals(str)) {
                str = MimeTypes.IMAGE_JPEG;
            }
            b2 = 2;
        } else {
            b2 = b(bArr, 0);
            String lowerCase = Ascii.toLowerCase(new String(bArr, 0, b2, C.ISO88591_NAME));
            str = lowerCase.indexOf(47) == -1 ? "image/" + lowerCase : lowerCase;
        }
        int i4 = b2 + 2;
        int a3 = a(bArr, i4, h2);
        return new com.applovin.exoplayer2.g.e.a(str, new String(bArr, i4, a3 - i4, a2), bArr[b2 + 1] & 255, b(bArr, a3 + b(h2), i3));
    }

    private static c a(y yVar, int i, int i2, boolean z, int i3, a aVar) throws UnsupportedEncodingException {
        int c2 = yVar.c();
        int b2 = b(yVar.d(), c2);
        String str = new String(yVar.d(), c2, b2 - c2, C.ISO88591_NAME);
        yVar.d(b2 + 1);
        int q = yVar.q();
        int q2 = yVar.q();
        long o = yVar.o();
        long j = o == ArrayUnsignedIntList.MAX_VALUE ? -1L : o;
        long o2 = yVar.o();
        long j2 = o2 == ArrayUnsignedIntList.MAX_VALUE ? -1L : o2;
        ArrayList arrayList = new ArrayList();
        int i4 = c2 + i;
        while (yVar.c() < i4) {
            h a2 = a(i2, yVar, z, i3, aVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new c(str, q, q2, j, j2, (h[]) arrayList.toArray(new h[0]));
    }

    private static b a(y yVar) {
        StringBuilder append;
        String str;
        if (yVar.a() < 10) {
            str = "Data too short to be an ID3 tag";
        } else {
            int m = yVar.m();
            if (m == 4801587) {
                int h2 = yVar.h();
                boolean z = true;
                yVar.e(1);
                int h3 = yVar.h();
                int v = yVar.v();
                if (h2 == 2) {
                    if ((h3 & 64) != 0) {
                        str = "Skipped ID3 tag with majorVersion=2 and undefined compression scheme";
                    }
                } else if (h2 == 3) {
                    if ((h3 & 64) != 0) {
                        int q = yVar.q();
                        yVar.e(q);
                        v -= q + 4;
                    }
                } else if (h2 == 4) {
                    if ((h3 & 64) != 0) {
                        int v2 = yVar.v();
                        yVar.e(v2 - 4);
                        v -= v2;
                    }
                    if ((h3 & 16) != 0) {
                        v -= 10;
                    }
                } else {
                    append = new StringBuilder("Skipped ID3 tag with unsupported majorVersion=").append(h2);
                }
                return new b(h2, (h2 >= 4 || (h3 & 128) == 0) ? false : false, v);
            }
            append = new StringBuilder("Unexpected first three bytes of ID3 tag header: 0x").append(String.format("%06X", Integer.valueOf(m)));
            str = append.toString();
        }
        q.c("Id3Decoder", str);
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x0196, code lost:
        if (r14 == 67) goto L99;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.applovin.exoplayer2.g.e.h a(int r20, com.applovin.exoplayer2.l.y r21, boolean r22, int r23, com.applovin.exoplayer2.g.e.g.a r24) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.g.e.g.a(int, com.applovin.exoplayer2.l.y, boolean, int, com.applovin.exoplayer2.g.e.g$a):com.applovin.exoplayer2.g.e.h");
    }

    private static l a(y yVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int h2 = yVar.h();
        String a2 = a(h2);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        yVar.a(bArr, 0, i2);
        int a3 = a(bArr, 0, h2);
        String str = new String(bArr, 0, a3, a2);
        int b2 = a3 + b(h2);
        return new l("TXXX", str, a(bArr, b2, a(bArr, b2, h2), a2));
    }

    private static l a(y yVar, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int h2 = yVar.h();
        String a2 = a(h2);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        yVar.a(bArr, 0, i2);
        return new l(str, null, new String(bArr, 0, a(bArr, 0, h2), a2));
    }

    private static String a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? C.ISO88591_NAME : C.UTF8_NAME : "UTF-16BE" : C.UTF16_NAME;
    }

    private static String a(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static String a(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        if ((r10 & 1) != 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0079, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0086, code lost:
        if ((r10 & 128) != 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(com.applovin.exoplayer2.l.y r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r18.c()
        L8:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Laf
            r4 = 1
            r5 = r20
            if (r3 < r5) goto Lab
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L22
            int r7 = r18.q()     // Catch: java.lang.Throwable -> Laf
            long r8 = r18.o()     // Catch: java.lang.Throwable -> Laf
            int r10 = r18.i()     // Catch: java.lang.Throwable -> Laf
            goto L2c
        L22:
            int r7 = r18.m()     // Catch: java.lang.Throwable -> Laf
            int r8 = r18.m()     // Catch: java.lang.Throwable -> Laf
            long r8 = (long) r8
            r10 = r6
        L2c:
            r11 = 0
            if (r7 != 0) goto L3a
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3a
            if (r10 != 0) goto L3a
            r1.d(r2)
            return r4
        L3a:
            r7 = 4
            if (r0 != r7) goto L6b
            if (r21 != 0) goto L6b
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 == 0) goto L4b
            r1.d(r2)
            return r6
        L4b:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L6b:
            if (r0 != r7) goto L7b
            r3 = r10 & 64
            if (r3 == 0) goto L73
            r3 = r4
            goto L74
        L73:
            r3 = r6
        L74:
            r7 = r10 & 1
            if (r7 == 0) goto L79
            goto L8b
        L79:
            r4 = r6
            goto L8b
        L7b:
            if (r0 != r3) goto L89
            r3 = r10 & 32
            if (r3 == 0) goto L83
            r3 = r4
            goto L84
        L83:
            r3 = r6
        L84:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L79
            goto L8b
        L89:
            r3 = r6
            r4 = r3
        L8b:
            if (r4 == 0) goto L8f
            int r3 = r3 + 4
        L8f:
            long r3 = (long) r3
            int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r3 >= 0) goto L98
            r1.d(r2)
            return r6
        L98:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Laf
            long r3 = (long) r3
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 >= 0) goto La5
            r1.d(r2)
            return r6
        La5:
            int r3 = (int) r8
            r1.e(r3)     // Catch: java.lang.Throwable -> Laf
            goto L8
        Lab:
            r1.d(r2)
            return r4
        Laf:
            r0 = move-exception
            r1.d(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.g.e.g.a(com.applovin.exoplayer2.l.y, int, int, boolean):boolean");
    }

    private static int b(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    private static d b(y yVar, int i, int i2, boolean z, int i3, a aVar) throws UnsupportedEncodingException {
        int c2 = yVar.c();
        int b2 = b(yVar.d(), c2);
        String str = new String(yVar.d(), c2, b2 - c2, C.ISO88591_NAME);
        yVar.d(b2 + 1);
        int h2 = yVar.h();
        boolean z2 = (h2 & 2) != 0;
        boolean z3 = (h2 & 1) != 0;
        int h3 = yVar.h();
        String[] strArr = new String[h3];
        for (int i4 = 0; i4 < h3; i4++) {
            int c3 = yVar.c();
            int b3 = b(yVar.d(), c3);
            strArr[i4] = new String(yVar.d(), c3, b3 - c3, C.ISO88591_NAME);
            yVar.d(b3 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i5 = c2 + i;
        while (yVar.c() < i5) {
            h a2 = a(i2, yVar, z, i3, aVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return new d(str, z2, z3, strArr, (h[]) arrayList.toArray(new h[0]));
    }

    private static m b(y yVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int h2 = yVar.h();
        String a2 = a(h2);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        yVar.a(bArr, 0, i2);
        int a3 = a(bArr, 0, h2);
        String str = new String(bArr, 0, a3, a2);
        int b2 = a3 + b(h2);
        return new m("WXXX", str, a(bArr, b2, b(bArr, b2), C.ISO88591_NAME));
    }

    private static m b(y yVar, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        yVar.a(bArr, 0, i);
        return new m(str, null, new String(bArr, 0, b(bArr, 0), C.ISO88591_NAME));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    private static byte[] b(byte[] bArr, int i, int i2) {
        return i2 <= i ? ai.f3786f : Arrays.copyOfRange(bArr, i, i2);
    }

    private static com.applovin.exoplayer2.g.e.b c(y yVar, int i, String str) {
        byte[] bArr = new byte[i];
        yVar.a(bArr, 0, i);
        return new com.applovin.exoplayer2.g.e.b(str, bArr);
    }

    private static k c(y yVar, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        yVar.a(bArr, 0, i);
        int b2 = b(bArr, 0);
        return new k(new String(bArr, 0, b2, C.ISO88591_NAME), b(bArr, b2 + 1, i));
    }

    private static f d(y yVar, int i) throws UnsupportedEncodingException {
        int h2 = yVar.h();
        String a2 = a(h2);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        yVar.a(bArr, 0, i2);
        int b2 = b(bArr, 0);
        String str = new String(bArr, 0, b2, C.ISO88591_NAME);
        int i3 = b2 + 1;
        int a3 = a(bArr, i3, h2);
        String a4 = a(bArr, i3, a3, a2);
        int b3 = a3 + b(h2);
        int a5 = a(bArr, b3, h2);
        return new f(str, a4, a(bArr, b3, a5, a2), b(bArr, a5 + b(h2), i2));
    }

    private static e e(y yVar, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int h2 = yVar.h();
        String a2 = a(h2);
        byte[] bArr = new byte[3];
        yVar.a(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        yVar.a(bArr2, 0, i2);
        int a3 = a(bArr2, 0, h2);
        String str2 = new String(bArr2, 0, a3, a2);
        int b2 = a3 + b(h2);
        return new e(str, str2, a(bArr2, b2, a(bArr2, b2, h2), a2));
    }

    private static j f(y yVar, int i) {
        int i2 = yVar.i();
        int m = yVar.m();
        int m2 = yVar.m();
        int h2 = yVar.h();
        int h3 = yVar.h();
        x xVar = new x();
        xVar.a(yVar);
        int i3 = ((i - 10) * 8) / (h2 + h3);
        int[] iArr = new int[i3];
        int[] iArr2 = new int[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int c2 = xVar.c(h2);
            int c3 = xVar.c(h3);
            iArr[i4] = c2;
            iArr2[i4] = c3;
        }
        return new j(i2, m, m2, iArr, iArr2);
    }

    private static int g(y yVar, int i) {
        byte[] d2 = yVar.d();
        int c2 = yVar.c();
        int i2 = c2;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= c2 + i) {
                return i;
            }
            if ((d2[i2] & 255) == 255 && d2[i3] == 0) {
                System.arraycopy(d2, i2 + 2, d2, i3, (i - (i2 - c2)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    @Override // com.applovin.exoplayer2.g.g
    protected com.applovin.exoplayer2.g.a a(com.applovin.exoplayer2.g.d dVar, ByteBuffer byteBuffer) {
        return a(byteBuffer.array(), byteBuffer.limit());
    }

    public com.applovin.exoplayer2.g.a a(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        y yVar = new y(bArr, i);
        b a2 = a(yVar);
        if (a2 == null) {
            return null;
        }
        int c2 = yVar.c();
        int i2 = a2.f2896a == 2 ? 6 : 10;
        int i3 = a2.f2898c;
        if (a2.f2897b) {
            i3 = g(yVar, a2.f2898c);
        }
        yVar.c(c2 + i3);
        boolean z = false;
        if (!a(yVar, a2.f2896a, i2, false)) {
            if (a2.f2896a != 4 || !a(yVar, 4, i2, true)) {
                q.c("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + a2.f2896a);
                return null;
            }
            z = true;
        }
        while (yVar.a() >= i2) {
            h a3 = a(a2.f2896a, yVar, z, i2, this.f2895b);
            if (a3 != null) {
                arrayList.add(a3);
            }
        }
        return new com.applovin.exoplayer2.g.a(arrayList);
    }
}
