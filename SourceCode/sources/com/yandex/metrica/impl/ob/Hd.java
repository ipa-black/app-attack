package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class Hd {

    /* renamed from: a  reason: collision with root package name */
    private Context f13045a;

    public Hd(Context context) {
        this.f13045a = context;
    }

    public void a() {
        SharedPreferences a2 = C1422b.a(this.f13045a, "_bidoptpreferences");
        if (a2.getAll().size() > 0) {
            Rd rd = Pd.p;
            String string = a2.getString(rd.b(), null);
            Pd pd = new Pd(this.f13045a, null);
            if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(pd.b((String) null))) {
                pd.i(string).b();
                a2.edit().remove(rd.b()).apply();
            }
            Map<String, ?> all = a2.getAll();
            if (all.size() > 0) {
                Iterator it = ((ArrayList) a(all, Pd.q.b())).iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    String string2 = a2.getString(new Rd(Pd.q.b(), str).a(), null);
                    Pd pd2 = new Pd(this.f13045a, str);
                    if (!TextUtils.isEmpty(string2) && TextUtils.isEmpty(pd2.h(null))) {
                        pd2.j(string2).b();
                    }
                }
            }
            a2.edit().clear().apply();
        }
    }

    public void b() {
        S7 p = C1632ja.a(this.f13045a).p();
        SharedPreferences a2 = C1422b.a(this.f13045a, "_startupserviceinfopreferences");
        C1532f9 c1532f9 = new C1532f9(p, null);
        Rd rd = Pd.p;
        String string = a2.getString(rd.b(), null);
        if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(c1532f9.g().f15580b)) {
            c1532f9.i(string).d();
            a2.edit().remove(rd.b()).apply();
        }
        C1532f9 c1532f92 = new C1532f9(p, this.f13045a.getPackageName());
        boolean z = a2.getBoolean(Pd.y.b(), false);
        if (z) {
            c1532f92.a(z).d();
        }
        a(p, this.f13045a.getPackageName());
        Iterator it = ((ArrayList) a(a2.getAll(), Pd.q.b())).iterator();
        while (it.hasNext()) {
            a(p, (String) it.next());
        }
    }

    private List<String> a(Map<String, ?> map, String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : map.keySet()) {
            if (str2.startsWith(str)) {
                arrayList.add(str2.replace(str, ""));
            }
        }
        return arrayList;
    }

    private void a(S7 s7, String str) {
        C1532f9 c1532f9 = new C1532f9(s7, str);
        Pd pd = new Pd(this.f13045a, str);
        String h2 = pd.h(null);
        if (!TextUtils.isEmpty(h2)) {
            c1532f9.o(h2);
        }
        String c2 = pd.c(null);
        if (!TextUtils.isEmpty(c2)) {
            c1532f9.j(c2);
        }
        String d2 = pd.d(null);
        if (!TextUtils.isEmpty(d2)) {
            c1532f9.k(d2);
        }
        String f2 = pd.f(null);
        if (!TextUtils.isEmpty(f2)) {
            c1532f9.m(f2);
        }
        String e2 = pd.e(null);
        if (!TextUtils.isEmpty(e2)) {
            c1532f9.l(e2);
        }
        long a2 = pd.a(-1L);
        if (a2 != -1) {
            c1532f9.b(a2);
        }
        String g2 = pd.g(null);
        if (!TextUtils.isEmpty(g2)) {
            c1532f9.n(g2);
        }
        c1532f9.d();
        pd.f();
    }
}
