package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.impl.ob.C1402a4;
import com.yandex.metrica.impl.ob.C1429b6;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.K3;
import com.yandex.metrica.impl.ob.Lg;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class M3 {

    /* renamed from: a  reason: collision with root package name */
    private final b f13456a;

    /* renamed from: b  reason: collision with root package name */
    private final c f13457b;

    /* renamed from: c  reason: collision with root package name */
    protected final Context f13458c;

    /* renamed from: d  reason: collision with root package name */
    private final I3 f13459d;

    /* renamed from: e  reason: collision with root package name */
    private final D3.a f13460e;

    /* renamed from: f  reason: collision with root package name */
    private final AbstractC1933vi f13461f;

    /* renamed from: g  reason: collision with root package name */
    protected final C1790pi f13462g;

    /* renamed from: h  reason: collision with root package name */
    private final Lg.e f13463h;
    private final Dm i;
    private final ICommonExecutor j;
    private final C1524f1 k;
    private final int l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements C1402a4.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ S1 f13464a;

        a(M3 m3, S1 s1) {
            this.f13464a = s1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f13465a;

        b(String str) {
            this.f13465a = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Sl a() {
            return Ul.a(this.f13465a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C1470cm b() {
            return Ul.b(this.f13465a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final I3 f13466a;

        /* renamed from: b  reason: collision with root package name */
        private final C1632ja f13467b;

        c(Context context, I3 i3) {
            this(i3, C1632ja.a(context));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C1457c9 a() {
            return new C1457c9(this.f13467b.b(this.f13466a));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C1407a9 b() {
            return new C1407a9(this.f13467b.b(this.f13466a));
        }

        c(I3 i3, C1632ja c1632ja) {
            this.f13466a = i3;
            this.f13467b = c1632ja;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public M3(Context context, I3 i3, D3.a aVar, AbstractC1933vi abstractC1933vi, C1790pi c1790pi, Lg.e eVar, ICommonExecutor iCommonExecutor, int i, C1524f1 c1524f1) {
        this(context, i3, aVar, abstractC1933vi, c1790pi, eVar, iCommonExecutor, new Dm(), i, new b(aVar.f12786d), new c(context, i3), c1524f1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public M5 a() {
        return new M5(this.f13458c, this.f13459d, this.l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public L7 b(L3 l3) {
        return new L7(l3, C1632ja.a(this.f13458c).c(this.f13459d), new K7(l3.s()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b c() {
        return this.f13456a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c d() {
        return this.f13457b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public S1<L3> e(L3 l3) {
        S1<L3> s1 = new S1<>(l3, this.f13461f.a(), this.j);
        this.k.a(s1);
        return s1;
    }

    M3(Context context, I3 i3, D3.a aVar, AbstractC1933vi abstractC1933vi, C1790pi c1790pi, Lg.e eVar, ICommonExecutor iCommonExecutor, Dm dm, int i, b bVar, c cVar, C1524f1 c1524f1) {
        this.f13458c = context;
        this.f13459d = i3;
        this.f13460e = aVar;
        this.f13461f = abstractC1933vi;
        this.f13462g = c1790pi;
        this.f13463h = eVar;
        this.j = iCommonExecutor;
        this.i = dm;
        this.l = i;
        this.f13456a = bVar;
        this.f13457b = cVar;
        this.k = c1524f1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Z3 a(L3 l3) {
        return new Z3(new Lg.c(l3, this.f13463h), this.f13462g, new Lg.a(this.f13460e));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public I4 c(L3 l3) {
        return new I4(l3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public K3.b d(L3 l3) {
        return new K3.b(l3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1429b6 a(L3 l3, C1431b8 c1431b8, C1429b6.a aVar) {
        return new C1429b6(l3, new C1404a6(c1431b8), aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1402a4 a(C1457c9 c1457c9, C1431b8 c1431b8, C1429b6 c1429b6, L7 l7, C1842s c1842s, C1579h6 c1579h6, S1 s1) {
        return new C1402a4(c1457c9, c1431b8, c1429b6, l7, c1842s, this.i, c1579h6, this.l, new a(this, s1), new O3(c1431b8, new Y8(c1431b8)), new SystemTimeProvider());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1579h6 b() {
        return new C1579h6(this.f13458c, this.f13459d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1431b8 e() {
        return F0.g().w().a(this.f13459d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public L4<X4, L3> a(L3 l3, I4 i4) {
        return new L4<>(i4, l3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1683lb a(L7 l7) {
        return new C1683lb(l7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1807qb a(L7 l7, Z3 z3) {
        return new C1807qb(l7, z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1758ob a(List<InterfaceC1708mb> list, InterfaceC1783pb interfaceC1783pb) {
        return new C1758ob(list, interfaceC1783pb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public H a(C1457c9 c1457c9) {
        return new H(this.f13458c, c1457c9);
    }
}
