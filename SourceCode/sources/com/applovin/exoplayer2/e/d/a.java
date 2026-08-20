package com.applovin.exoplayer2.e.d;

import com.applovin.exoplayer2.e.g.g;
import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.IOException;
/* loaded from: classes.dex */
public final class a implements h {

    /* renamed from: b  reason: collision with root package name */
    private j f2137b;

    /* renamed from: c  reason: collision with root package name */
    private int f2138c;

    /* renamed from: d  reason: collision with root package name */
    private int f2139d;

    /* renamed from: e  reason: collision with root package name */
    private int f2140e;

    /* renamed from: g  reason: collision with root package name */
    private com.applovin.exoplayer2.g.f.b f2142g;

    /* renamed from: h  reason: collision with root package name */
    private i f2143h;
    private c i;
    private g j;

    /* renamed from: a  reason: collision with root package name */
    private final y f2136a = new y(6);

    /* renamed from: f  reason: collision with root package name */
    private long f2141f = -1;

    private static com.applovin.exoplayer2.g.f.b a(String str, long j) throws IOException {
        b a2;
        if (j == -1 || (a2 = e.a(str)) == null) {
            return null;
        }
        return a2.a(j);
    }

    private void a() {
        a((a.InterfaceC0042a) com.applovin.exoplayer2.l.a.b(this.f2142g));
        this.f2138c = 5;
    }

    private void a(a.InterfaceC0042a... interfaceC0042aArr) {
        ((j) com.applovin.exoplayer2.l.a.b(this.f2137b)).a(1024, 4).a(new v.a().e(MimeTypes.IMAGE_JPEG).a(new com.applovin.exoplayer2.g.a(interfaceC0042aArr)).a());
    }

    private int b(i iVar) throws IOException {
        this.f2136a.a(2);
        iVar.d(this.f2136a.d(), 0, 2);
        return this.f2136a.i();
    }

    private void b() {
        a(new a.InterfaceC0042a[0]);
        ((j) com.applovin.exoplayer2.l.a.b(this.f2137b)).a();
        this.f2137b.a(new v.b(C.TIME_UNSET));
        this.f2138c = 6;
    }

    private void c(i iVar) throws IOException {
        this.f2136a.a(2);
        iVar.d(this.f2136a.d(), 0, 2);
        iVar.c(this.f2136a.i() - 2);
    }

    private void d(i iVar) throws IOException {
        int i;
        this.f2136a.a(2);
        iVar.b(this.f2136a.d(), 0, 2);
        int i2 = this.f2136a.i();
        this.f2139d = i2;
        if (i2 == 65498) {
            if (this.f2141f == -1) {
                b();
                return;
            }
            i = 4;
        } else if ((i2 >= 65488 && i2 <= 65497) || i2 == 65281) {
            return;
        } else {
            i = 1;
        }
        this.f2138c = i;
    }

    private void e(i iVar) throws IOException {
        this.f2136a.a(2);
        iVar.b(this.f2136a.d(), 0, 2);
        this.f2140e = this.f2136a.i() - 2;
        this.f2138c = 2;
    }

    private void f(i iVar) throws IOException {
        String B;
        if (this.f2139d == 65505) {
            y yVar = new y(this.f2140e);
            iVar.b(yVar.d(), 0, this.f2140e);
            if (this.f2142g == null && "http://ns.adobe.com/xap/1.0/".equals(yVar.B()) && (B = yVar.B()) != null) {
                com.applovin.exoplayer2.g.f.b a2 = a(B, iVar.d());
                this.f2142g = a2;
                if (a2 != null) {
                    this.f2141f = a2.f2929d;
                }
            }
        } else {
            iVar.b(this.f2140e);
        }
        this.f2138c = 0;
    }

    private void g(i iVar) throws IOException {
        if (iVar.b(this.f2136a.d(), 0, 1, true)) {
            iVar.a();
            if (this.j == null) {
                this.j = new g();
            }
            c cVar = new c(iVar, this.f2141f);
            this.i = cVar;
            if (this.j.a(cVar)) {
                this.j.a(new d(this.f2141f, (j) com.applovin.exoplayer2.l.a.b(this.f2137b)));
                a();
                return;
            }
        }
        b();
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(i iVar, u uVar) throws IOException {
        int i = this.f2138c;
        if (i == 0) {
            d(iVar);
            return 0;
        } else if (i == 1) {
            e(iVar);
            return 0;
        } else if (i == 2) {
            f(iVar);
            return 0;
        } else if (i == 4) {
            long c2 = iVar.c();
            long j = this.f2141f;
            if (c2 != j) {
                uVar.f2707a = j;
                return 1;
            }
            g(iVar);
            return 0;
        } else if (i != 5) {
            if (i == 6) {
                return -1;
            }
            throw new IllegalStateException();
        } else {
            if (this.i == null || iVar != this.f2143h) {
                this.f2143h = iVar;
                this.i = new c(iVar, this.f2141f);
            }
            int a2 = ((g) com.applovin.exoplayer2.l.a.b(this.j)).a(this.i, uVar);
            if (a2 == 1) {
                uVar.f2707a += this.f2141f;
            }
            return a2;
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        if (j == 0) {
            this.f2138c = 0;
            this.j = null;
        } else if (this.f2138c == 5) {
            ((g) com.applovin.exoplayer2.l.a.b(this.j)).a(j, j2);
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.f2137b = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(i iVar) throws IOException {
        if (b(iVar) != 65496) {
            return false;
        }
        int b2 = b(iVar);
        this.f2139d = b2;
        if (b2 == 65504) {
            c(iVar);
            this.f2139d = b(iVar);
        }
        if (this.f2139d != 65505) {
            return false;
        }
        iVar.c(2);
        this.f2136a.a(6);
        iVar.d(this.f2136a.d(), 0, 6);
        return this.f2136a.o() == 1165519206 && this.f2136a.i() == 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
        g gVar = this.j;
        if (gVar != null) {
            gVar.c();
        }
    }
}
