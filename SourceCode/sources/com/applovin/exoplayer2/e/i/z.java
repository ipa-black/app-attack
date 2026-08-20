package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.List;
/* loaded from: classes.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.applovin.exoplayer2.v> f2644a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.e.x[] f2645b;

    public z(List<com.applovin.exoplayer2.v> list) {
        this.f2644a = list;
        this.f2645b = new com.applovin.exoplayer2.e.x[list.size()];
    }

    public void a(long j, com.applovin.exoplayer2.l.y yVar) {
        com.applovin.exoplayer2.e.b.a(j, yVar, this.f2645b);
    }

    public void a(com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        for (int i = 0; i < this.f2645b.length; i++) {
            dVar.a();
            com.applovin.exoplayer2.e.x a2 = jVar.a(dVar.b(), 3);
            com.applovin.exoplayer2.v vVar = this.f2644a.get(i);
            String str = vVar.l;
            com.applovin.exoplayer2.l.a.a(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption mime type provided: " + str);
            a2.a(new v.a().a(vVar.f4178a != null ? vVar.f4178a : dVar.c()).f(str).b(vVar.f4181d).c(vVar.f4180c).p(vVar.D).a(vVar.n).a());
            this.f2645b[i] = a2;
        }
    }
}
