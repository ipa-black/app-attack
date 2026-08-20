package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.e.v;
import com.google.android.exoplayer2.C;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes.dex */
public final class e implements com.applovin.exoplayer2.e.h {

    /* renamed from: a  reason: collision with root package name */
    public static final com.applovin.exoplayer2.e.l f2467a = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.i.e$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            com.applovin.exoplayer2.e.h[] a2;
            a2 = e.a();
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final int f2468b;

    /* renamed from: c  reason: collision with root package name */
    private final f f2469c;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2470d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.y f2471e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.x f2472f;

    /* renamed from: g  reason: collision with root package name */
    private com.applovin.exoplayer2.e.j f2473g;

    /* renamed from: h  reason: collision with root package name */
    private long f2474h;
    private long i;
    private int j;
    private boolean k;
    private boolean l;
    private boolean m;

    public e() {
        this(0);
    }

    public e(int i) {
        this.f2468b = (i & 2) != 0 ? i | 1 : i;
        this.f2469c = new f(true);
        this.f2470d = new com.applovin.exoplayer2.l.y(2048);
        this.j = -1;
        this.i = -1L;
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(10);
        this.f2471e = yVar;
        this.f2472f = new com.applovin.exoplayer2.l.x(yVar.d());
    }

    private static int a(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    private void a(long j, boolean z) {
        if (this.m) {
            return;
        }
        boolean z2 = (this.f2468b & 1) != 0 && this.j > 0;
        if (z2 && this.f2469c.c() == C.TIME_UNSET && !z) {
            return;
        }
        if (!z2 || this.f2469c.c() == C.TIME_UNSET) {
            this.f2473g.a(new v.b(C.TIME_UNSET));
        } else {
            this.f2473g.a(b(j, (this.f2468b & 2) != 0));
        }
        this.m = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] a() {
        return new com.applovin.exoplayer2.e.h[]{new e()};
    }

    private int b(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int i = 0;
        while (true) {
            iVar.d(this.f2471e.d(), 0, 10);
            this.f2471e.d(0);
            if (this.f2471e.m() != 4801587) {
                break;
            }
            this.f2471e.e(3);
            int v = this.f2471e.v();
            i += v + 10;
            iVar.c(v);
        }
        iVar.a();
        iVar.c(i);
        if (this.i == -1) {
            this.i = i;
        }
        return i;
    }

    private com.applovin.exoplayer2.e.v b(long j, boolean z) {
        return new com.applovin.exoplayer2.e.d(j, this.i, a(this.j, this.f2469c.c()), this.j, z);
    }

    private void c(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int c2;
        if (this.k) {
            return;
        }
        this.j = -1;
        iVar.a();
        long j = 0;
        if (iVar.c() == 0) {
            b(iVar);
        }
        int i = 0;
        int i2 = 0;
        do {
            try {
                if (!iVar.b(this.f2471e.d(), 0, 2, true)) {
                    break;
                }
                this.f2471e.d(0);
                if (!f.a(this.f2471e.i())) {
                    break;
                } else if (!iVar.b(this.f2471e.d(), 0, 4, true)) {
                    break;
                } else {
                    this.f2472f.a(14);
                    c2 = this.f2472f.c(13);
                    if (c2 <= 6) {
                        this.k = true;
                        throw ai.b("Malformed ADTS stream", null);
                    }
                    j += c2;
                    i2++;
                    if (i2 == 1000) {
                        break;
                    }
                }
            } catch (EOFException unused) {
            }
        } while (iVar.b(c2 - 6, true));
        i = i2;
        iVar.a();
        if (i > 0) {
            this.j = (int) (j / i);
        } else {
            this.j = -1;
        }
        this.k = true;
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        com.applovin.exoplayer2.l.a.a(this.f2473g);
        long d2 = iVar.d();
        int i = this.f2468b;
        if ((i & 2) != 0 || ((i & 1) != 0 && d2 != -1)) {
            c(iVar);
        }
        int a2 = iVar.a(this.f2470d.d(), 0, 2048);
        boolean z = a2 == -1;
        a(d2, z);
        if (z) {
            return -1;
        }
        this.f2470d.d(0);
        this.f2470d.c(a2);
        if (!this.l) {
            this.f2469c.a(this.f2474h, 4);
            this.l = true;
        }
        this.f2469c.a(this.f2470d);
        return 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        this.l = false;
        this.f2469c.a();
        this.f2474h = j2;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.f2473g = jVar;
        this.f2469c.a(jVar, new ad.d(0, 1));
        jVar.a();
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int b2 = b(iVar);
        int i = b2;
        int i2 = 0;
        int i3 = 0;
        do {
            iVar.d(this.f2471e.d(), 0, 2);
            this.f2471e.d(0);
            if (f.a(this.f2471e.i())) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                iVar.d(this.f2471e.d(), 0, 4);
                this.f2472f.a(14);
                int c2 = this.f2472f.c(13);
                if (c2 > 6) {
                    iVar.c(c2 - 6);
                    i3 += c2;
                }
            }
            i++;
            iVar.a();
            iVar.c(i);
            i2 = 0;
            i3 = 0;
        } while (i - b2 < 8192);
        return false;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
