package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.C1814qi;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.pi  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1790pi {
    private final C1466ci A;
    private final Zh B;
    private final RetryPolicyConfig C;
    private final C1909ui D;
    private final long E;
    private final long F;
    private final boolean G;
    private final C1960wl H;
    private final C1594hl I;
    private final C1594hl J;
    private final C1594hl K;
    private final C1597i L;
    private final Ph M;
    private final C1829ra N;
    private final List<String> O;
    private final Oh P;
    private final Uh Q;
    private final C1861si R;
    private final Map<String, Object> S;
    private final String T;
    private final String U;
    private final C1814qi V;

    /* renamed from: a  reason: collision with root package name */
    private final String f15394a;

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f15395b;

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f15396c;

    /* renamed from: d  reason: collision with root package name */
    private final List<String> f15397d;

    /* renamed from: e  reason: collision with root package name */
    private final List<String> f15398e;

    /* renamed from: f  reason: collision with root package name */
    private final List<String> f15399f;

    /* renamed from: g  reason: collision with root package name */
    private final List<String> f15400g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, List<String>> f15401h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private final String m;
    private final String n;
    private final String o;
    private final Sh p;
    private final List<C1759oc> q;
    private final C1491di r;
    private final long s;
    private final boolean t;
    private final boolean u;
    private final List<C1441bi> v;
    private final String w;
    private final C1885ti x;
    private final C1416ai y;
    private final List<Bd> z;

    /* renamed from: com.yandex.metrica.impl.ob.pi$a */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f15402a;

        /* renamed from: b  reason: collision with root package name */
        private String f15403b;

        /* renamed from: c  reason: collision with root package name */
        private final C1814qi.b f15404c;

        public a(C1814qi.b bVar) {
            this.f15404c = bVar;
        }

        public final a a(List<String> list) {
            this.f15404c.l = list;
            return this;
        }

        public final a b(List<String> list) {
            this.f15404c.k = list;
            return this;
        }

        public final a c(String str) {
            this.f15402a = str;
            return this;
        }

        public final a d(String str) {
            this.f15403b = str;
            return this;
        }

        public final a e(List<String> list) {
            this.f15404c.i = list;
            return this;
        }

        public final a f(List<String> list) {
            this.f15404c.Q = list;
            return this;
        }

        public final a g(List<String> list) {
            this.f15404c.m = list;
            return this;
        }

        public final a h(String str) {
            this.f15404c.p = str;
            return this;
        }

        public final a i(List<String> list) {
            this.f15404c.f15590d = list;
            return this;
        }

        public final a j(String str) {
            this.f15404c.f15593g = str;
            return this;
        }

        public final a k(String str) {
            this.f15404c.f15587a = str;
            return this;
        }

        public final a c(List<String> list) {
            this.f15404c.j = list;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final a d(List<? extends C1759oc> list) {
            this.f15404c.s = list;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final a a(Map<String, ? extends List<String>> map) {
            this.f15404c.n = map;
            return this;
        }

        public final a b(long j) {
            this.f15404c.b(j);
            return this;
        }

        public final a e(String str) {
            this.f15404c.o = str;
            return this;
        }

        public final a f(String str) {
            this.f15404c.f15591e = str;
            return this;
        }

        public final a g(String str) {
            this.f15404c.q = str;
            return this;
        }

        public final a h(List<? extends Bd> list) {
            this.f15404c.h((List<Bd>) list);
            return this;
        }

        public final a i(String str) {
            this.f15404c.f15592f = str;
            return this;
        }

        public final a j(List<? extends C1441bi> list) {
            this.f15404c.j((List<C1441bi>) list);
            return this;
        }

        public final a b(boolean z) {
            this.f15404c.F = z;
            return this;
        }

        public final a c(long j) {
            this.f15404c.v = j;
            return this;
        }

        public final a a(String str) {
            this.f15404c.f15594h = str;
            return this;
        }

        public final a b(String str) {
            this.f15404c.b(str);
            return this;
        }

        public final a c(boolean z) {
            this.f15404c.x = z;
            return this;
        }

        public final a a(C1491di c1491di) {
            this.f15404c.t = c1491di;
            return this;
        }

        public final a b(C1594hl c1594hl) {
            this.f15404c.K = c1594hl;
            return this;
        }

        public final a c(C1594hl c1594hl) {
            this.f15404c.L = c1594hl;
            return this;
        }

        public final a a(long j) {
            this.f15404c.a(j);
            return this;
        }

        public final a b(Map<String, ? extends Object> map) {
            this.f15404c.b(map);
            return this;
        }

        public final a a(boolean z) {
            this.f15404c.w = z;
            return this;
        }

        public final a a(C1885ti c1885ti) {
            this.f15404c.C = c1885ti;
            return this;
        }

        public final a a(C1416ai c1416ai) {
            this.f15404c.u = c1416ai;
            return this;
        }

        public final a a(C1466ci c1466ci) {
            this.f15404c.a(c1466ci);
            return this;
        }

        public final a a(Zh zh) {
            this.f15404c.a(zh);
            return this;
        }

        public final a a(RetryPolicyConfig retryPolicyConfig) {
            this.f15404c.H = retryPolicyConfig;
            return this;
        }

        public final a a(C1909ui c1909ui) {
            this.f15404c.I = c1909ui;
            return this;
        }

        public final a a(C1960wl c1960wl) {
            this.f15404c.J = c1960wl;
            return this;
        }

        public final a a(C1594hl c1594hl) {
            this.f15404c.M = c1594hl;
            return this;
        }

        public final a a(C1597i c1597i) {
            this.f15404c.N = c1597i;
            return this;
        }

        public final a a(Ph ph) {
            this.f15404c.O = ph;
            return this;
        }

        public final a a(C1829ra c1829ra) {
            this.f15404c.P = c1829ra;
            return this;
        }

        public final a a(Oh oh) {
            this.f15404c.R = oh;
            return this;
        }

        public final a a(C1939w0 c1939w0) {
            this.f15404c.S = c1939w0;
            return this;
        }

        public final a a(Uh uh) {
            this.f15404c.T = uh;
            return this;
        }

        public final a a(C1861si c1861si) {
            this.f15404c.a(c1861si);
            return this;
        }

        public final C1790pi a() {
            String str = this.f15402a;
            String str2 = this.f15403b;
            C1814qi a2 = this.f15404c.a();
            Intrinsics.checkNotNullExpressionValue(a2, "modelBuilder.build()");
            return new C1790pi(str, str2, a2, null);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.pi$b */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage<C1814qi> f15405a;

        /* renamed from: b  reason: collision with root package name */
        private final C1406a8 f15406b;

        public b(ProtobufStateStorage<C1814qi> protobufStateStorage, C1406a8 c1406a8) {
            this.f15405a = protobufStateStorage;
            this.f15406b = c1406a8;
        }

        public final C1790pi a() {
            String a2 = this.f15406b.a();
            String b2 = this.f15406b.b();
            Object read = this.f15405a.read();
            Intrinsics.checkNotNullExpressionValue(read, "modelStorage.read()");
            return new C1790pi(a2, b2, (C1814qi) read, null);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public b(android.content.Context r3) {
            /*
                r2 = this;
                java.lang.Class<com.yandex.metrica.impl.ob.qi> r0 = com.yandex.metrica.impl.ob.C1814qi.class
                com.yandex.metrica.impl.ob.fa r0 = com.yandex.metrica.impl.ob.InterfaceC1533fa.b.a(r0)
                com.yandex.metrica.core.api.ProtobufStateStorage r3 = r0.a(r3)
                java.lang.String r0 = "StorageFactory.Provider.…ass.java).create(context)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
                com.yandex.metrica.impl.ob.F0 r0 = com.yandex.metrica.impl.ob.F0.g()
                java.lang.String r1 = "GlobalServiceLocator.getInstance()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                com.yandex.metrica.impl.ob.e8 r0 = r0.w()
                com.yandex.metrica.impl.ob.a8 r0 = r0.a()
                r2.<init>(r3, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1790pi.b.<init>(android.content.Context):void");
        }

        public final void a(C1790pi c1790pi) {
            this.f15406b.a(c1790pi.i());
            this.f15406b.b(c1790pi.j());
            this.f15405a.save(c1790pi.V);
        }
    }

    private C1790pi(String str, String str2, C1814qi c1814qi) {
        this.T = str;
        this.U = str2;
        this.V = c1814qi;
        this.f15394a = c1814qi.f15579a;
        this.f15395b = c1814qi.f15582d;
        this.f15396c = c1814qi.i;
        this.f15397d = c1814qi.j;
        this.f15398e = c1814qi.k;
        this.f15399f = c1814qi.l;
        this.f15400g = c1814qi.m;
        this.f15401h = c1814qi.n;
        this.i = c1814qi.f15583e;
        this.j = c1814qi.f15584f;
        this.k = c1814qi.f15585g;
        this.l = c1814qi.f15586h;
        this.m = c1814qi.o;
        this.n = c1814qi.p;
        this.o = c1814qi.q;
        Sh sh = c1814qi.r;
        Intrinsics.checkNotNullExpressionValue(sh, "startupStateModel.collectingFlags");
        this.p = sh;
        List<C1759oc> list = c1814qi.s;
        Intrinsics.checkNotNullExpressionValue(list, "startupStateModel.locationCollectionConfigs");
        this.q = list;
        this.r = c1814qi.t;
        this.s = c1814qi.u;
        this.t = c1814qi.v;
        this.u = c1814qi.w;
        this.v = c1814qi.x;
        this.w = c1814qi.y;
        this.x = c1814qi.z;
        this.y = c1814qi.A;
        this.z = c1814qi.B;
        this.A = c1814qi.C;
        this.B = c1814qi.D;
        RetryPolicyConfig retryPolicyConfig = c1814qi.E;
        Intrinsics.checkNotNullExpressionValue(retryPolicyConfig, "startupStateModel.retryPolicyConfig");
        this.C = retryPolicyConfig;
        this.D = c1814qi.F;
        this.E = c1814qi.G;
        this.F = c1814qi.H;
        this.G = c1814qi.I;
        this.H = c1814qi.J;
        this.I = c1814qi.K;
        this.J = c1814qi.L;
        this.K = c1814qi.M;
        this.L = c1814qi.N;
        this.M = c1814qi.O;
        C1829ra c1829ra = c1814qi.P;
        Intrinsics.checkNotNullExpressionValue(c1829ra, "startupStateModel.diagnosticsConfigsHolder");
        this.N = c1829ra;
        List<String> list2 = c1814qi.Q;
        Intrinsics.checkNotNullExpressionValue(list2, "startupStateModel.mediascopeApiKeys");
        this.O = list2;
        this.P = c1814qi.R;
        Intrinsics.checkNotNullExpressionValue(c1814qi.S, "startupStateModel.easyCollectingConfig");
        this.Q = c1814qi.T;
        C1861si c1861si = c1814qi.U;
        Intrinsics.checkNotNullExpressionValue(c1861si, "startupStateModel.startupUpdateConfig");
        this.R = c1861si;
        Map<String, Object> map = c1814qi.V;
        Intrinsics.checkNotNullExpressionValue(map, "startupStateModel.modulesRemoteConfigs");
        this.S = map;
    }

    public final Map<String, Object> A() {
        return this.S;
    }

    public final long B() {
        return this.E;
    }

    public final long C() {
        return this.s;
    }

    public final boolean D() {
        return this.G;
    }

    public final List<Bd> E() {
        return this.z;
    }

    public final C1416ai F() {
        return this.y;
    }

    public final String G() {
        return this.j;
    }

    public final List<String> H() {
        return this.f15395b;
    }

    public final List<C1441bi> I() {
        return this.v;
    }

    public final RetryPolicyConfig J() {
        return this.C;
    }

    public final C1466ci K() {
        return this.A;
    }

    public final String L() {
        return this.k;
    }

    public final C1491di M() {
        return this.r;
    }

    public final boolean N() {
        return this.u;
    }

    public final C1861si O() {
        return this.R;
    }

    public final C1885ti P() {
        return this.x;
    }

    public final C1909ui Q() {
        return this.D;
    }

    public final C1594hl R() {
        return this.K;
    }

    public final C1594hl S() {
        return this.I;
    }

    public final C1960wl T() {
        return this.H;
    }

    public final C1594hl U() {
        return this.J;
    }

    public final String V() {
        return this.f15394a;
    }

    public final Oh b() {
        return this.P;
    }

    public final C1597i c() {
        return this.L;
    }

    public final Ph d() {
        return this.M;
    }

    public final String e() {
        return this.l;
    }

    public final Sh f() {
        return this.p;
    }

    public final String g() {
        return this.w;
    }

    public final Map<String, List<String>> h() {
        return this.f15401h;
    }

    public final String i() {
        return this.T;
    }

    public final String j() {
        return this.U;
    }

    public final List<String> k() {
        return this.f15399f;
    }

    public final C1829ra l() {
        return this.N;
    }

    public final Uh m() {
        return this.Q;
    }

    public final String n() {
        return this.m;
    }

    public final long o() {
        return this.F;
    }

    public final String p() {
        return this.i;
    }

    public final boolean q() {
        return this.t;
    }

    public final List<String> r() {
        return this.f15398e;
    }

    public final List<String> s() {
        return this.f15397d;
    }

    public final Zh t() {
        return this.B;
    }

    public String toString() {
        return "StartupState(deviceId=" + this.T + ", deviceIdHash=" + this.U + ", startupStateModel=" + this.V + ')';
    }

    public final String u() {
        return this.o;
    }

    public final String v() {
        return this.n;
    }

    public final List<C1759oc> w() {
        return this.q;
    }

    public final List<String> x() {
        return this.f15396c;
    }

    public final List<String> y() {
        return this.O;
    }

    public final List<String> z() {
        return this.f15400g;
    }

    public final a a() {
        Sh sh = this.V.r;
        Intrinsics.checkNotNullExpressionValue(sh, "startupStateModel.collectingFlags");
        C1814qi.b a2 = this.V.a(sh);
        Intrinsics.checkNotNullExpressionValue(a2, "startupStateModel.buildUpon(collectingFlags)");
        return new a(a2).c(this.T).d(this.U);
    }

    public /* synthetic */ C1790pi(String str, String str2, C1814qi c1814qi, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, c1814qi);
    }
}
