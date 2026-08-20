package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.e.k;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.l.ai;
import java.io.EOFException;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a implements f {

    /* renamed from: a  reason: collision with root package name */
    private final e f2348a;

    /* renamed from: b  reason: collision with root package name */
    private final long f2349b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2350c;

    /* renamed from: d  reason: collision with root package name */
    private final h f2351d;

    /* renamed from: e  reason: collision with root package name */
    private int f2352e;

    /* renamed from: f  reason: collision with root package name */
    private long f2353f;

    /* renamed from: g  reason: collision with root package name */
    private long f2354g;

    /* renamed from: h  reason: collision with root package name */
    private long f2355h;
    private long i;
    private long j;
    private long k;
    private long l;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.applovin.exoplayer2.e.h.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class C0038a implements v {
        private C0038a() {
        }

        @Override // com.applovin.exoplayer2.e.v
        public v.a a(long j) {
            return new v.a(new w(j, ai.a((a.this.f2349b + ((a.this.f2351d.b(j) * (a.this.f2350c - a.this.f2349b)) / a.this.f2353f)) - 30000, a.this.f2349b, a.this.f2350c - 1)));
        }

        @Override // com.applovin.exoplayer2.e.v
        public boolean a() {
            return true;
        }

        @Override // com.applovin.exoplayer2.e.v
        public long b() {
            return a.this.f2351d.a(a.this.f2353f);
        }
    }

    public a(h hVar, long j, long j2, long j3, long j4, boolean z) {
        com.applovin.exoplayer2.l.a.a(j >= 0 && j2 > j);
        this.f2351d = hVar;
        this.f2349b = j;
        this.f2350c = j2;
        if (j3 == j2 - j || z) {
            this.f2353f = j4;
            this.f2352e = 4;
        } else {
            this.f2352e = 0;
        }
        this.f2348a = new e();
    }

    private long c(com.applovin.exoplayer2.e.i iVar) throws IOException {
        if (this.i == this.j) {
            return -1L;
        }
        long c2 = iVar.c();
        if (!this.f2348a.a(iVar, this.j)) {
            long j = this.i;
            if (j != c2) {
                return j;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f2348a.a(iVar, false);
        iVar.a();
        long j2 = this.f2355h - this.f2348a.f2374c;
        int i = this.f2348a.f2379h + this.f2348a.i;
        if (0 > j2 || j2 >= 72000) {
            int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i2 < 0) {
                this.j = c2;
                this.l = this.f2348a.f2374c;
            } else {
                this.i = iVar.c() + i;
                this.k = this.f2348a.f2374c;
            }
            long j3 = this.j;
            long j4 = this.i;
            if (j3 - j4 < 100000) {
                this.j = j4;
                return j4;
            }
            long j5 = i;
            long j6 = i2 <= 0 ? 2L : 1L;
            long c3 = iVar.c();
            long j7 = this.j;
            long j8 = this.i;
            return ai.a((c3 - (j5 * j6)) + ((j2 * (j7 - j8)) / (this.l - this.k)), j8, j7 - 1);
        }
        return -1L;
    }

    private void d(com.applovin.exoplayer2.e.i iVar) throws IOException {
        while (true) {
            this.f2348a.a(iVar);
            this.f2348a.a(iVar, false);
            if (this.f2348a.f2374c > this.f2355h) {
                iVar.a();
                return;
            }
            iVar.b(this.f2348a.f2379h + this.f2348a.i);
            this.i = iVar.c();
            this.k = this.f2348a.f2374c;
        }
    }

    @Override // com.applovin.exoplayer2.e.h.f
    public long a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int i = this.f2352e;
        if (i == 0) {
            long c2 = iVar.c();
            this.f2354g = c2;
            this.f2352e = 1;
            long j = this.f2350c - 65307;
            if (j > c2) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long c3 = c(iVar);
                if (c3 != -1) {
                    return c3;
                }
                this.f2352e = 3;
            } else if (i != 3) {
                if (i == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            d(iVar);
            this.f2352e = 4;
            return -(this.k + 2);
        }
        this.f2353f = b(iVar);
        this.f2352e = 4;
        return this.f2354g;
    }

    @Override // com.applovin.exoplayer2.e.h.f
    /* renamed from: a */
    public C0038a b() {
        if (this.f2353f != 0) {
            return new C0038a();
        }
        return null;
    }

    @Override // com.applovin.exoplayer2.e.h.f
    public void a(long j) {
        this.f2355h = ai.a(j, 0L, this.f2353f - 1);
        this.f2352e = 2;
        this.i = this.f2349b;
        this.j = this.f2350c;
        this.k = 0L;
        this.l = this.f2353f;
    }

    long b(com.applovin.exoplayer2.e.i iVar) throws IOException {
        long j;
        this.f2348a.a();
        if (this.f2348a.a(iVar)) {
            this.f2348a.a(iVar, false);
            iVar.b(this.f2348a.f2379h + this.f2348a.i);
            do {
                j = this.f2348a.f2374c;
                if ((this.f2348a.f2373b & 4) == 4 || !this.f2348a.a(iVar) || iVar.c() >= this.f2350c || !this.f2348a.a(iVar, true)) {
                    break;
                }
            } while (k.a(iVar, this.f2348a.f2379h + this.f2348a.i));
            return j;
        }
        throw new EOFException();
    }
}
