package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.ob.H0;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes5.dex */
public class Bc implements J0 {

    /* renamed from: a  reason: collision with root package name */
    private Pc f12689a;

    /* renamed from: b  reason: collision with root package name */
    private Cc f12690b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Ec<?>> f12691c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1784pc<Xb> f12692d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1784pc<Xb> f12693e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC1784pc<Xb> f12694f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC1784pc<C1460cc> f12695g;

    /* renamed from: h  reason: collision with root package name */
    private final H0 f12696h;
    private boolean i;

    public Bc(Cc cc, Pc pc) {
        this(cc, pc, F0.g().s());
    }

    @Override // com.yandex.metrica.impl.ob.J0
    public void a() {
        if (this.i) {
            for (Ec<?> ec : this.f12691c) {
                ec.c();
            }
        }
    }

    public Location b() {
        if (this.i) {
            return this.f12689a.a();
        }
        return null;
    }

    public void c() {
        if (this.i) {
            this.f12696h.c();
            for (Ec<?> ec : this.f12691c) {
                ec.a();
            }
        }
    }

    public void d() {
        this.f12696h.d();
        for (Ec<?> ec : this.f12691c) {
            ec.b();
        }
    }

    private Bc(Cc cc, Pc pc, C1507e9 c1507e9) {
        this(cc, pc, new C1535fc(cc, c1507e9), new C1659kc(cc, c1507e9), new Lc(cc), new C1510ec(cc, c1507e9, pc), new H0.c());
    }

    Bc(Cc cc, Pc pc, Pb pb, Pb pb2, Lc lc, C1510ec c1510ec, H0.c cVar) {
        Xb xb;
        C1460cc c1460cc;
        Xb xb2;
        Xb xb3;
        this.f12690b = cc;
        C1709mc c1709mc = cc.f12752c;
        if (c1709mc != null) {
            this.i = c1709mc.f15149g;
            xb = c1709mc.n;
            xb2 = c1709mc.o;
            xb3 = c1709mc.p;
            c1460cc = c1709mc.q;
        } else {
            xb = null;
            c1460cc = null;
            xb2 = null;
            xb3 = null;
        }
        this.f12689a = pc;
        Ec<Xb> a2 = pb.a(pc, xb2);
        Ec<Xb> a3 = pb2.a(pc, xb);
        Ec<Xb> a4 = lc.a(pc, xb3);
        Ec<C1460cc> a5 = c1510ec.a(c1460cc);
        this.f12691c = Arrays.asList(a2, a3, a4, a5);
        this.f12692d = a3;
        this.f12693e = a2;
        this.f12694f = a4;
        this.f12695g = a5;
        H0 a6 = cVar.a(this.f12690b.f12750a.f13858b, this, this.f12689a.b());
        this.f12696h = a6;
        this.f12689a.b().a(a6);
    }

    public void a(C1790pi c1790pi) {
        this.f12689a.a(c1790pi);
    }

    public void a(C1709mc c1709mc) {
        this.i = c1709mc != null && c1709mc.f15149g;
        this.f12689a.a(c1709mc);
        ((Ec) this.f12692d).a(c1709mc == null ? null : c1709mc.n);
        ((Ec) this.f12693e).a(c1709mc == null ? null : c1709mc.o);
        ((Ec) this.f12694f).a(c1709mc == null ? null : c1709mc.p);
        ((Ec) this.f12695g).a(c1709mc != null ? c1709mc.q : null);
        a();
    }
}
