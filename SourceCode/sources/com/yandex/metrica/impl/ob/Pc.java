package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
class Pc {

    /* renamed from: a  reason: collision with root package name */
    private c f13693a;

    /* renamed from: b  reason: collision with root package name */
    private a f13694b;

    /* renamed from: c  reason: collision with root package name */
    private b f13695c;

    /* renamed from: d  reason: collision with root package name */
    private Context f13696d;

    /* renamed from: e  reason: collision with root package name */
    private C1709mc f13697e;

    /* renamed from: f  reason: collision with root package name */
    private Rc f13698f;

    /* renamed from: g  reason: collision with root package name */
    private Sc f13699g;

    /* renamed from: h  reason: collision with root package name */
    private Rb f13700h;
    private final C1975xc i;
    private Yb j;
    private Map<String, C1999yc> k;

    /* loaded from: classes5.dex */
    public static class a {
    }

    /* loaded from: classes5.dex */
    public static class b {
    }

    /* loaded from: classes5.dex */
    public static class c {
    }

    public Pc(Context context, C1709mc c1709mc, Sc sc, Rb rb, Ph ph) {
        this(context, c1709mc, new c(), new C1975xc(ph), new a(), new b(), sc, rb);
    }

    public void a(Location location) {
        String provider = location.getProvider();
        C1999yc c1999yc = this.k.get(provider);
        if (c1999yc == null) {
            if (this.f13698f == null) {
                c cVar = this.f13693a;
                Context context = this.f13696d;
                cVar.getClass();
                this.f13698f = new Rc(null, C1632ja.a(context).f(), new Vb(context), new SystemTimeProvider(), F0.g().c(), F0.g().b());
            }
            if (this.j == null) {
                a aVar = this.f13694b;
                Rc rc = this.f13698f;
                C1975xc c1975xc = this.i;
                aVar.getClass();
                this.j = new Yb(rc, c1975xc);
            }
            b bVar = this.f13695c;
            C1709mc c1709mc = this.f13697e;
            Yb yb = this.j;
            Sc sc = this.f13699g;
            Rb rb = this.f13700h;
            bVar.getClass();
            c1999yc = new C1999yc(c1709mc, yb, null, 0L, new C1965x2(), sc, rb);
            this.k.put(provider, c1999yc);
        } else {
            c1999yc.a(this.f13697e);
        }
        c1999yc.a(location);
    }

    public C1975xc b() {
        return this.i;
    }

    Pc(Context context, C1709mc c1709mc, c cVar, C1975xc c1975xc, a aVar, b bVar, Sc sc, Rb rb) {
        this.k = new HashMap();
        this.f13696d = context;
        this.f13697e = c1709mc;
        this.f13693a = cVar;
        this.i = c1975xc;
        this.f13694b = aVar;
        this.f13695c = bVar;
        this.f13699g = sc;
        this.f13700h = rb;
    }

    public Location a() {
        return this.i.a();
    }

    public void a(C1709mc c1709mc) {
        this.f13697e = c1709mc;
    }

    public void a(C1790pi c1790pi) {
        if (c1790pi.d() != null) {
            this.i.c(c1790pi.d());
        }
    }
}
