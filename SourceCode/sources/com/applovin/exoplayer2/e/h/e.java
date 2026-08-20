package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.k;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;
/* loaded from: classes.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    public int f2372a;

    /* renamed from: b  reason: collision with root package name */
    public int f2373b;

    /* renamed from: c  reason: collision with root package name */
    public long f2374c;

    /* renamed from: d  reason: collision with root package name */
    public long f2375d;

    /* renamed from: e  reason: collision with root package name */
    public long f2376e;

    /* renamed from: f  reason: collision with root package name */
    public long f2377f;

    /* renamed from: g  reason: collision with root package name */
    public int f2378g;

    /* renamed from: h  reason: collision with root package name */
    public int f2379h;
    public int i;
    public final int[] j = new int[255];
    private final y k = new y(255);

    public void a() {
        this.f2372a = 0;
        this.f2373b = 0;
        this.f2374c = 0L;
        this.f2375d = 0L;
        this.f2376e = 0L;
        this.f2377f = 0L;
        this.f2378g = 0;
        this.f2379h = 0;
        this.i = 0;
    }

    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        return a(iVar, -1L);
    }

    public boolean a(com.applovin.exoplayer2.e.i iVar, long j) throws IOException {
        int i;
        com.applovin.exoplayer2.l.a.a(iVar.c() == iVar.b());
        this.k.a(4);
        while (true) {
            i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            if ((i == 0 || iVar.c() + 4 < j) && k.a(iVar, this.k.d(), 0, 4, true)) {
                this.k.d(0);
                if (this.k.o() == 1332176723) {
                    iVar.a();
                    return true;
                }
                iVar.b(1);
            }
        }
        do {
            if (i != 0 && iVar.c() >= j) {
                break;
            }
        } while (iVar.a(1) != -1);
        return false;
    }

    public boolean a(com.applovin.exoplayer2.e.i iVar, boolean z) throws IOException {
        a();
        this.k.a(27);
        if (k.a(iVar, this.k.d(), 0, 27, z) && this.k.o() == 1332176723) {
            int h2 = this.k.h();
            this.f2372a = h2;
            if (h2 != 0) {
                if (z) {
                    return false;
                }
                throw ai.a("unsupported bit stream revision");
            }
            this.f2373b = this.k.h();
            this.f2374c = this.k.t();
            this.f2375d = this.k.p();
            this.f2376e = this.k.p();
            this.f2377f = this.k.p();
            int h3 = this.k.h();
            this.f2378g = h3;
            this.f2379h = h3 + 27;
            this.k.a(h3);
            if (k.a(iVar, this.k.d(), 0, this.f2378g, z)) {
                for (int i = 0; i < this.f2378g; i++) {
                    this.j[i] = this.k.h();
                    this.i += this.j[i];
                }
                return true;
            }
            return false;
        }
        return false;
    }
}
