package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;
/* loaded from: classes.dex */
public class c implements com.applovin.exoplayer2.e.h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f2363a = new l() { // from class: com.applovin.exoplayer2.e.h.c$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            com.applovin.exoplayer2.e.h[] a2;
            a2 = c.a();
            return a2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private j f2364b;

    /* renamed from: c  reason: collision with root package name */
    private h f2365c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2366d;

    private static y a(y yVar) {
        yVar.d(0);
        return yVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] a() {
        return new com.applovin.exoplayer2.e.h[]{new c()};
    }

    private boolean b(com.applovin.exoplayer2.e.i iVar) throws IOException {
        h gVar;
        e eVar = new e();
        if (eVar.a(iVar, true) && (eVar.f2373b & 2) == 2) {
            int min = Math.min(eVar.i, 8);
            y yVar = new y(min);
            iVar.d(yVar.d(), 0, min);
            if (b.a(a(yVar))) {
                gVar = new b();
            } else if (i.a(a(yVar))) {
                gVar = new i();
            } else if (g.a(a(yVar))) {
                gVar = new g();
            }
            this.f2365c = gVar;
            return true;
        }
        return false;
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        com.applovin.exoplayer2.l.a.a(this.f2364b);
        if (this.f2365c == null) {
            if (!b(iVar)) {
                throw ai.b("Failed to determine bitstream type", null);
            }
            iVar.a();
        }
        if (!this.f2366d) {
            x a2 = this.f2364b.a(0, 1);
            this.f2364b.a();
            this.f2365c.a(this.f2364b, a2);
            this.f2366d = true;
        }
        return this.f2365c.a(iVar, uVar);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        h hVar = this.f2365c;
        if (hVar != null) {
            hVar.a(j, j2);
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.f2364b = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        try {
            return b(iVar);
        } catch (ai unused) {
            return false;
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
