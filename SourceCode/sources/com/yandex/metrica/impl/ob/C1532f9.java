package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C1814qi;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Sh;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.f9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1532f9 extends AbstractC1482d9 {

    /* renamed from: c  reason: collision with root package name */
    private Rd f14730c;

    /* renamed from: d  reason: collision with root package name */
    private Rd f14731d;

    /* renamed from: e  reason: collision with root package name */
    private Rd f14732e;

    /* renamed from: f  reason: collision with root package name */
    private Rd f14733f;

    /* renamed from: g  reason: collision with root package name */
    private Rd f14734g;
    @Deprecated

    /* renamed from: h  reason: collision with root package name */
    private Rd f14735h;
    private Rd i;
    @Deprecated
    private Rd j;
    private Rd k;
    private Rd l;
    private Rd m;
    private Rd n;
    private Rd o;
    private Rd p;
    private Rd q;
    private Rd r;
    private Rd s;
    private Rd t;
    private Rd u;
    private Rd v;
    static final Rd w = new Rd("PREF_KEY_UID_", null);
    private static final Rd x = new Rd("PREF_KEY_HOST_URL_", null);
    private static final Rd y = new Rd("PREF_KEY_HOST_URLS_FROM_STARTUP", null);
    private static final Rd z = new Rd("PREF_KEY_HOST_URLS_FROM_CLIENT", null);
    @Deprecated
    private static final Rd A = new Rd("PREF_KEY_REPORT_URL_", null);
    private static final Rd B = new Rd("PREF_KEY_REPORT_URLS_", null);
    @Deprecated
    private static final Rd C = new Rd("PREF_L_URL", null);
    private static final Rd D = new Rd("PREF_L_URLS", null);
    private static final Rd E = new Rd("PREF_KEY_GET_AD_URL", null);
    private static final Rd F = new Rd("PREF_KEY_REPORT_AD_URL", null);
    private static final Rd G = new Rd("PREF_KEY_STARTUP_OBTAIN_TIME_", null);
    private static final Rd H = new Rd("PREF_KEY_STARTUP_ENCODED_CLIDS_", null);
    static final Rd I = new Rd("PREF_KEY_DEVICE_ID_", null);
    private static final Rd J = new Rd("STARTUP_CLIDS_MATCH_WITH_APP_CLIDS_", null);
    @Deprecated
    private static final Rd K = new Rd("PREF_KEY_PINNING_UPDATE_URL", null);
    private static final Rd L = new Rd("PREF_KEY_EASY_COLLECTING_ENABLED_", null);
    private static final Rd M = new Rd("PREF_KEY_COLLECTING_PACKAGE_INFO_ENABLED_", null);
    private static final Rd N = new Rd("PREF_KEY_PERMISSIONS_COLLECTING_ENABLED_", null);
    private static final Rd O = new Rd("PREF_KEY_FEATURES_COLLECTING_ENABLED_", null);
    private static final Rd P = new Rd("SOCKET_CONFIG_", null);
    private static final Rd Q = new Rd("LAST_STARTUP_REQUEST_CLIDS", null);

    public C1532f9(S7 s7, String str) {
        super(s7, str);
        this.f14730c = new Rd(I.b());
        this.f14731d = d(w.b());
        this.f14732e = d(x.b());
        this.f14733f = d(y.b());
        this.f14734g = d(z.b());
        this.f14735h = d(A.b());
        this.i = d(B.b());
        this.j = d(C.b());
        this.k = d(D.b());
        this.l = d(E.b());
        this.m = d(F.b());
        this.n = d(G.b());
        this.o = d(H.b());
        this.p = d(J.b());
        this.q = d(L.b());
        this.r = d(M.b());
        this.s = d(N.b());
        this.t = d(O.b());
        this.v = d(Q.b());
        this.u = d(P.b());
    }

    public C1532f9 a(List<String> list) {
        return (C1532f9) b(this.k.a(), Tl.c(list));
    }

    public C1532f9 b(List<String> list) {
        return (C1532f9) b(this.i.a(), Tl.c(list));
    }

    public void f() {
        f(K.a());
        f(this.f14730c.a());
        f(this.l.a());
        f(this.r.a());
        f(this.q.a());
        f(this.o.a());
        f(this.t.a());
        f(this.f14732e.a());
        f(this.f14734g.a());
        f(this.f14733f.a());
        f(this.v.a());
        f(this.j.a());
        f(this.k.a());
        f(this.n.a());
        f(this.s.a());
        f(this.m.a());
        f(this.f14735h.a());
        f(this.i.a());
        f(this.u.a());
        f(this.p.a());
        f(this.f14731d.a());
        f(d(new Rd("PREF_KEY_DISTRIBUTION_REFERRER_", null).b()).a());
        d();
    }

    @Deprecated
    public C1814qi g() {
        C1814qi.b bVar;
        C1814qi.b bVar2;
        C1491di c1491di;
        C1814qi.b i = new C1814qi.b(new Sh(new Sh.a().d(a(this.q.a(), Sh.b.f13902b)).m(a(this.r.a(), Sh.b.f13903c)).n(a(this.s.a(), Sh.b.f13904d)).f(a(this.t.a(), Sh.b.f13905e)))).k(e(this.f14731d.a())).c(Tl.c(e(this.f14733f.a()))).b(Tl.c(e(this.f14734g.a()))).e(e(this.o.a())).i(Tl.c(e(this.i.a()))).e(Tl.c(e(this.k.a()))).f(e(this.l.a())).i(e(this.m.a()));
        String e2 = e(this.u.a());
        try {
        } catch (Throwable unused) {
            bVar = i;
        }
        if (!TextUtils.isEmpty(e2)) {
            JSONObject jSONObject = new JSONObject(e2);
            If.q qVar = new If.q();
            long j = jSONObject.getLong("seconds_to_live");
            String string = jSONObject.getString("token");
            JSONArray jSONArray = jSONObject.getJSONArray("ports");
            ArrayList arrayList = new ArrayList(jSONArray.length());
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(Integer.valueOf(jSONArray.getInt(i2)));
            }
            bVar = i;
            try {
                c1491di = new C1491di(j, string, arrayList, new ArrayList(), jSONObject.getLong("first_delay_seconds"), jSONObject.getInt("launch_delay_seconds"), jSONObject.optLong("open_event_interval_seconds", qVar.f13165g), qVar.f13166h, qVar.i, qVar.j);
                bVar2 = bVar;
            } catch (Throwable unused2) {
                bVar2 = bVar;
                c1491di = null;
                return bVar2.a(c1491di).h(e(this.v.a())).c(a(this.p.a(), true)).c(a(this.n.a(), -1L)).a();
            }
            return bVar2.a(c1491di).h(e(this.v.a())).c(a(this.p.a(), true)).c(a(this.n.a(), -1L)).a();
        }
        bVar2 = i;
        c1491di = null;
        return bVar2.a(c1491di).h(e(this.v.a())).c(a(this.p.a(), true)).c(a(this.n.a(), -1L)).a();
    }

    @Deprecated
    public String h(String str) {
        return a(this.f14735h.a(), (String) null);
    }

    @Deprecated
    public C1532f9 i(String str) {
        return (C1532f9) b(this.f14730c.a(), str);
    }

    public C1532f9 j(String str) {
        return (C1532f9) b(this.o.a(), str);
    }

    public C1532f9 k(String str) {
        return (C1532f9) b(this.l.a(), str);
    }

    public C1532f9 l(String str) {
        return (C1532f9) b(this.f14732e.a(), str);
    }

    public C1532f9 m(String str) {
        return (C1532f9) b(this.m.a(), str);
    }

    @Deprecated
    public C1532f9 n(String str) {
        return (C1532f9) b(this.f14735h.a(), str);
    }

    public C1532f9 o(String str) {
        return (C1532f9) b(this.f14731d.a(), str);
    }

    public C1532f9 a(boolean z2) {
        return (C1532f9) b(this.p.a(), z2);
    }

    public C1532f9 b(long j) {
        return (C1532f9) b(this.n.a(), j);
    }

    @Deprecated
    public String g(String str) {
        return a(this.j.a(), (String) null);
    }
}
