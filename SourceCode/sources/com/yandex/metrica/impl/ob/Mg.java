package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.C1918v3;
import com.yandex.metrica.impl.ob.Eg;
import com.yandex.metrica.impl.ob.Hg;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class Mg extends Hg {
    private final Jg A;
    private List<String> o;
    private List<String> p;
    private String q;
    private String r;
    private Map<String, String> s;
    private C1918v3.a t;
    private List<String> u;
    private boolean v;
    private boolean w;
    private String x;
    private long y;
    private final C1859sg z;

    /* loaded from: classes5.dex */
    public static class b extends Eg.a<b, b> implements Dg<b, b> {

        /* renamed from: d  reason: collision with root package name */
        public final String f13501d;

        /* renamed from: e  reason: collision with root package name */
        public final String f13502e;

        /* renamed from: f  reason: collision with root package name */
        public final Map<String, String> f13503f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f13504g;

        /* renamed from: h  reason: collision with root package name */
        public final List<String> f13505h;

        public b(C2014z3 c2014z3) {
            this(c2014z3.b().d(), c2014z3.b().c(), c2014z3.b().b(), c2014z3.a().d(), c2014z3.a().e(), c2014z3.a().a(), c2014z3.a().j(), c2014z3.a().b());
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public /* bridge */ /* synthetic */ boolean b(b bVar) {
            return false;
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public b a(b bVar) {
            String str = this.f12885a;
            String str2 = bVar.f12885a;
            if (str != null) {
                str2 = str;
            }
            String str3 = this.f12886b;
            String str4 = bVar.f12886b;
            if (str3 != null) {
                str4 = str3;
            }
            String str5 = this.f12887c;
            String str6 = bVar.f12887c;
            if (str5 != null) {
                str6 = str5;
            }
            String str7 = this.f13501d;
            String str8 = bVar.f13501d;
            if (str7 != null) {
                str8 = str7;
            }
            String str9 = this.f13502e;
            String str10 = bVar.f13502e;
            if (str9 != null) {
                str10 = str9;
            }
            Map<String, String> map = this.f13503f;
            Map<String, String> map2 = bVar.f13503f;
            if (map != null) {
                map2 = map;
            }
            return new b(str2, str4, str6, str8, str10, map2, this.f13504g || bVar.f13504g, bVar.f13504g ? bVar.f13505h : this.f13505h);
        }

        public b(String str, String str2, String str3, String str4, String str5, Map<String, String> map, boolean z, List<String> list) {
            super(str, str2, str3);
            this.f13501d = str4;
            this.f13502e = str5;
            this.f13503f = map;
            this.f13504g = z;
            this.f13505h = list;
        }

        public b() {
            this(null, null, null, null, null, null, false, null);
        }
    }

    /* loaded from: classes5.dex */
    public static class c extends Hg.a<Mg, b> {

        /* renamed from: d  reason: collision with root package name */
        private final I f13506d;

        public c(Context context, String str) {
            this(context, str, new C1720mn(), F0.g().d());
        }

        @Override // com.yandex.metrica.impl.ob.Eg.d
        public Eg a(Object obj) {
            Eg.c cVar = (Eg.c) obj;
            Mg a2 = a(cVar);
            C1790pi c1790pi = cVar.f12890a;
            a2.c(c1790pi.s());
            a2.b(c1790pi.r());
            String str = ((b) cVar.f12891b).f13501d;
            if (str != null) {
                Mg.a(a2, str);
                Mg.b(a2, ((b) cVar.f12891b).f13502e);
            }
            Map<String, String> map = ((b) cVar.f12891b).f13503f;
            a2.a(map);
            a2.a(this.f13506d.a(new C1918v3.a(map, EnumC1891u0.APP)));
            a2.a(((b) cVar.f12891b).f13504g);
            a2.a(((b) cVar.f12891b).f13505h);
            a2.b(cVar.f12890a.q());
            a2.h(cVar.f12890a.g());
            a2.b(cVar.f12890a.o());
            return a2;
        }

        protected c(Context context, String str, C1720mn c1720mn, I i) {
            super(context, str, c1720mn);
            this.f13506d = i;
        }

        @Override // com.yandex.metrica.impl.ob.Eg.b
        protected Eg a() {
            return new Mg();
        }
    }

    public C1918v3.a B() {
        return this.t;
    }

    public Map<String, String> C() {
        return this.s;
    }

    public String D() {
        return this.x;
    }

    public String E() {
        return this.q;
    }

    public String F() {
        return this.r;
    }

    public List<String> G() {
        return this.u;
    }

    public C1859sg H() {
        return this.z;
    }

    public List<String> I() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (!A2.b(this.o)) {
            linkedHashSet.addAll(this.o);
        }
        if (!A2.b(this.p)) {
            linkedHashSet.addAll(this.p);
        }
        linkedHashSet.addAll(this.A.a());
        return new ArrayList(linkedHashSet);
    }

    public List<String> J() {
        return this.p;
    }

    public boolean K() {
        return this.v;
    }

    public boolean L() {
        return this.w;
    }

    public long a(long j) {
        if (this.y == 0) {
            this.y = j;
        }
        return this.y;
    }

    void b(boolean z) {
        this.w = z;
    }

    void c(List<String> list) {
        this.o = list;
    }

    public void h(String str) {
        this.x = str;
    }

    @Override // com.yandex.metrica.impl.ob.Hg, com.yandex.metrica.impl.ob.Eg
    public String toString() {
        return "StartupRequestConfig{mStartupHostsFromStartup=" + this.o + ", mStartupHostsFromClient=" + this.p + ", mDistributionReferrer='" + this.q + "', mInstallReferrerSource='" + this.r + "', mClidsFromClient=" + this.s + ", mNewCustomHosts=" + this.u + ", mHasNewCustomHosts=" + this.v + ", mSuccessfulStartup=" + this.w + ", mCountryInit='" + this.x + "', mFirstStartupTime=" + this.y + "} " + super.toString();
    }

    private Mg() {
        this(F0.g().m(), new Jg());
    }

    void b(long j) {
        if (this.y == 0) {
            this.y = j;
        }
    }

    Mg(C1859sg c1859sg, Jg jg) {
        this.t = new C1918v3.a(null, EnumC1891u0.APP);
        this.y = 0L;
        this.z = c1859sg;
        this.A = jg;
    }

    void a(Map<String, String> map) {
        this.s = map;
    }

    void b(List<String> list) {
        this.p = list;
    }

    static void b(Mg mg, String str) {
        mg.r = str;
    }

    void a(C1918v3.a aVar) {
        this.t = aVar;
    }

    static void a(Mg mg, String str) {
        mg.q = str;
    }

    public void a(List<String> list) {
        this.u = list;
    }

    public void a(boolean z) {
        this.v = z;
    }
}
