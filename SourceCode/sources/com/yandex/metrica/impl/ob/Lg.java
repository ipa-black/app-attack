package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.Eg;
import com.yandex.metrica.impl.ob.Hg;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class Lg extends Hg {
    private boolean A;
    private String B;
    private List<String> C;
    private int D;
    private long E;
    private long F;
    private boolean G;
    private long H;
    private List<String> I;
    private boolean o;
    private Location p;
    private boolean q;
    private int r;
    private int s;
    private boolean t;
    private int u;
    private Boolean v;
    private e w;
    private final d x;
    private String y;
    private boolean z;

    /* loaded from: classes5.dex */
    public static final class a extends Eg.a<D3.a, a> {

        /* renamed from: d  reason: collision with root package name */
        public final String f13431d;

        /* renamed from: e  reason: collision with root package name */
        public final Location f13432e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f13433f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f13434g;

        /* renamed from: h  reason: collision with root package name */
        public final int f13435h;
        public final int i;
        public final int j;
        public final boolean k;
        public final boolean l;
        public final Map<String, String> m;
        public final int n;

        public a(D3.a aVar) {
            this(aVar.f12783a, aVar.f12784b, aVar.f12785c, aVar.f12786d, aVar.f12787e, aVar.f12788f, aVar.f12789g, aVar.f12790h, aVar.i, aVar.j, aVar.k, aVar.l, aVar.m, aVar.n);
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public Object a(Object obj) {
            D3.a aVar = (D3.a) obj;
            String str = aVar.f12783a;
            String str2 = this.f12885a;
            if (str != null) {
                str2 = str;
            }
            String str3 = aVar.f12784b;
            String str4 = this.f12886b;
            if (str3 != null) {
                str4 = str3;
            }
            String str5 = aVar.f12785c;
            String str6 = this.f12887c;
            if (str5 != null) {
                str6 = str5;
            }
            String str7 = aVar.f12786d;
            String str8 = this.f13431d;
            if (str7 != null) {
                str8 = str7;
            }
            Boolean bool = aVar.f12787e;
            Boolean valueOf = Boolean.valueOf(this.f13433f);
            if (bool != null) {
                valueOf = bool;
            }
            Location location = aVar.f12788f;
            Location location2 = this.f13432e;
            if (location != null) {
                location2 = location;
            }
            Boolean bool2 = aVar.f12789g;
            Boolean valueOf2 = Boolean.valueOf(this.f13434g);
            if (bool2 != null) {
                valueOf2 = bool2;
            }
            Integer num = aVar.f12790h;
            Integer valueOf3 = Integer.valueOf(this.f13435h);
            if (num != null) {
                valueOf3 = num;
            }
            Integer num2 = aVar.i;
            Integer valueOf4 = Integer.valueOf(this.i);
            if (num2 != null) {
                valueOf4 = num2;
            }
            Integer num3 = aVar.j;
            Integer valueOf5 = Integer.valueOf(this.j);
            if (num3 != null) {
                valueOf5 = num3;
            }
            Boolean bool3 = aVar.k;
            Boolean valueOf6 = Boolean.valueOf(this.k);
            if (bool3 != null) {
                valueOf6 = bool3;
            }
            Boolean bool4 = aVar.l;
            Boolean valueOf7 = Boolean.valueOf(this.l);
            if (bool4 != null) {
                valueOf7 = bool4;
            }
            Map<String, String> map = aVar.m;
            Map<String, String> map2 = this.m;
            if (map != null) {
                map2 = map;
            }
            Integer num4 = aVar.n;
            return new a(str2, str4, str6, str8, valueOf, location2, valueOf2, valueOf3, valueOf4, valueOf5, valueOf6, valueOf7, map2, num4 == null ? Integer.valueOf(this.n) : num4);
        }

        /* JADX WARN: Code restructure failed: missing block: B:123:0x01a3, code lost:
            if (r2.getExtras() == null) goto L113;
         */
        /* JADX WARN: Code restructure failed: missing block: B:124:0x01a5, code lost:
            r8 = r2.getExtras().equals(r8.getExtras());
         */
        /* JADX WARN: Code restructure failed: missing block: B:126:0x01b6, code lost:
            if (r8.getExtras() != null) goto L117;
         */
        /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
        @Override // com.yandex.metrica.impl.ob.Dg
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean b(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 447
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Lg.a.b(java.lang.Object):boolean");
        }

        a(String str, String str2, String str3, String str4, Boolean bool, Location location, Boolean bool2, Integer num, Integer num2, Integer num3, Boolean bool3, Boolean bool4, Map<String, String> map, Integer num4) {
            super(str, str2, str3);
            this.f13431d = str4;
            Boolean bool5 = Boolean.FALSE;
            this.f13433f = ((Boolean) Tl.a(bool, bool5)).booleanValue();
            this.f13432e = location;
            this.f13434g = ((Boolean) Tl.a(bool2, bool5)).booleanValue();
            this.f13435h = Math.max(10, ((Integer) Tl.a((int) num, 10)).intValue());
            this.i = ((Integer) Tl.a((int) num2, 7)).intValue();
            this.j = ((Integer) Tl.a((int) num3, 90)).intValue();
            this.k = ((Boolean) Tl.a(bool3, bool5)).booleanValue();
            this.l = ((Boolean) Tl.a(bool4, Boolean.TRUE)).booleanValue();
            this.m = map;
            this.n = ((Integer) Tl.a((int) num4, 1000)).intValue();
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class b implements e {

        /* renamed from: a  reason: collision with root package name */
        protected final C1845s2 f13436a;

        public b(C1845s2 c1845s2) {
            this.f13436a = c1845s2;
        }

        @Override // com.yandex.metrica.impl.ob.Lg.e
        public boolean a(Boolean bool) {
            Boolean bool2 = Boolean.TRUE;
            if (bool == null) {
                bool = bool2;
            }
            return bool.booleanValue();
        }
    }

    /* loaded from: classes5.dex */
    public static class c extends Hg.a<Lg, a> {

        /* renamed from: d  reason: collision with root package name */
        private final L3 f13437d;

        /* renamed from: e  reason: collision with root package name */
        private final e f13438e;

        /* renamed from: f  reason: collision with root package name */
        private final Rh f13439f;

        public c(L3 l3, e eVar) {
            this(l3, eVar, new Rh());
        }

        @Override // com.yandex.metrica.impl.ob.Eg.d
        public Eg a(Object obj) {
            Eg.c cVar = (Eg.c) obj;
            Lg a2 = a(cVar);
            Lg.a(a2, ((a) cVar.f12891b).f13431d);
            a2.a(this.f13437d.x().a());
            a2.a(this.f13437d.d().a());
            a2.d(((a) cVar.f12891b).f13433f);
            a2.a(((a) cVar.f12891b).f13432e);
            a2.c(((a) cVar.f12891b).f13434g);
            a2.d(((a) cVar.f12891b).f13435h);
            a2.c(((a) cVar.f12891b).i);
            a2.b(((a) cVar.f12891b).j);
            a2.e(((a) cVar.f12891b).k);
            a2.a(Boolean.valueOf(((a) cVar.f12891b).l), this.f13438e);
            a2.a(((a) cVar.f12891b).n);
            C1790pi c1790pi = cVar.f12890a;
            a aVar = (a) cVar.f12891b;
            a2.b(c1790pi.y().contains(aVar.f13431d) ? c1790pi.z() : c1790pi.H());
            a2.f(c1790pi.f().f13887c);
            if (c1790pi.F() != null) {
                a2.b(c1790pi.F().f14420a);
                a2.c(c1790pi.F().f14421b);
            }
            a2.b(c1790pi.f().f13888d);
            a2.h(c1790pi.n());
            a2.a(this.f13439f.a(aVar.m, c1790pi, F0.g().d()));
            return a2;
        }

        c(L3 l3, e eVar, Rh rh) {
            super(l3.g(), l3.e().b());
            this.f13437d = l3;
            this.f13438e = eVar;
            this.f13439f = rh;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.yandex.metrica.impl.ob.Eg.b
        public Eg a() {
            return new Lg(this.f13437d);
        }
    }

    /* loaded from: classes5.dex */
    public interface d {
    }

    /* loaded from: classes5.dex */
    public interface e {
        boolean a(Boolean bool);
    }

    Lg(d dVar) {
        this.x = dVar;
    }

    static void a(Lg lg, String str) {
        lg.y = str;
    }

    public String B() {
        return this.y;
    }

    public int C() {
        return this.D;
    }

    public List<String> D() {
        return this.I;
    }

    public String E() {
        String str = this.B;
        return str == null ? "" : str;
    }

    public boolean F() {
        return this.w.a(this.v);
    }

    public int G() {
        return this.s;
    }

    public Location H() {
        return this.p;
    }

    public int I() {
        return this.u;
    }

    public long J() {
        return this.H;
    }

    public long K() {
        return this.E;
    }

    public long L() {
        return this.F;
    }

    public List<String> M() {
        return this.C;
    }

    public int N() {
        return this.r;
    }

    public boolean O() {
        return this.A;
    }

    public boolean P() {
        return this.q;
    }

    public boolean Q() {
        return this.o;
    }

    public boolean R() {
        return this.z;
    }

    public boolean S() {
        return x() && !A2.b(this.C) && this.G;
    }

    public boolean T() {
        return ((L3) this.x).F();
    }

    public void b(List<String> list) {
        this.C = list;
    }

    public void c(long j) {
        this.F = j;
    }

    public void d(boolean z) {
        this.o = z;
    }

    public void e(boolean z) {
        this.t = z;
    }

    public void f(boolean z) {
        this.z = z;
    }

    void h(String str) {
        this.B = str;
    }

    @Override // com.yandex.metrica.impl.ob.Hg, com.yandex.metrica.impl.ob.Eg
    public String toString() {
        return "ReportRequestConfig{mLocationTracking=" + this.o + ", mManualLocation=" + this.p + ", mFirstActivationAsUpdate=" + this.q + ", mSessionTimeout=" + this.r + ", mDispatchPeriod=" + this.s + ", mLogEnabled=" + this.t + ", mMaxReportsCount=" + this.u + ", statisticSendingFromArguments=" + this.v + ", statisticsSendingStrategy=" + this.w + ", mPreloadInfoSendingStrategy=" + this.x + ", mApiKey='" + this.y + "', mPermissionsCollectingEnabled=" + this.z + ", mFeaturesCollectingEnabled=" + this.A + ", mClidsFromStartupResponse='" + this.B + "', mReportHosts=" + this.C + ", mAttributionId=" + this.D + ", mPermissionsCollectingIntervalSeconds=" + this.E + ", mPermissionsForceSendIntervalSeconds=" + this.F + ", mClidsFromClientMatchClidsFromStartupRequest=" + this.G + ", mMaxReportsInDbCount=" + this.H + ", mCertificates=" + this.I + "} " + super.toString();
    }

    public void a(Location location) {
        this.p = location;
    }

    public void b(long j) {
        this.E = j;
    }

    public void c(boolean z) {
        this.q = z;
    }

    public void d(int i) {
        this.r = i;
    }

    public void a(int i) {
        this.D = i;
    }

    public void b(boolean z) {
        this.A = z;
    }

    public void c(int i) {
        this.u = i;
    }

    public void a(long j) {
        this.H = j;
    }

    public void b(int i) {
        this.s = i;
    }

    public void a(List<String> list) {
        this.I = list;
    }

    public void a(Boolean bool, e eVar) {
        this.v = bool;
        this.w = eVar;
    }

    public void a(boolean z) {
        this.G = z;
    }
}
