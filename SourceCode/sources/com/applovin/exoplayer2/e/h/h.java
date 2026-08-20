package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: b  reason: collision with root package name */
    private x f2383b;

    /* renamed from: c  reason: collision with root package name */
    private j f2384c;

    /* renamed from: d  reason: collision with root package name */
    private f f2385d;

    /* renamed from: e  reason: collision with root package name */
    private long f2386e;

    /* renamed from: f  reason: collision with root package name */
    private long f2387f;

    /* renamed from: g  reason: collision with root package name */
    private long f2388g;

    /* renamed from: h  reason: collision with root package name */
    private int f2389h;
    private int i;
    private long k;
    private boolean l;
    private boolean m;

    /* renamed from: a  reason: collision with root package name */
    private final d f2382a = new d();
    private a j = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        v f2390a;

        /* renamed from: b  reason: collision with root package name */
        f f2391b;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements f {
        private b() {
        }

        @Override // com.applovin.exoplayer2.e.h.f
        public long a(com.applovin.exoplayer2.e.i iVar) {
            return -1L;
        }

        @Override // com.applovin.exoplayer2.e.h.f
        public void a(long j) {
        }

        @Override // com.applovin.exoplayer2.e.h.f
        public com.applovin.exoplayer2.e.v b() {
            return new v.b(C.TIME_UNSET);
        }
    }

    private void a() {
        com.applovin.exoplayer2.l.a.a(this.f2383b);
        ai.a(this.f2384c);
    }

    private boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        while (this.f2382a.a(iVar)) {
            this.k = iVar.c() - this.f2387f;
            if (!a(this.f2382a.c(), this.f2387f, this.j)) {
                return true;
            }
            this.f2387f = iVar.c();
        }
        this.f2389h = 3;
        return false;
    }

    private int b(com.applovin.exoplayer2.e.i iVar) throws IOException {
        f bVar;
        if (a(iVar)) {
            this.i = this.j.f2390a.z;
            if (!this.m) {
                this.f2383b.a(this.j.f2390a);
                this.m = true;
            }
            if (this.j.f2391b != null) {
                bVar = this.j.f2391b;
            } else if (iVar.d() != -1) {
                e b2 = this.f2382a.b();
                this.f2385d = new com.applovin.exoplayer2.e.h.a(this, this.f2387f, iVar.d(), b2.f2379h + b2.i, b2.f2374c, (b2.f2373b & 4) != 0);
                this.f2389h = 2;
                this.f2382a.d();
                return 0;
            } else {
                bVar = new b();
            }
            this.f2385d = bVar;
            this.f2389h = 2;
            this.f2382a.d();
            return 0;
        }
        return -1;
    }

    private int b(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        long a2 = this.f2385d.a(iVar);
        if (a2 >= 0) {
            uVar.f2707a = a2;
            return 1;
        }
        if (a2 < -1) {
            c(-(a2 + 2));
        }
        if (!this.l) {
            this.f2384c.a((com.applovin.exoplayer2.e.v) com.applovin.exoplayer2.l.a.a(this.f2385d.b()));
            this.l = true;
        }
        if (this.k <= 0 && !this.f2382a.a(iVar)) {
            this.f2389h = 3;
            return -1;
        }
        this.k = 0L;
        y c2 = this.f2382a.c();
        long b2 = b(c2);
        if (b2 >= 0) {
            long j = this.f2388g;
            if (j + b2 >= this.f2386e) {
                long a3 = a(j);
                this.f2383b.a(c2, c2.b());
                this.f2383b.a(a3, 1, c2.b(), 0, null);
                this.f2386e = -1L;
            }
        }
        this.f2388g += b2;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        a();
        int i = this.f2389h;
        if (i != 0) {
            if (i == 1) {
                iVar.b((int) this.f2387f);
                this.f2389h = 2;
                return 0;
            } else if (i == 2) {
                ai.a(this.f2385d);
                return b(iVar, uVar);
            } else if (i == 3) {
                return -1;
            } else {
                throw new IllegalStateException();
            }
        }
        return b(iVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long a(long j) {
        return (j * 1000000) / this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, long j2) {
        this.f2382a.a();
        if (j == 0) {
            a(!this.l);
        } else if (this.f2389h != 0) {
            this.f2386e = b(j2);
            ((f) ai.a(this.f2385d)).a(this.f2386e);
            this.f2389h = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j jVar, x xVar) {
        this.f2384c = jVar;
        this.f2383b = xVar;
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        int i;
        if (z) {
            this.j = new a();
            this.f2387f = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.f2389h = i;
        this.f2386e = -1L;
        this.f2388g = 0L;
    }

    protected abstract boolean a(y yVar, long j, a aVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(long j) {
        return (this.i * j) / 1000000;
    }

    protected abstract long b(y yVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(long j) {
        this.f2388g = j;
    }
}
