package com.applovin.exoplayer2.e.i;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class ac implements com.applovin.exoplayer2.e.h {

    /* renamed from: a  reason: collision with root package name */
    public static final com.applovin.exoplayer2.e.l f2418a = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.i.ac$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            com.applovin.exoplayer2.e.h[] d2;
            d2 = ac.d();
            return d2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final int f2419b;

    /* renamed from: c  reason: collision with root package name */
    private final int f2420c;

    /* renamed from: d  reason: collision with root package name */
    private final List<ag> f2421d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2422e;

    /* renamed from: f  reason: collision with root package name */
    private final SparseIntArray f2423f;

    /* renamed from: g  reason: collision with root package name */
    private final ad.c f2424g;

    /* renamed from: h  reason: collision with root package name */
    private final SparseArray<ad> f2425h;
    private final SparseBooleanArray i;
    private final SparseBooleanArray j;
    private final ab k;
    private aa l;
    private com.applovin.exoplayer2.e.j m;
    private int n;
    private boolean o;
    private boolean p;
    private boolean q;
    private ad r;
    private int s;
    private int t;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements x {

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.x f2427b = new com.applovin.exoplayer2.l.x(new byte[4]);

        public a() {
        }

        @Override // com.applovin.exoplayer2.e.i.x
        public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        }

        @Override // com.applovin.exoplayer2.e.i.x
        public void a(com.applovin.exoplayer2.l.y yVar) {
            if (yVar.h() == 0 && (yVar.h() & 128) != 0) {
                yVar.e(6);
                int a2 = yVar.a() / 4;
                for (int i = 0; i < a2; i++) {
                    yVar.a(this.f2427b, 4);
                    int c2 = this.f2427b.c(16);
                    this.f2427b.b(3);
                    if (c2 == 0) {
                        this.f2427b.b(13);
                    } else {
                        int c3 = this.f2427b.c(13);
                        if (ac.this.f2425h.get(c3) == null) {
                            ac.this.f2425h.put(c3, new y(new b(c3)));
                            ac.b(ac.this);
                        }
                    }
                }
                if (ac.this.f2419b != 2) {
                    ac.this.f2425h.remove(0);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    private class b implements x {

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.x f2429b = new com.applovin.exoplayer2.l.x(new byte[5]);

        /* renamed from: c  reason: collision with root package name */
        private final SparseArray<ad> f2430c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        private final SparseIntArray f2431d = new SparseIntArray();

        /* renamed from: e  reason: collision with root package name */
        private final int f2432e;

        public b(int i) {
            this.f2432e = i;
        }

        private ad.b a(com.applovin.exoplayer2.l.y yVar, int i) {
            int c2 = yVar.c();
            int i2 = i + c2;
            int i3 = -1;
            String str = null;
            ArrayList arrayList = null;
            while (yVar.c() < i2) {
                int h2 = yVar.h();
                int c3 = yVar.c() + yVar.h();
                if (c3 > i2) {
                    break;
                }
                if (h2 == 5) {
                    long o = yVar.o();
                    if (o != 1094921523) {
                        if (o != 1161904947) {
                            if (o != 1094921524) {
                                if (o == 1212503619) {
                                    i3 = 36;
                                }
                            }
                            i3 = 172;
                        }
                        i3 = 135;
                    }
                    i3 = 129;
                } else {
                    if (h2 != 106) {
                        if (h2 != 122) {
                            if (h2 == 127) {
                                if (yVar.h() != 21) {
                                }
                                i3 = 172;
                            } else if (h2 == 123) {
                                i3 = TsExtractor.TS_STREAM_TYPE_DTS;
                            } else if (h2 == 10) {
                                str = yVar.f(3).trim();
                            } else if (h2 == 89) {
                                ArrayList arrayList2 = new ArrayList();
                                while (yVar.c() < c3) {
                                    String trim = yVar.f(3).trim();
                                    int h3 = yVar.h();
                                    byte[] bArr = new byte[4];
                                    yVar.a(bArr, 0, 4);
                                    arrayList2.add(new ad.a(trim, h3, bArr));
                                }
                                arrayList = arrayList2;
                                i3 = 89;
                            } else if (h2 == 111) {
                                i3 = 257;
                            }
                        }
                        i3 = 135;
                    }
                    i3 = 129;
                }
                yVar.e(c3 - yVar.c());
            }
            yVar.d(i2);
            return new ad.b(i3, str, arrayList, Arrays.copyOfRange(yVar.d(), c2, i2));
        }

        @Override // com.applovin.exoplayer2.e.i.x
        public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        }

        @Override // com.applovin.exoplayer2.e.i.x
        public void a(com.applovin.exoplayer2.l.y yVar) {
            ag agVar;
            if (yVar.h() != 2) {
                return;
            }
            if (ac.this.f2419b == 1 || ac.this.f2419b == 2 || ac.this.n == 1) {
                agVar = (ag) ac.this.f2421d.get(0);
            } else {
                agVar = new ag(((ag) ac.this.f2421d.get(0)).a());
                ac.this.f2421d.add(agVar);
            }
            if ((yVar.h() & 128) == 0) {
                return;
            }
            yVar.e(1);
            int i = yVar.i();
            int i2 = 3;
            yVar.e(3);
            yVar.a(this.f2429b, 2);
            this.f2429b.b(3);
            int i3 = 13;
            ac.this.t = this.f2429b.c(13);
            yVar.a(this.f2429b, 2);
            int i4 = 4;
            this.f2429b.b(4);
            yVar.e(this.f2429b.c(12));
            if (ac.this.f2419b == 2 && ac.this.r == null) {
                ad.b bVar = new ad.b(21, null, null, ai.f3786f);
                ac acVar = ac.this;
                acVar.r = acVar.f2424g.a(21, bVar);
                if (ac.this.r != null) {
                    ac.this.r.a(agVar, ac.this.m, new ad.d(i, 21, 8192));
                }
            }
            this.f2430c.clear();
            this.f2431d.clear();
            int a2 = yVar.a();
            while (a2 > 0) {
                yVar.a(this.f2429b, 5);
                int c2 = this.f2429b.c(8);
                this.f2429b.b(i2);
                int c3 = this.f2429b.c(i3);
                this.f2429b.b(i4);
                int c4 = this.f2429b.c(12);
                ad.b a3 = a(yVar, c4);
                if (c2 == 6 || c2 == 5) {
                    c2 = a3.f2436a;
                }
                a2 -= c4 + 5;
                int i5 = ac.this.f2419b == 2 ? c2 : c3;
                if (!ac.this.i.get(i5)) {
                    ad a4 = (ac.this.f2419b == 2 && c2 == 21) ? ac.this.r : ac.this.f2424g.a(c2, a3);
                    if (ac.this.f2419b != 2 || c3 < this.f2431d.get(i5, 8192)) {
                        this.f2431d.put(i5, c3);
                        this.f2430c.put(i5, a4);
                    }
                }
                i2 = 3;
                i4 = 4;
                i3 = 13;
            }
            int size = this.f2431d.size();
            for (int i6 = 0; i6 < size; i6++) {
                int keyAt = this.f2431d.keyAt(i6);
                int valueAt = this.f2431d.valueAt(i6);
                ac.this.i.put(keyAt, true);
                ac.this.j.put(valueAt, true);
                ad valueAt2 = this.f2430c.valueAt(i6);
                if (valueAt2 != null) {
                    if (valueAt2 != ac.this.r) {
                        valueAt2.a(agVar, ac.this.m, new ad.d(i, keyAt, 8192));
                    }
                    ac.this.f2425h.put(valueAt, valueAt2);
                }
            }
            if (ac.this.f2419b != 2) {
                ac.this.f2425h.remove(this.f2432e);
                ac acVar2 = ac.this;
                acVar2.n = acVar2.f2419b == 1 ? 0 : ac.this.n - 1;
                if (ac.this.n != 0) {
                    return;
                }
                ac.this.m.a();
            } else if (ac.this.o) {
                return;
            } else {
                ac.this.m.a();
                ac.this.n = 0;
            }
            ac.this.o = true;
        }
    }

    public ac() {
        this(0);
    }

    public ac(int i) {
        this(1, i, TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES);
    }

    public ac(int i, int i2, int i3) {
        this(i, new ag(0L), new g(i2), i3);
    }

    public ac(int i, ag agVar, ad.c cVar, int i2) {
        this.f2424g = (ad.c) com.applovin.exoplayer2.l.a.b(cVar);
        this.f2420c = i2;
        this.f2419b = i;
        if (i == 1 || i == 2) {
            this.f2421d = Collections.singletonList(agVar);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f2421d = arrayList;
            arrayList.add(agVar);
        }
        this.f2422e = new com.applovin.exoplayer2.l.y(new byte[9400], 0);
        this.i = new SparseBooleanArray();
        this.j = new SparseBooleanArray();
        this.f2425h = new SparseArray<>();
        this.f2423f = new SparseIntArray();
        this.k = new ab(i2);
        this.m = com.applovin.exoplayer2.e.j.f2646a;
        this.t = -1;
        b();
    }

    private int a() throws com.applovin.exoplayer2.ai {
        int c2 = this.f2422e.c();
        int b2 = this.f2422e.b();
        int a2 = ae.a(this.f2422e.d(), c2, b2);
        this.f2422e.d(a2);
        int i = a2 + TsExtractor.TS_PACKET_SIZE;
        if (i > b2) {
            int i2 = this.s + (a2 - c2);
            this.s = i2;
            if (this.f2419b == 2 && i2 > 376) {
                throw com.applovin.exoplayer2.ai.b("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.s = 0;
        }
        return i;
    }

    private void a(long j) {
        com.applovin.exoplayer2.e.j jVar;
        com.applovin.exoplayer2.e.v bVar;
        if (this.p) {
            return;
        }
        this.p = true;
        if (this.k.b() != C.TIME_UNSET) {
            aa aaVar = new aa(this.k.c(), this.k.b(), j, this.t, this.f2420c);
            this.l = aaVar;
            jVar = this.m;
            bVar = aaVar.a();
        } else {
            jVar = this.m;
            bVar = new v.b(this.k.b());
        }
        jVar.a(bVar);
    }

    private boolean a(int i) {
        return this.f2419b == 2 || this.o || !this.j.get(i, false);
    }

    static /* synthetic */ int b(ac acVar) {
        int i = acVar.n;
        acVar.n = i + 1;
        return i;
    }

    private void b() {
        this.i.clear();
        this.f2425h.clear();
        SparseArray<ad> a2 = this.f2424g.a();
        int size = a2.size();
        for (int i = 0; i < size; i++) {
            this.f2425h.put(a2.keyAt(i), a2.valueAt(i));
        }
        this.f2425h.put(0, new y(new a()));
        this.r = null;
    }

    private boolean b(com.applovin.exoplayer2.e.i iVar) throws IOException {
        byte[] d2 = this.f2422e.d();
        if (9400 - this.f2422e.c() < 188) {
            int a2 = this.f2422e.a();
            if (a2 > 0) {
                System.arraycopy(d2, this.f2422e.c(), d2, 0, a2);
            }
            this.f2422e.a(d2, a2);
        }
        while (this.f2422e.a() < 188) {
            int b2 = this.f2422e.b();
            int a3 = iVar.a(d2, b2, 9400 - b2);
            if (a3 == -1) {
                return false;
            }
            this.f2422e.c(b2 + a3);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] d() {
        return new com.applovin.exoplayer2.e.h[]{new ac()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        long d2 = iVar.d();
        if (this.o) {
            if (d2 != -1 && this.f2419b != 2 && !this.k.a()) {
                return this.k.a(iVar, uVar, this.t);
            }
            a(d2);
            if (this.q) {
                this.q = false;
                a(0L, 0L);
                if (iVar.c() != 0) {
                    uVar.f2707a = 0L;
                    return 1;
                }
            }
            aa aaVar = this.l;
            if (aaVar != null && aaVar.b()) {
                return this.l.a(iVar, uVar);
            }
        }
        if (b(iVar)) {
            int a2 = a();
            int b2 = this.f2422e.b();
            if (a2 > b2) {
                return 0;
            }
            int q = this.f2422e.q();
            if ((8388608 & q) == 0) {
                int i = (4194304 & q) != 0 ? 1 : 0;
                int i2 = (2096896 & q) >> 8;
                boolean z = (q & 32) != 0;
                ad adVar = (q & 16) != 0 ? this.f2425h.get(i2) : null;
                if (adVar != null) {
                    if (this.f2419b != 2) {
                        int i3 = q & 15;
                        int i4 = this.f2423f.get(i2, i3 - 1);
                        this.f2423f.put(i2, i3);
                        if (i4 != i3) {
                            if (i3 != ((i4 + 1) & 15)) {
                                adVar.a();
                            }
                        }
                    }
                    if (z) {
                        int h2 = this.f2422e.h();
                        i |= (this.f2422e.h() & 64) != 0 ? 2 : 0;
                        this.f2422e.e(h2 - 1);
                    }
                    boolean z2 = this.o;
                    if (a(i2)) {
                        this.f2422e.c(a2);
                        adVar.a(this.f2422e, i);
                        this.f2422e.c(b2);
                    }
                    if (this.f2419b != 2 && !z2 && this.o && d2 != -1) {
                        this.q = true;
                    }
                }
            }
            this.f2422e.d(a2);
            return 0;
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        aa aaVar;
        com.applovin.exoplayer2.l.a.b(this.f2419b != 2);
        int size = this.f2421d.size();
        for (int i = 0; i < size; i++) {
            ag agVar = this.f2421d.get(i);
            boolean z = agVar.c() == C.TIME_UNSET;
            if (!z) {
                long a2 = agVar.a();
                z = (a2 == C.TIME_UNSET || a2 == 0 || a2 == j2) ? false : true;
            }
            if (z) {
                agVar.a(j2);
            }
        }
        if (j2 != 0 && (aaVar = this.l) != null) {
            aaVar.a(j2);
        }
        this.f2422e.a(0);
        this.f2423f.clear();
        for (int i2 = 0; i2 < this.f2425h.size(); i2++) {
            this.f2425h.valueAt(i2).a();
        }
        this.s = 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.m = jVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        r1 = r1 + 1;
     */
    @Override // com.applovin.exoplayer2.e.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(com.applovin.exoplayer2.e.i r7) throws java.io.IOException {
        /*
            r6 = this;
            com.applovin.exoplayer2.l.y r0 = r6.f2422e
            byte[] r0 = r0.d()
            r1 = 940(0x3ac, float:1.317E-42)
            r2 = 0
            r7.d(r0, r2, r1)
            r1 = r2
        Ld:
            r3 = 188(0xbc, float:2.63E-43)
            if (r1 >= r3) goto L29
            r3 = r2
        L12:
            r4 = 5
            if (r3 >= r4) goto L24
            int r4 = r3 * 188
            int r4 = r4 + r1
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L21
            int r1 = r1 + 1
            goto Ld
        L21:
            int r3 = r3 + 1
            goto L12
        L24:
            r7.b(r1)
            r7 = 1
            return r7
        L29:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.ac.a(com.applovin.exoplayer2.e.i):boolean");
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
