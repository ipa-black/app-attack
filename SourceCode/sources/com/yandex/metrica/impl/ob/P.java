package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes5.dex */
public class P {
    private static volatile P j;

    /* renamed from: a  reason: collision with root package name */
    private final Xl f13653a;

    /* renamed from: b  reason: collision with root package name */
    private final C1672l0 f13654b;

    /* renamed from: c  reason: collision with root package name */
    private final Im f13655c;

    /* renamed from: d  reason: collision with root package name */
    private final C2012z1 f13656d;

    /* renamed from: e  reason: collision with root package name */
    private final C1795q f13657e;

    /* renamed from: f  reason: collision with root package name */
    private final C1749o2 f13658f;

    /* renamed from: g  reason: collision with root package name */
    private final C1398a0 f13659g;

    /* renamed from: h  reason: collision with root package name */
    private final C1771p f13660h;
    private final C2027zg i;

    private P() {
        this(new Xl(), new C1795q(), new Im());
    }

    public static P g() {
        if (j == null) {
            synchronized (P.class) {
                if (j == null) {
                    j = new P(new Xl(), new C1795q(), new Im());
                }
            }
        }
        return j;
    }

    public C1771p a() {
        return this.f13660h;
    }

    public C1795q b() {
        return this.f13657e;
    }

    public ICommonExecutor c() {
        return this.f13655c.a();
    }

    public Im d() {
        return this.f13655c;
    }

    public C1398a0 e() {
        return this.f13659g;
    }

    public C1672l0 f() {
        return this.f13654b;
    }

    public Xl h() {
        return this.f13653a;
    }

    public C2012z1 i() {
        return this.f13656d;
    }

    public InterfaceC1445bm j() {
        return this.f13653a;
    }

    public C2027zg k() {
        return this.i;
    }

    public C1749o2 l() {
        return this.f13658f;
    }

    private P(Xl xl, C1795q c1795q, Im im) {
        this(xl, c1795q, im, new C1771p(c1795q, im.a()));
    }

    private P(Xl xl, C1795q c1795q, Im im, C1771p c1771p) {
        this(xl, new C1672l0(), im, c1771p, new C2012z1(xl), c1795q, new C1749o2(c1795q, im.a(), c1771p), new C1398a0(c1795q), new C2027zg());
    }

    P(Xl xl, C1672l0 c1672l0, Im im, C1771p c1771p, C2012z1 c2012z1, C1795q c1795q, C1749o2 c1749o2, C1398a0 c1398a0, C2027zg c2027zg) {
        this.f13653a = xl;
        this.f13654b = c1672l0;
        this.f13655c = im;
        this.f13660h = c1771p;
        this.f13656d = c2012z1;
        this.f13657e = c1795q;
        this.f13658f = c1749o2;
        this.f13659g = c1398a0;
        this.i = c2027zg;
    }
}
