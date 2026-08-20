package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.ja  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1632ja {
    private static volatile C1632ja y;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, O7> f14988a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, S7> f14989b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, R7> f14990c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final M7 f14991d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f14992e;

    /* renamed from: f  reason: collision with root package name */
    private O7 f14993f;

    /* renamed from: g  reason: collision with root package name */
    private O7 f14994g;

    /* renamed from: h  reason: collision with root package name */
    private R7 f14995h;
    private R7 i;
    private R7 j;
    private R7 k;
    private S7 l;
    private S7 m;
    private S7 n;
    private S7 o;
    private S7 p;
    private S7 q;
    private U7 r;
    private T7 s;
    private V7 t;
    private S7 u;
    private C1581h8 v;
    private final B0 w;
    private final C1657ka x;

    public C1632ja(Context context, M7 m7, B0 b0) {
        this.f14992e = context;
        this.f14991d = m7;
        this.w = b0;
        this.x = new C1657ka(context, b0);
    }

    public static C1632ja a(Context context) {
        if (y == null) {
            synchronized (C1632ja.class) {
                if (y == null) {
                    y = new C1632ja(context.getApplicationContext(), C1630j8.a(), new B0());
                }
            }
        }
        return y;
    }

    private R7 k() {
        O7 o7;
        if (this.j == null) {
            synchronized (this) {
                if (this.f14994g == null) {
                    this.f14994g = new O7(this.f14992e, a("metrica_aip.db"), this.f14991d.a());
                }
                o7 = this.f14994g;
            }
            this.j = new C1583ha(new C1606i8(o7), "binary_data");
        }
        return this.j;
    }

    private S7 l() {
        C1581h8 c1581h8;
        if (this.p == null) {
            synchronized (this) {
                if (this.v == null) {
                    String a2 = a("metrica_client_data.db");
                    Context context = this.f14992e;
                    this.v = new C1581h8(context, a2, new C1889tm(context, "metrica_client_data.db"), this.f14991d.b());
                }
                c1581h8 = this.v;
            }
            this.p = new C1682la("preferences", c1581h8);
        }
        return this.p;
    }

    private R7 m() {
        if (this.f14995h == null) {
            this.f14995h = new C1583ha(new C1606i8(r()), "binary_data");
        }
        return this.f14995h;
    }

    public synchronized S7 b(I3 i3) {
        S7 s7;
        String i32 = i3.toString();
        s7 = this.f14989b.get(i32);
        if (s7 == null) {
            s7 = new C1682la(c(i3), "preferences");
            this.f14989b.put(i32, s7);
        }
        return s7;
    }

    public synchronized S7 c() {
        if (this.q == null) {
            this.q = new C1707ma(this.f14992e, W7.CLIENT, l());
        }
        return this.q;
    }

    public synchronized S7 d() {
        return l();
    }

    public synchronized T7 e() {
        if (this.s == null) {
            this.s = new T7(r());
        }
        return this.s;
    }

    public synchronized U7 f() {
        if (this.r == null) {
            this.r = new U7(r());
        }
        return this.r;
    }

    public synchronized S7 g() {
        if (this.u == null) {
            String a2 = a("metrica_multiprocess_data.db");
            Context context = this.f14992e;
            this.u = new C1682la("preferences", new C1581h8(context, a2, new C1889tm(context, "metrica_multiprocess_data.db"), this.f14991d.d()));
        }
        return this.u;
    }

    public synchronized V7 h() {
        if (this.t == null) {
            this.t = new V7(r(), "permissions");
        }
        return this.t;
    }

    public synchronized S7 i() {
        if (this.m == null) {
            Context context = this.f14992e;
            W7 w7 = W7.SERVICE;
            if (this.l == null) {
                this.l = new C1682la(r(), "preferences");
            }
            this.m = new C1707ma(context, w7, this.l);
        }
        return this.m;
    }

    public synchronized S7 j() {
        if (this.l == null) {
            this.l = new C1682la(r(), "preferences");
        }
        return this.l;
    }

    public synchronized R7 n() {
        if (this.i == null) {
            this.i = new C1608ia(this.f14992e, W7.SERVICE, m());
        }
        return this.i;
    }

    public synchronized R7 o() {
        return m();
    }

    public synchronized S7 p() {
        if (this.o == null) {
            Context context = this.f14992e;
            W7 w7 = W7.SERVICE;
            if (this.n == null) {
                this.n = new C1682la(r(), "startup");
            }
            this.o = new C1707ma(context, w7, this.n);
        }
        return this.o;
    }

    public synchronized S7 q() {
        if (this.n == null) {
            this.n = new C1682la(r(), "startup");
        }
        return this.n;
    }

    public synchronized O7 r() {
        String a2;
        if (this.f14993f == null) {
            File c2 = this.w.c(this.f14992e);
            X7 e2 = this.f14991d.e();
            Context context = this.f14992e;
            if (c2 == null || (a2 = this.x.a("metrica_data.db", c2)) == null) {
                a2 = a("metrica_data.db");
            }
            this.f14993f = new O7(context, a2, e2);
        }
        return this.f14993f;
    }

    public synchronized R7 b() {
        return k();
    }

    public synchronized O7 c(I3 i3) {
        O7 o7;
        String a2;
        String str = "db_metrica_" + i3;
        o7 = this.f14988a.get(str);
        if (o7 == null) {
            File c2 = this.w.c(this.f14992e);
            X7 c3 = this.f14991d.c();
            Context context = this.f14992e;
            if (c2 == null || (a2 = this.x.a(str, c2)) == null) {
                a2 = a(str);
            }
            O7 o72 = new O7(context, a2, c3);
            this.f14988a.put(str, o72);
            o7 = o72;
        }
        return o7;
    }

    public synchronized R7 a(I3 i3) {
        R7 r7;
        String i32 = i3.toString();
        r7 = this.f14990c.get(i32);
        if (r7 == null) {
            r7 = new C1583ha(new C1606i8(c(i3)), "binary_data");
            this.f14990c.put(i32, r7);
        }
        return r7;
    }

    public synchronized R7 a() {
        if (this.k == null) {
            this.k = new C1608ia(this.f14992e, W7.AUTO_INAPP, k());
        }
        return this.k;
    }

    private String a(String str) {
        return A2.a(21) ? this.x.a(str) : str;
    }
}
