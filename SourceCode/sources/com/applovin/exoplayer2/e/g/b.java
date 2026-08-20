package com.applovin.exoplayer2.e.g;

import android.util.Pair;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.e.g.a;
import com.applovin.exoplayer2.e.r;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f2242a = ai.c("OpusHead");

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2243a;

        /* renamed from: b  reason: collision with root package name */
        public int f2244b;

        /* renamed from: c  reason: collision with root package name */
        public int f2245c;

        /* renamed from: d  reason: collision with root package name */
        public long f2246d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f2247e;

        /* renamed from: f  reason: collision with root package name */
        private final y f2248f;

        /* renamed from: g  reason: collision with root package name */
        private final y f2249g;

        /* renamed from: h  reason: collision with root package name */
        private int f2250h;
        private int i;

        public a(y yVar, y yVar2, boolean z) throws com.applovin.exoplayer2.ai {
            this.f2249g = yVar;
            this.f2248f = yVar2;
            this.f2247e = z;
            yVar2.d(12);
            this.f2243a = yVar2.w();
            yVar.d(12);
            this.i = yVar.w();
            com.applovin.exoplayer2.e.k.a(yVar.q() == 1, "first_chunk must be 1");
            this.f2244b = -1;
        }

        public boolean a() {
            int i = this.f2244b + 1;
            this.f2244b = i;
            if (i == this.f2243a) {
                return false;
            }
            this.f2246d = this.f2247e ? this.f2248f.y() : this.f2248f.o();
            if (this.f2244b == this.f2250h) {
                this.f2245c = this.f2249g.w();
                this.f2249g.e(4);
                int i2 = this.i - 1;
                this.i = i2;
                this.f2250h = i2 > 0 ? this.f2249g.w() - 1 : -1;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.exoplayer2.e.g.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0037b {
        int a();

        int b();

        int c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final l[] f2251a;

        /* renamed from: b  reason: collision with root package name */
        public v f2252b;

        /* renamed from: c  reason: collision with root package name */
        public int f2253c;

        /* renamed from: d  reason: collision with root package name */
        public int f2254d = 0;

        public c(int i) {
            this.f2251a = new l[i];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d implements InterfaceC0037b {

        /* renamed from: a  reason: collision with root package name */
        private final int f2255a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2256b;

        /* renamed from: c  reason: collision with root package name */
        private final y f2257c;

        public d(a.b bVar, v vVar) {
            y yVar = bVar.f2241b;
            this.f2257c = yVar;
            yVar.d(12);
            int w = yVar.w();
            if (MimeTypes.AUDIO_RAW.equals(vVar.l)) {
                int c2 = ai.c(vVar.A, vVar.y);
                if (w == 0 || w % c2 != 0) {
                    q.c("AtomParsers", "Audio sample size mismatch. stsd sample size: " + c2 + ", stsz sample size: " + w);
                    w = c2;
                }
            }
            this.f2255a = w == 0 ? -1 : w;
            this.f2256b = yVar.w();
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0037b
        public int a() {
            return this.f2256b;
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0037b
        public int b() {
            return this.f2255a;
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0037b
        public int c() {
            int i = this.f2255a;
            return i == -1 ? this.f2257c.w() : i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e implements InterfaceC0037b {

        /* renamed from: a  reason: collision with root package name */
        private final y f2258a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2259b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2260c;

        /* renamed from: d  reason: collision with root package name */
        private int f2261d;

        /* renamed from: e  reason: collision with root package name */
        private int f2262e;

        public e(a.b bVar) {
            y yVar = bVar.f2241b;
            this.f2258a = yVar;
            yVar.d(12);
            this.f2260c = yVar.w() & 255;
            this.f2259b = yVar.w();
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0037b
        public int a() {
            return this.f2259b;
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0037b
        public int b() {
            return -1;
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0037b
        public int c() {
            int i = this.f2260c;
            if (i == 8) {
                return this.f2258a.h();
            }
            if (i == 16) {
                return this.f2258a.i();
            }
            int i2 = this.f2261d;
            this.f2261d = i2 + 1;
            if (i2 % 2 == 0) {
                int h2 = this.f2258a.h();
                this.f2262e = h2;
                return (h2 & PsExtractor.VIDEO_STREAM_MASK) >> 4;
            }
            return this.f2262e & 15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        private final int f2263a;

        /* renamed from: b  reason: collision with root package name */
        private final long f2264b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2265c;

        public f(int i, long j, int i2) {
            this.f2263a = i;
            this.f2264b = j;
            this.f2265c = i2;
        }
    }

    private static int a(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    public static Pair<com.applovin.exoplayer2.g.a, com.applovin.exoplayer2.g.a> a(a.b bVar) {
        y yVar = bVar.f2241b;
        yVar.d(8);
        com.applovin.exoplayer2.g.a aVar = null;
        com.applovin.exoplayer2.g.a aVar2 = null;
        while (yVar.a() >= 8) {
            int c2 = yVar.c();
            int q = yVar.q();
            int q2 = yVar.q();
            if (q2 == 1835365473) {
                yVar.d(c2);
                aVar = a(yVar, c2 + q);
            } else if (q2 == 1936553057) {
                yVar.d(c2);
                aVar2 = c(yVar, c2 + q);
            }
            yVar.d(c2 + q);
        }
        return Pair.create(aVar, aVar2);
    }

    static Pair<Integer, l> a(y yVar, int i, int i2) throws com.applovin.exoplayer2.ai {
        int i3 = i + 8;
        int i4 = -1;
        int i5 = 0;
        String str = null;
        Integer num = null;
        while (i3 - i < i2) {
            yVar.d(i3);
            int q = yVar.q();
            int q2 = yVar.q();
            if (q2 == 1718775137) {
                num = Integer.valueOf(yVar.q());
            } else if (q2 == 1935894637) {
                yVar.e(4);
                str = yVar.f(4);
            } else if (q2 == 1935894633) {
                i4 = i3;
                i5 = q;
            }
            i3 += q;
        }
        if (C.CENC_TYPE_cenc.equals(str) || C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str) || C.CENC_TYPE_cbcs.equals(str)) {
            com.applovin.exoplayer2.e.k.a(num != null, "frma atom is mandatory");
            com.applovin.exoplayer2.e.k.a(i4 != -1, "schi atom is mandatory");
            l a2 = a(yVar, i4, i5, str);
            com.applovin.exoplayer2.e.k.a(a2 != null, "tenc atom is mandatory");
            return Pair.create(num, (l) ai.a(a2));
        }
        return null;
    }

    private static c a(y yVar, int i, int i2, String str, com.applovin.exoplayer2.d.e eVar, boolean z) throws com.applovin.exoplayer2.ai {
        int i3;
        yVar.d(12);
        int q = yVar.q();
        c cVar = new c(q);
        for (int i4 = 0; i4 < q; i4++) {
            int c2 = yVar.c();
            int q2 = yVar.q();
            com.applovin.exoplayer2.e.k.a(q2 > 0, "childAtomSize must be positive");
            int q3 = yVar.q();
            if (q3 == 1635148593 || q3 == 1635148595 || q3 == 1701733238 || q3 == 1831958048 || q3 == 1836070006 || q3 == 1752589105 || q3 == 1751479857 || q3 == 1932670515 || q3 == 1211250227 || q3 == 1987063864 || q3 == 1987063865 || q3 == 1635135537 || q3 == 1685479798 || q3 == 1685479729 || q3 == 1685481573 || q3 == 1685481521) {
                i3 = c2;
                a(yVar, q3, i3, q2, i, i2, eVar, cVar, i4);
            } else if (q3 == 1836069985 || q3 == 1701733217 || q3 == 1633889587 || q3 == 1700998451 || q3 == 1633889588 || q3 == 1685353315 || q3 == 1685353317 || q3 == 1685353320 || q3 == 1685353324 || q3 == 1685353336 || q3 == 1935764850 || q3 == 1935767394 || q3 == 1819304813 || q3 == 1936684916 || q3 == 1953984371 || q3 == 778924082 || q3 == 778924083 || q3 == 1835557169 || q3 == 1835560241 || q3 == 1634492771 || q3 == 1634492791 || q3 == 1970037111 || q3 == 1332770163 || q3 == 1716281667) {
                i3 = c2;
                a(yVar, q3, c2, q2, i, str, z, eVar, cVar, i4);
            } else {
                if (q3 == 1414810956 || q3 == 1954034535 || q3 == 2004251764 || q3 == 1937010800 || q3 == 1664495672) {
                    a(yVar, q3, c2, q2, i, str, cVar);
                } else if (q3 == 1835365492) {
                    a(yVar, q3, c2, i, cVar);
                } else if (q3 == 1667329389) {
                    cVar.f2252b = new v.a().a(i).f(MimeTypes.APPLICATION_CAMERA_MOTION).a();
                }
                i3 = c2;
            }
            yVar.d(i3 + q2);
        }
        return cVar;
    }

    private static k a(a.C0036a c0036a, a.b bVar, long j, com.applovin.exoplayer2.d.e eVar, boolean z, boolean z2) throws com.applovin.exoplayer2.ai {
        a.b bVar2;
        long j2;
        long[] jArr;
        long[] jArr2;
        a.C0036a e2;
        Pair<long[], long[]> b2;
        a.C0036a c0036a2 = (a.C0036a) com.applovin.exoplayer2.l.a.b(c0036a.e(Atom.TYPE_mdia));
        int a2 = a(d(((a.b) com.applovin.exoplayer2.l.a.b(c0036a2.d(Atom.TYPE_hdlr))).f2241b));
        if (a2 == -1) {
            return null;
        }
        f c2 = c(((a.b) com.applovin.exoplayer2.l.a.b(c0036a.d(Atom.TYPE_tkhd))).f2241b);
        long j3 = C.TIME_UNSET;
        if (j == C.TIME_UNSET) {
            bVar2 = bVar;
            j2 = c2.f2264b;
        } else {
            bVar2 = bVar;
            j2 = j;
        }
        long b3 = b(bVar2.f2241b);
        if (j2 != C.TIME_UNSET) {
            j3 = ai.d(j2, 1000000L, b3);
        }
        long j4 = j3;
        Pair<Long, String> e3 = e(((a.b) com.applovin.exoplayer2.l.a.b(c0036a2.d(Atom.TYPE_mdhd))).f2241b);
        c a3 = a(((a.b) com.applovin.exoplayer2.l.a.b(((a.C0036a) com.applovin.exoplayer2.l.a.b(((a.C0036a) com.applovin.exoplayer2.l.a.b(c0036a2.e(Atom.TYPE_minf))).e(Atom.TYPE_stbl))).d(Atom.TYPE_stsd))).f2241b, c2.f2263a, c2.f2265c, (String) e3.second, eVar, z2);
        if (z || (e2 = c0036a.e(Atom.TYPE_edts)) == null || (b2 = b(e2)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            jArr2 = (long[]) b2.second;
            jArr = (long[]) b2.first;
        }
        if (a3.f2252b == null) {
            return null;
        }
        return new k(c2.f2263a, a2, ((Long) e3.first).longValue(), b3, j4, a3.f2252b, a3.f2254d, a3.f2251a, a3.f2253c, jArr, jArr2);
    }

    private static l a(y yVar, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            yVar.d(i5);
            int q = yVar.q();
            if (yVar.q() == 1952804451) {
                int a2 = com.applovin.exoplayer2.e.g.a.a(yVar.q());
                yVar.e(1);
                if (a2 == 0) {
                    yVar.e(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int h2 = yVar.h();
                    i3 = h2 & 15;
                    i4 = (h2 & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                }
                boolean z = yVar.h() == 1;
                int h3 = yVar.h();
                byte[] bArr2 = new byte[16];
                yVar.a(bArr2, 0, 16);
                if (z && h3 == 0) {
                    int h4 = yVar.h();
                    bArr = new byte[h4];
                    yVar.a(bArr, 0, h4);
                }
                return new l(z, str, h3, bArr2, i4, i3, bArr);
            }
            i5 += q;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0474  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.applovin.exoplayer2.e.g.n a(com.applovin.exoplayer2.e.g.k r38, com.applovin.exoplayer2.e.g.a.C0036a r39, com.applovin.exoplayer2.e.r r40) throws com.applovin.exoplayer2.ai {
        /*
            Method dump skipped, instructions count: 1332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.b.a(com.applovin.exoplayer2.e.g.k, com.applovin.exoplayer2.e.g.a$a, com.applovin.exoplayer2.e.r):com.applovin.exoplayer2.e.g.n");
    }

    public static com.applovin.exoplayer2.g.a a(a.C0036a c0036a) {
        a.b d2 = c0036a.d(Atom.TYPE_hdlr);
        a.b d3 = c0036a.d(Atom.TYPE_keys);
        a.b d4 = c0036a.d(Atom.TYPE_ilst);
        if (d2 == null || d3 == null || d4 == null || d(d2.f2241b) != 1835299937) {
            return null;
        }
        y yVar = d3.f2241b;
        yVar.d(12);
        int q = yVar.q();
        String[] strArr = new String[q];
        for (int i = 0; i < q; i++) {
            int q2 = yVar.q();
            yVar.e(4);
            strArr[i] = yVar.f(q2 - 8);
        }
        y yVar2 = d4.f2241b;
        yVar2.d(8);
        ArrayList arrayList = new ArrayList();
        while (yVar2.a() > 8) {
            int c2 = yVar2.c();
            int q3 = yVar2.q();
            int q4 = yVar2.q() - 1;
            if (q4 < 0 || q4 >= q) {
                q.c("AtomParsers", "Skipped metadata with unknown key index: " + q4);
            } else {
                com.applovin.exoplayer2.g.f.a a2 = com.applovin.exoplayer2.e.g.f.a(yVar2, c2 + q3, strArr[q4]);
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            yVar2.d(c2 + q3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.applovin.exoplayer2.g.a(arrayList);
    }

    private static com.applovin.exoplayer2.g.a a(y yVar, int i) {
        yVar.e(8);
        a(yVar);
        while (yVar.c() < i) {
            int c2 = yVar.c();
            int q = yVar.q();
            if (yVar.q() == 1768715124) {
                yVar.d(c2);
                return b(yVar, c2 + q);
            }
            yVar.d(c2 + q);
        }
        return null;
    }

    public static List<n> a(a.C0036a c0036a, r rVar, long j, com.applovin.exoplayer2.d.e eVar, boolean z, boolean z2, Function<k, k> function) throws com.applovin.exoplayer2.ai {
        k apply;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < c0036a.f2240d.size(); i++) {
            a.C0036a c0036a2 = c0036a.f2240d.get(i);
            if (c0036a2.f2237a == 1953653099 && (apply = function.apply(a(c0036a2, (a.b) com.applovin.exoplayer2.l.a.b(c0036a.d(Atom.TYPE_mvhd)), j, eVar, z, z2))) != null) {
                arrayList.add(a(apply, (a.C0036a) com.applovin.exoplayer2.l.a.b(((a.C0036a) com.applovin.exoplayer2.l.a.b(((a.C0036a) com.applovin.exoplayer2.l.a.b(c0036a2.e(Atom.TYPE_mdia))).e(Atom.TYPE_minf))).e(Atom.TYPE_stbl)), rVar));
            }
        }
        return arrayList;
    }

    public static void a(y yVar) {
        int c2 = yVar.c();
        yVar.e(4);
        if (yVar.q() != 1751411826) {
            c2 += 4;
        }
        yVar.d(c2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x018e, code lost:
        if (r1 != 3) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.applovin.exoplayer2.l.y r20, int r21, int r22, int r23, int r24, int r25, com.applovin.exoplayer2.d.e r26, com.applovin.exoplayer2.e.g.b.c r27, int r28) throws com.applovin.exoplayer2.ai {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.b.a(com.applovin.exoplayer2.l.y, int, int, int, int, int, com.applovin.exoplayer2.d.e, com.applovin.exoplayer2.e.g.b$c, int):void");
    }

    private static void a(y yVar, int i, int i2, int i3, int i4, String str, c cVar) {
        yVar.d(i2 + 16);
        String str2 = MimeTypes.APPLICATION_TTML;
        s sVar = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = i3 - 16;
                byte[] bArr = new byte[i5];
                yVar.a(bArr, 0, i5);
                sVar = s.a(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i == 1937010800) {
                j = 0;
            } else if (i != 1664495672) {
                throw new IllegalStateException();
            } else {
                cVar.f2254d = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        cVar.f2252b = new v.a().a(i4).f(str2).c(str).a(j).a(sVar).a();
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x0151  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.applovin.exoplayer2.l.y r20, int r21, int r22, int r23, int r24, java.lang.String r25, boolean r26, com.applovin.exoplayer2.d.e r27, com.applovin.exoplayer2.e.g.b.c r28, int r29) throws com.applovin.exoplayer2.ai {
        /*
            Method dump skipped, instructions count: 765
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.b.a(com.applovin.exoplayer2.l.y, int, int, int, int, java.lang.String, boolean, com.applovin.exoplayer2.d.e, com.applovin.exoplayer2.e.g.b$c, int):void");
    }

    private static void a(y yVar, int i, int i2, int i3, c cVar) {
        yVar.d(i2 + 16);
        if (i == 1835365492) {
            yVar.B();
            String B = yVar.B();
            if (B != null) {
                cVar.f2252b = new v.a().a(i3).f(B).a();
            }
        }
    }

    private static boolean a(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[ai.a(4, 0, length)] && jArr[ai.a(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    private static int b(y yVar, int i, int i2) throws com.applovin.exoplayer2.ai {
        int c2 = yVar.c();
        while (c2 - i < i2) {
            yVar.d(c2);
            int q = yVar.q();
            com.applovin.exoplayer2.e.k.a(q > 0, "childAtomSize must be positive");
            if (yVar.q() == 1702061171) {
                return c2;
            }
            c2 += q;
        }
        return -1;
    }

    private static long b(y yVar) {
        yVar.d(8);
        yVar.e(com.applovin.exoplayer2.e.g.a.a(yVar.q()) != 0 ? 16 : 8);
        return yVar.o();
    }

    private static Pair<long[], long[]> b(a.C0036a c0036a) {
        a.b d2 = c0036a.d(Atom.TYPE_elst);
        if (d2 == null) {
            return null;
        }
        y yVar = d2.f2241b;
        yVar.d(8);
        int a2 = com.applovin.exoplayer2.e.g.a.a(yVar.q());
        int w = yVar.w();
        long[] jArr = new long[w];
        long[] jArr2 = new long[w];
        for (int i = 0; i < w; i++) {
            jArr[i] = a2 == 1 ? yVar.y() : yVar.o();
            jArr2[i] = a2 == 1 ? yVar.s() : yVar.q();
            if (yVar.k() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            yVar.e(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static com.applovin.exoplayer2.g.a b(y yVar, int i) {
        yVar.e(8);
        ArrayList arrayList = new ArrayList();
        while (yVar.c() < i) {
            a.InterfaceC0042a a2 = com.applovin.exoplayer2.e.g.f.a(yVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.applovin.exoplayer2.g.a(arrayList);
    }

    private static Pair<Integer, l> c(y yVar, int i, int i2) throws com.applovin.exoplayer2.ai {
        Pair<Integer, l> a2;
        int c2 = yVar.c();
        while (c2 - i < i2) {
            yVar.d(c2);
            int q = yVar.q();
            com.applovin.exoplayer2.e.k.a(q > 0, "childAtomSize must be positive");
            if (yVar.q() == 1936289382 && (a2 = a(yVar, c2, q)) != null) {
                return a2;
            }
            c2 += q;
        }
        return null;
    }

    private static f c(y yVar) {
        long j;
        yVar.d(8);
        int a2 = com.applovin.exoplayer2.e.g.a.a(yVar.q());
        yVar.e(a2 == 0 ? 8 : 16);
        int q = yVar.q();
        yVar.e(4);
        int c2 = yVar.c();
        int i = a2 == 0 ? 4 : 8;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            j = C.TIME_UNSET;
            if (i3 >= i) {
                yVar.e(i);
                break;
            } else if (yVar.d()[c2 + i3] != -1) {
                long o = a2 == 0 ? yVar.o() : yVar.y();
                if (o != 0) {
                    j = o;
                }
            } else {
                i3++;
            }
        }
        yVar.e(16);
        int q2 = yVar.q();
        int q3 = yVar.q();
        yVar.e(4);
        int q4 = yVar.q();
        int q5 = yVar.q();
        if (q2 == 0 && q3 == 65536 && q4 == -65536 && q5 == 0) {
            i2 = 90;
        } else if (q2 == 0 && q3 == -65536 && q4 == 65536 && q5 == 0) {
            i2 = 270;
        } else if (q2 == -65536 && q3 == 0 && q4 == 0 && q5 == -65536) {
            i2 = 180;
        }
        return new f(q, j, i2);
    }

    private static com.applovin.exoplayer2.g.a c(y yVar, int i) {
        yVar.e(12);
        while (yVar.c() < i) {
            int c2 = yVar.c();
            int q = yVar.q();
            if (yVar.q() == 1935766900) {
                if (q < 14) {
                    return null;
                }
                yVar.e(5);
                int h2 = yVar.h();
                if (h2 == 12 || h2 == 13) {
                    float f2 = h2 == 12 ? 240.0f : 120.0f;
                    yVar.e(1);
                    return new com.applovin.exoplayer2.g.a(new com.applovin.exoplayer2.g.f.d(f2, yVar.h()));
                }
                return null;
            }
            yVar.d(c2 + q);
        }
        return null;
    }

    private static float d(y yVar, int i) {
        yVar.d(i + 8);
        return yVar.w() / yVar.w();
    }

    private static int d(y yVar) {
        yVar.d(16);
        return yVar.q();
    }

    private static byte[] d(y yVar, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            yVar.d(i3);
            int q = yVar.q();
            if (yVar.q() == 1886547818) {
                return Arrays.copyOfRange(yVar.d(), i3, q + i3);
            }
            i3 += q;
        }
        return null;
    }

    private static Pair<Long, String> e(y yVar) {
        yVar.d(8);
        int a2 = com.applovin.exoplayer2.e.g.a.a(yVar.q());
        yVar.e(a2 == 0 ? 8 : 16);
        long o = yVar.o();
        yVar.e(a2 == 0 ? 4 : 8);
        int i = yVar.i();
        return Pair.create(Long.valueOf(o), "" + ((char) (((i >> 10) & 31) + 96)) + ((char) (((i >> 5) & 31) + 96)) + ((char) ((i & 31) + 96)));
    }

    private static Pair<String, byte[]> e(y yVar, int i) {
        yVar.d(i + 12);
        yVar.e(1);
        f(yVar);
        yVar.e(2);
        int h2 = yVar.h();
        if ((h2 & 128) != 0) {
            yVar.e(2);
        }
        if ((h2 & 64) != 0) {
            yVar.e(yVar.i());
        }
        if ((h2 & 32) != 0) {
            yVar.e(2);
        }
        yVar.e(1);
        f(yVar);
        String a2 = u.a(yVar.h());
        if (MimeTypes.AUDIO_MPEG.equals(a2) || MimeTypes.AUDIO_DTS.equals(a2) || MimeTypes.AUDIO_DTS_HD.equals(a2)) {
            return Pair.create(a2, null);
        }
        yVar.e(12);
        yVar.e(1);
        int f2 = f(yVar);
        byte[] bArr = new byte[f2];
        yVar.a(bArr, 0, f2);
        return Pair.create(a2, bArr);
    }

    private static int f(y yVar) {
        int h2 = yVar.h();
        int i = h2 & 127;
        while ((h2 & 128) == 128) {
            h2 = yVar.h();
            i = (i << 7) | (h2 & 127);
        }
        return i;
    }
}
