package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.List;
/* loaded from: classes.dex */
final class af {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.applovin.exoplayer2.v> f2445a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.e.x[] f2446b;

    public af(List<com.applovin.exoplayer2.v> list) {
        this.f2445a = list;
        this.f2446b = new com.applovin.exoplayer2.e.x[list.size()];
    }

    public void a(long j, com.applovin.exoplayer2.l.y yVar) {
        if (yVar.a() < 9) {
            return;
        }
        int q = yVar.q();
        int q2 = yVar.q();
        int h2 = yVar.h();
        if (q == 434 && q2 == 1195456820 && h2 == 3) {
            com.applovin.exoplayer2.e.b.b(j, yVar, this.f2446b);
        }
    }

    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        for (int i = 0; i < this.f2446b.length; i++) {
            dVar.a();
            com.applovin.exoplayer2.e.x a2 = jVar.a(dVar.b(), 3);
            com.applovin.exoplayer2.v vVar = this.f2445a.get(i);
            String str = vVar.l;
            com.applovin.exoplayer2.l.a.a(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption mime type provided: " + str);
            a2.a(new v.a().a(dVar.c()).f(str).b(vVar.f4181d).c(vVar.f4180c).p(vVar.D).a(vVar.n).a());
            this.f2446b[i] = a2;
        }
    }
}
