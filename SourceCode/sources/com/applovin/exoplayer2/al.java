package com.applovin.exoplayer2;

import com.applovin.exoplayer2.h.p;
import com.google.android.exoplayer2.C;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class al {
    private static final p.a t = new p.a(new Object());

    /* renamed from: a  reason: collision with root package name */
    public final ba f1352a;

    /* renamed from: b  reason: collision with root package name */
    public final p.a f1353b;

    /* renamed from: c  reason: collision with root package name */
    public final long f1354c;

    /* renamed from: d  reason: collision with root package name */
    public final long f1355d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1356e;

    /* renamed from: f  reason: collision with root package name */
    public final p f1357f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f1358g;

    /* renamed from: h  reason: collision with root package name */
    public final com.applovin.exoplayer2.h.ad f1359h;
    public final com.applovin.exoplayer2.j.k i;
    public final List<com.applovin.exoplayer2.g.a> j;
    public final p.a k;
    public final boolean l;
    public final int m;
    public final am n;
    public final boolean o;
    public final boolean p;
    public volatile long q;
    public volatile long r;
    public volatile long s;

    public al(ba baVar, p.a aVar, long j, long j2, int i, p pVar, boolean z, com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.k kVar, List<com.applovin.exoplayer2.g.a> list, p.a aVar2, boolean z2, int i2, am amVar, long j3, long j4, long j5, boolean z3, boolean z4) {
        this.f1352a = baVar;
        this.f1353b = aVar;
        this.f1354c = j;
        this.f1355d = j2;
        this.f1356e = i;
        this.f1357f = pVar;
        this.f1358g = z;
        this.f1359h = adVar;
        this.i = kVar;
        this.j = list;
        this.k = aVar2;
        this.l = z2;
        this.m = i2;
        this.n = amVar;
        this.q = j3;
        this.r = j4;
        this.s = j5;
        this.o = z3;
        this.p = z4;
    }

    public static al a(com.applovin.exoplayer2.j.k kVar) {
        ba baVar = ba.f1615a;
        p.a aVar = t;
        return new al(baVar, aVar, C.TIME_UNSET, 0L, 1, null, false, com.applovin.exoplayer2.h.ad.f3008a, kVar, com.applovin.exoplayer2.common.a.s.g(), aVar, false, 0, am.f1360a, 0L, 0L, 0L, false, false);
    }

    public static p.a a() {
        return t;
    }

    public al a(int i) {
        return new al(this.f1352a, this.f1353b, this.f1354c, this.f1355d, i, this.f1357f, this.f1358g, this.f1359h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public al a(am amVar) {
        return new al(this.f1352a, this.f1353b, this.f1354c, this.f1355d, this.f1356e, this.f1357f, this.f1358g, this.f1359h, this.i, this.j, this.k, this.l, this.m, amVar, this.q, this.r, this.s, this.o, this.p);
    }

    public al a(ba baVar) {
        return new al(baVar, this.f1353b, this.f1354c, this.f1355d, this.f1356e, this.f1357f, this.f1358g, this.f1359h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public al a(p.a aVar) {
        return new al(this.f1352a, this.f1353b, this.f1354c, this.f1355d, this.f1356e, this.f1357f, this.f1358g, this.f1359h, this.i, this.j, aVar, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public al a(p.a aVar, long j, long j2, long j3, long j4, com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.k kVar, List<com.applovin.exoplayer2.g.a> list) {
        return new al(this.f1352a, aVar, j2, j3, this.f1356e, this.f1357f, this.f1358g, adVar, kVar, list, this.k, this.l, this.m, this.n, this.q, j4, j, this.o, this.p);
    }

    public al a(p pVar) {
        return new al(this.f1352a, this.f1353b, this.f1354c, this.f1355d, this.f1356e, pVar, this.f1358g, this.f1359h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public al a(boolean z) {
        return new al(this.f1352a, this.f1353b, this.f1354c, this.f1355d, this.f1356e, this.f1357f, z, this.f1359h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public al a(boolean z, int i) {
        return new al(this.f1352a, this.f1353b, this.f1354c, this.f1355d, this.f1356e, this.f1357f, this.f1358g, this.f1359h, this.i, this.j, this.k, z, i, this.n, this.q, this.r, this.s, this.o, this.p);
    }

    public al b(boolean z) {
        return new al(this.f1352a, this.f1353b, this.f1354c, this.f1355d, this.f1356e, this.f1357f, this.f1358g, this.f1359h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, z, this.p);
    }

    public al c(boolean z) {
        return new al(this.f1352a, this.f1353b, this.f1354c, this.f1355d, this.f1356e, this.f1357f, this.f1358g, this.f1359h, this.i, this.j, this.k, this.l, this.m, this.n, this.q, this.r, this.s, this.o, z);
    }
}
