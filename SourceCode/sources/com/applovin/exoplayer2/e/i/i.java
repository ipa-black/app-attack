package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class i implements j {

    /* renamed from: a  reason: collision with root package name */
    private final List<ad.a> f2493a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.e.x[] f2494b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2495c;

    /* renamed from: d  reason: collision with root package name */
    private int f2496d;

    /* renamed from: e  reason: collision with root package name */
    private int f2497e;

    /* renamed from: f  reason: collision with root package name */
    private long f2498f = C.TIME_UNSET;

    public i(List<ad.a> list) {
        this.f2493a = list;
        this.f2494b = new com.applovin.exoplayer2.e.x[list.size()];
    }

    private boolean a(com.applovin.exoplayer2.l.y yVar, int i) {
        if (yVar.a() == 0) {
            return false;
        }
        if (yVar.h() != i) {
            this.f2495c = false;
        }
        this.f2496d--;
        return this.f2495c;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a() {
        this.f2495c = false;
        this.f2498f = C.TIME_UNSET;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f2495c = true;
        if (j != C.TIME_UNSET) {
            this.f2498f = j;
        }
        this.f2497e = 0;
        this.f2496d = 2;
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        for (int i = 0; i < this.f2494b.length; i++) {
            ad.a aVar = this.f2493a.get(i);
            dVar.a();
            com.applovin.exoplayer2.e.x a2 = jVar.a(dVar.b(), 3);
            a2.a(new v.a().a(dVar.c()).f(MimeTypes.APPLICATION_DVBSUBS).a(Collections.singletonList(aVar.f2435c)).c(aVar.f2433a).a());
            this.f2494b[i] = a2;
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void a(com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.e.x[] xVarArr;
        if (this.f2495c) {
            if (this.f2496d != 2 || a(yVar, 32)) {
                if (this.f2496d != 1 || a(yVar, 0)) {
                    int c2 = yVar.c();
                    int a2 = yVar.a();
                    for (com.applovin.exoplayer2.e.x xVar : this.f2494b) {
                        yVar.d(c2);
                        xVar.a(yVar, a2);
                    }
                    this.f2497e += a2;
                }
            }
        }
    }

    @Override // com.applovin.exoplayer2.e.i.j
    public void b() {
        if (this.f2495c) {
            if (this.f2498f != C.TIME_UNSET) {
                for (com.applovin.exoplayer2.e.x xVar : this.f2494b) {
                    xVar.a(this.f2498f, 1, this.f2497e, 0, null);
                }
            }
            this.f2495c = false;
        }
    }
}
