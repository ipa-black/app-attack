package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.coreutils.services.UtilityServiceConfiguration;
import com.yandex.metrica.coreutils.services.UtilityServiceLocator;
import com.yandex.metrica.impl.ob.C1845s2;
import com.yandex.metrica.impl.ob.C1974xb;
import com.yandex.metrica.impl.ob.InterfaceC1533fa;
import com.yandex.metrica.impl.ob.Jf;
import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class F0 {
    private static volatile F0 x;

    /* renamed from: a  reason: collision with root package name */
    private final Context f12906a;

    /* renamed from: b  reason: collision with root package name */
    private volatile C1859sg f12907b;

    /* renamed from: c  reason: collision with root package name */
    private volatile C1664kh f12908c;

    /* renamed from: d  reason: collision with root package name */
    private volatile Jf f12909d;

    /* renamed from: e  reason: collision with root package name */
    private volatile C1609ib f12910e;

    /* renamed from: f  reason: collision with root package name */
    private volatile C1845s2 f12911f;

    /* renamed from: g  reason: collision with root package name */
    private volatile C1490dh f12912g;
    private volatile Xj i;
    private volatile E j;
    private volatile C1624j2 k;
    private volatile C1808qc l;
    private volatile C1974xb m;
    private volatile Bb n;
    private volatile I1 o;
    private volatile I p;
    private volatile C1507e9 q;
    private volatile C1506e8 r;
    private C1524f1 t;
    private C1856sd u;
    private final InterfaceC1674l2 v = new a(this);

    /* renamed from: h  reason: collision with root package name */
    private volatile Pm f12913h = new Pm();
    private C1500e2 s = new C1500e2();
    private C1635jd w = new C1635jd();

    /* loaded from: classes5.dex */
    class a implements InterfaceC1674l2 {
        a(F0 f0) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
        public void a() {
            NetworkServiceLocator.getInstance().onCreate();
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1674l2
        public void b() {
            NetworkServiceLocator.getInstance().onDestroy();
        }
    }

    private F0(Context context) {
        this.f12906a = context;
        this.t = new C1524f1(context, this.f12913h.a());
        this.j = new E(this.f12913h.a(), this.t.b());
        NetworkServiceLocator.init();
    }

    public static void a(Context context) {
        if (x == null) {
            synchronized (F0.class) {
                if (x == null) {
                    x = new F0(context.getApplicationContext());
                }
            }
        }
    }

    public static F0 g() {
        return x;
    }

    private void y() {
        if (this.o == null) {
            synchronized (this) {
                if (this.o == null) {
                    ProtobufStateStorage a2 = InterfaceC1533fa.b.a(Ud.class).a(this.f12906a);
                    Ud ud = (Ud) a2.read();
                    Context context = this.f12906a;
                    C1437be c1437be = new C1437be();
                    Td td = new Td(ud);
                    C1562ge c1562ge = new C1562ge();
                    C1412ae c1412ae = new C1412ae(this.f12906a);
                    F0 g2 = g();
                    Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
                    C1507e9 s = g2.s();
                    Intrinsics.checkNotNullExpressionValue(s, "GlobalServiceLocator.get…ance().servicePreferences");
                    this.o = new I1(context, a2, c1437be, td, c1562ge, c1412ae, new C1462ce(s), new Vd(), ud, "[PreloadInfoStorage]");
                }
            }
        }
    }

    public C1938w b() {
        return this.t.a();
    }

    public E c() {
        return this.j;
    }

    public I d() {
        if (this.p == null) {
            synchronized (this) {
                if (this.p == null) {
                    ProtobufStateStorage a2 = InterfaceC1533fa.b.a(C1918v3.class).a(this.f12906a);
                    this.p = new I(this.f12906a, a2, new C1942w3(), new C1822r3(), new C1990y3(), new C1400a2(this.f12906a), new C1966x3(s()), new C1846s3(), (C1918v3) a2.read(), "[ClidsInfoStorage]");
                }
            }
        }
        return this.p;
    }

    public Context e() {
        return this.f12906a;
    }

    public C1609ib f() {
        if (this.f12910e == null) {
            synchronized (this) {
                if (this.f12910e == null) {
                    this.f12910e = new C1609ib(this.t.a(), new C1584hb());
                }
            }
        }
        return this.f12910e;
    }

    public C1524f1 h() {
        return this.t;
    }

    public C1808qc i() {
        C1808qc c1808qc = this.l;
        if (c1808qc == null) {
            synchronized (this) {
                c1808qc = this.l;
                if (c1808qc == null) {
                    c1808qc = new C1808qc(this.f12906a);
                    this.l = c1808qc;
                }
            }
        }
        return c1808qc;
    }

    public C1635jd j() {
        return this.w;
    }

    public I1 k() {
        y();
        return this.o;
    }

    public Jf l() {
        if (this.f12909d == null) {
            synchronized (this) {
                if (this.f12909d == null) {
                    Context context = this.f12906a;
                    ProtobufStateStorage a2 = InterfaceC1533fa.b.a(Jf.e.class).a(this.f12906a);
                    C1845s2 u = u();
                    if (this.f12908c == null) {
                        synchronized (this) {
                            if (this.f12908c == null) {
                                this.f12908c = new C1664kh();
                            }
                        }
                    }
                    this.f12909d = new Jf(context, a2, u, this.f12908c, this.f12913h.g(), new Ml());
                }
            }
        }
        return this.f12909d;
    }

    public C1859sg m() {
        if (this.f12907b == null) {
            synchronized (this) {
                if (this.f12907b == null) {
                    this.f12907b = new C1859sg(this.f12906a);
                }
            }
        }
        return this.f12907b;
    }

    public C1500e2 n() {
        return this.s;
    }

    public C1490dh o() {
        if (this.f12912g == null) {
            synchronized (this) {
                if (this.f12912g == null) {
                    this.f12912g = new C1490dh(this.f12906a, this.f12913h.g());
                }
            }
        }
        return this.f12912g;
    }

    public synchronized C1624j2 p() {
        return this.k;
    }

    public Pm q() {
        return this.f12913h;
    }

    public C1974xb r() {
        if (this.m == null) {
            synchronized (this) {
                if (this.m == null) {
                    this.m = new C1974xb(new C1974xb.h(), new C1974xb.d(), new C1974xb.c(), this.f12913h.a(), "ServiceInternal");
                }
            }
        }
        return this.m;
    }

    public C1507e9 s() {
        if (this.q == null) {
            synchronized (this) {
                if (this.q == null) {
                    this.q = new C1507e9(C1632ja.a(this.f12906a).i());
                }
            }
        }
        return this.q;
    }

    public synchronized C1856sd t() {
        if (this.u == null) {
            this.u = new C1856sd(this.f12906a);
        }
        return this.u;
    }

    public C1845s2 u() {
        if (this.f12911f == null) {
            synchronized (this) {
                if (this.f12911f == null) {
                    this.f12911f = new C1845s2(new C1845s2.b(s()));
                }
            }
        }
        return this.f12911f;
    }

    public Xj v() {
        if (this.i == null) {
            synchronized (this) {
                if (this.i == null) {
                    this.i = new Xj(this.f12906a, this.f12913h.h());
                }
            }
        }
        return this.i;
    }

    public synchronized C1506e8 w() {
        if (this.r == null) {
            this.r = new C1506e8(this.f12906a);
        }
        return this.r;
    }

    public synchronized void x() {
        UtilityServiceLocator.getInstance().initAsync();
        NetworkServiceLocator.getInstance().initAsync();
        this.t.a(this.v);
        l().a();
        y();
        i().b();
    }

    public synchronized void a(C1790pi c1790pi) {
        if (this.m != null) {
            this.m.a(c1790pi);
        }
        if (this.f12912g != null) {
            this.f12912g.b(c1790pi);
        }
        UtilityServiceLocator.getInstance().updateConfiguration(new UtilityServiceConfiguration(c1790pi.o(), c1790pi.B()));
        if (this.f12910e != null) {
            this.f12910e.b(c1790pi);
        }
    }

    public Bb a() {
        if (this.n == null) {
            synchronized (this) {
                if (this.n == null) {
                    this.n = new Bb(this.f12906a, Cb.a());
                }
            }
        }
        return this.n;
    }

    public synchronized void a(C1649k2 c1649k2) {
        this.k = new C1624j2(this.f12906a, c1649k2);
    }
}
