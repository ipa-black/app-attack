package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.yandex.metrica.IParamsCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.mi  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1715mi {

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f15218a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, W0> f15219b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f15220c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, String> f15221d;

    /* renamed from: e  reason: collision with root package name */
    private long f15222e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f15223f;

    /* renamed from: g  reason: collision with root package name */
    private C1544fl f15224g;

    /* renamed from: h  reason: collision with root package name */
    private C1829ra f15225h;
    private long i;
    private final List<InterfaceC1569gl> j;
    private final C1432b9 k;
    private final Rh l;
    private final Th m;
    private final Wh n;

    public C1715mi(Context context, C1432b9 c1432b9) {
        this(c1432b9, new Nh(), new Rh(), C1517ej.a(context).a(context, new C1592hj(c1432b9)), new Th(), new Wh(), new Vh());
    }

    private void b(String str, W0 w0) {
        if (a(w0)) {
            return;
        }
        this.f15219b.put(str, w0);
    }

    private void h() {
        this.k.i(this.f15219b.get("yandex_mobile_metrica_uuid")).e(this.f15219b.get("yandex_mobile_metrica_device_id")).d(this.f15219b.get("appmetrica_device_id_hash")).a(this.f15219b.get("yandex_mobile_metrica_get_ad_url")).b(this.f15219b.get("yandex_mobile_metrica_report_ad_url")).h(this.f15222e).h(this.f15219b.get(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS)).r(Tl.c(this.f15221d)).a(this.f15224g).a(this.f15225h).f(this.f15219b.get("yandex_mobile_metrica_google_adv_id")).g(this.f15219b.get("yandex_mobile_metrica_huawei_oaid")).j(this.f15219b.get("yandex_mobile_metrica_yandex_adv_id")).d(this.f15223f).c(this.m.a()).g(this.i).a(this.n.a()).d();
    }

    public void a(Map<String, String> map) {
        if (A2.b(map) || A2.a(map, this.f15221d)) {
            return;
        }
        this.f15221d = new HashMap(map);
        this.f15223f = true;
        h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        W0 w0 = this.f15219b.get("yandex_mobile_metrica_device_id");
        if (w0 == null) {
            return null;
        }
        return w0.f14173a;
    }

    public C1829ra d() {
        return this.f15225h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long e() {
        return this.f15222e;
    }

    public C1544fl f() {
        return this.f15224g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g() {
        W0 w0 = this.f15219b.get("yandex_mobile_metrica_uuid");
        if (w0 == null) {
            return null;
        }
        return w0.f14173a;
    }

    private boolean b(W0 w0) {
        return w0 == null || TextUtils.isEmpty(w0.f14173a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean b(List<String> list) {
        boolean z;
        boolean z2;
        z = true;
        boolean z3 = !a(C1740ni.a(list));
        Iterator<String> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            if (this.f15218a.contains(it.next())) {
                z2 = true;
                break;
            }
        }
        boolean a2 = C1740ni.a(this.i);
        C1544fl c1544fl = this.f15224g;
        boolean z4 = !(c1544fl != null && c1544fl.a());
        if (!z3 && !z2 && !a2) {
            if (!this.f15223f && !z4) {
                z = false;
            }
        }
        return z;
    }

    C1715mi(C1432b9 c1432b9, Nh nh, Rh rh, C1492dj c1492dj, Th th, Wh wh, Vh vh) {
        HashSet hashSet = new HashSet();
        this.f15218a = hashSet;
        this.f15219b = new HashMap();
        this.j = new ArrayList();
        hashSet.add("yandex_mobile_metrica_google_adv_id");
        hashSet.add("yandex_mobile_metrica_huawei_oaid");
        hashSet.add("yandex_mobile_metrica_yandex_adv_id");
        this.k = c1432b9;
        this.l = rh;
        this.m = th;
        this.n = wh;
        a("yandex_mobile_metrica_uuid", c1492dj.a());
        a("yandex_mobile_metrica_device_id", c1432b9.l());
        a("appmetrica_device_id_hash", c1432b9.k());
        a("yandex_mobile_metrica_get_ad_url", c1432b9.f());
        a("yandex_mobile_metrica_report_ad_url", c1432b9.g());
        b(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS, c1432b9.r());
        a("yandex_mobile_metrica_google_adv_id", c1432b9.o());
        a("yandex_mobile_metrica_huawei_oaid", c1432b9.p());
        a("yandex_mobile_metrica_yandex_adv_id", c1432b9.v());
        th.a(c1432b9.j());
        wh.a(c1432b9.n());
        this.f15220c = c1432b9.i();
        String k = c1432b9.k(null);
        this.f15221d = k != null ? Tl.a(k) : null;
        this.f15223f = c1432b9.b(true);
        this.f15222e = c1432b9.d(0L);
        this.f15224g = c1432b9.t();
        this.f15225h = c1432b9.m();
        this.i = c1432b9.q();
        h();
    }

    public boolean a() {
        W0 w0 = this.f15219b.get(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS);
        if (!a(w0) && w0.f14173a.isEmpty()) {
            return A2.b(this.f15221d);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<String> b() {
        return this.f15220c;
    }

    private void a(String str, W0 w0) {
        if (b(w0)) {
            return;
        }
        this.f15219b.put(str, w0);
    }

    private boolean a(W0 w0) {
        return w0 == null || w0.f14173a == null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(List<String> list, Map<String, W0> map) {
        for (String str : list) {
            W0 w0 = this.f15219b.get(str);
            if (w0 != null) {
                map.put(str, w0);
            }
        }
        this.m.a(list, map);
        this.n.a(list, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean a(Collection<String> collection) {
        for (String str : collection) {
            W0 w0 = this.f15219b.get(str);
            if (w0 == null) {
                w0 = this.m.b().get(str);
            }
            if (w0 == null) {
                w0 = this.n.a(str);
            }
            if (IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS.equals(str)) {
                if (this.f15223f || a(w0) || (w0.f14173a.isEmpty() && !A2.b(this.f15221d))) {
                    return false;
                }
            } else if (IParamsCallback.YANDEX_MOBILE_METRICA_FEATURE_LIB_SSL_ENABLED.equals(str)) {
                if (w0 == null) {
                    return false;
                }
            } else if (b(w0)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Bundle bundle) {
        HashMap<String, String> d2;
        boolean equals;
        L l = new L(bundle);
        W0 o = l.o();
        if (b(this.f15219b.get("yandex_mobile_metrica_uuid")) && !b(o) && !b(o)) {
            this.f15219b.put("yandex_mobile_metrica_uuid", o);
        }
        W0 c2 = l.c();
        if (!b(c2)) {
            this.f15219b.put("yandex_mobile_metrica_device_id", c2);
        }
        W0 d3 = l.d();
        if (!b(d3)) {
            this.f15219b.put("appmetrica_device_id_hash", d3);
        }
        this.f15219b.put("yandex_mobile_metrica_google_adv_id", l.g());
        this.f15219b.put("yandex_mobile_metrica_huawei_oaid", l.i());
        this.f15219b.put("yandex_mobile_metrica_yandex_adv_id", l.p());
        this.m.a(l.b());
        this.n.a(l.f());
        W0 h2 = l.h();
        if (!a(h2)) {
            this.f15219b.put("yandex_mobile_metrica_get_ad_url", h2);
        }
        W0 k = l.k();
        if (!a(k)) {
            this.f15219b.put("yandex_mobile_metrica_report_ad_url", k);
        }
        this.f15222e = l.m();
        Rh rh = this.l;
        Map<String, String> map = this.f15221d;
        String str = l.a().f14173a;
        if (str == null) {
            d2 = null;
        } else if (str.isEmpty()) {
            d2 = new HashMap<>();
        } else {
            d2 = Tl.d(str);
        }
        rh.getClass();
        if (A2.b(map)) {
            equals = A2.b(d2);
        } else {
            equals = map.equals(d2);
        }
        if (equals) {
            this.f15219b.put(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS, l.l());
            this.f15223f = false;
        }
        C1544fl n = l.n();
        if (n != null && n.a()) {
            this.f15224g = n;
            for (InterfaceC1569gl interfaceC1569gl : this.j) {
                interfaceC1569gl.a(this.f15224g);
            }
        }
        this.f15225h = l.e();
        this.i = l.j();
        h();
    }

    public synchronized void a(InterfaceC1569gl interfaceC1569gl) {
        this.j.add(interfaceC1569gl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<String> list) {
        this.f15220c = list;
        this.k.b(list);
    }
}
