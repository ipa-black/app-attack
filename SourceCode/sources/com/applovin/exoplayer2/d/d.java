package com.applovin.exoplayer2.d;

import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.common.a.ax;
import com.applovin.exoplayer2.d.c;
import com.applovin.exoplayer2.k.q;
import com.applovin.exoplayer2.k.t;
import com.applovin.exoplayer2.l.ai;
import java.util.Map;
/* loaded from: classes.dex */
public final class d implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Object f2005a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private ab.d f2006b;

    /* renamed from: c  reason: collision with root package name */
    private h f2007c;

    /* renamed from: d  reason: collision with root package name */
    private t.b f2008d;

    /* renamed from: e  reason: collision with root package name */
    private String f2009e;

    private h a(ab.d dVar) {
        t.b bVar = this.f2008d;
        if (bVar == null) {
            bVar = new q.a().a(this.f2009e);
        }
        p pVar = new p(dVar.f1253b == null ? null : dVar.f1253b.toString(), dVar.f1257f, bVar);
        ax<Map.Entry<String, String>> it = dVar.f1254c.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            pVar.a(next.getKey(), next.getValue());
        }
        c a2 = new c.a().a(dVar.f1252a, o.f2038a).a(dVar.f1255d).b(dVar.f1256e).a(com.applovin.exoplayer2.common.b.c.a(dVar.f1258g)).a(pVar);
        a2.a(0, dVar.a());
        return a2;
    }

    @Override // com.applovin.exoplayer2.d.i
    public h a(ab abVar) {
        h hVar;
        com.applovin.exoplayer2.l.a.b(abVar.f1232c);
        ab.d dVar = abVar.f1232c.f1282c;
        if (dVar == null || ai.f3781a < 18) {
            return h.f2025b;
        }
        synchronized (this.f2005a) {
            if (!ai.a(dVar, this.f2006b)) {
                this.f2006b = dVar;
                this.f2007c = a(dVar);
            }
            hVar = (h) com.applovin.exoplayer2.l.a.b(this.f2007c);
        }
        return hVar;
    }
}
