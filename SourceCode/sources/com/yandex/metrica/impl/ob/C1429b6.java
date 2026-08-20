package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.b6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1429b6 {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f14439a;

    /* renamed from: b  reason: collision with root package name */
    private final C1404a6 f14440b;

    /* renamed from: c  reason: collision with root package name */
    private final a f14441c;

    /* renamed from: d  reason: collision with root package name */
    private final A0 f14442d;

    /* renamed from: e  reason: collision with root package name */
    private final U5<W5> f14443e;

    /* renamed from: f  reason: collision with root package name */
    private final U5<W5> f14444f;

    /* renamed from: g  reason: collision with root package name */
    private V5 f14445g;

    /* renamed from: h  reason: collision with root package name */
    private b f14446h;

    /* renamed from: com.yandex.metrica.impl.ob.b6$a */
    /* loaded from: classes5.dex */
    public interface a {
        void a(C1448c0 c1448c0, C1454c6 c1454c6);
    }

    /* renamed from: com.yandex.metrica.impl.ob.b6$b */
    /* loaded from: classes5.dex */
    public enum b {
        EMPTY,
        BACKGROUND,
        FOREGROUND
    }

    public C1429b6(L3 l3, C1404a6 c1404a6, a aVar) {
        this(l3, c1404a6, aVar, new T5(l3, c1404a6), new S5(l3, c1404a6), new A0(l3.g()));
    }

    private void e(C1448c0 c1448c0) {
        if (this.f14446h == null) {
            V5 b2 = ((R5) this.f14443e).b();
            if (a(b2, c1448c0)) {
                this.f14445g = b2;
                this.f14446h = b.FOREGROUND;
                return;
            }
            V5 b3 = ((R5) this.f14444f).b();
            if (a(b3, c1448c0)) {
                this.f14445g = b3;
                this.f14446h = b.BACKGROUND;
                return;
            }
            this.f14445g = null;
            this.f14446h = b.EMPTY;
        }
    }

    public synchronized long a() {
        V5 v5;
        v5 = this.f14445g;
        return v5 == null ? 10000000000L : v5.c() - 1;
    }

    public C1454c6 b(C1448c0 c1448c0) {
        return a(c(c1448c0), c1448c0.e());
    }

    public synchronized V5 c(C1448c0 c1448c0) {
        e(c1448c0);
        b bVar = this.f14446h;
        b bVar2 = b.EMPTY;
        if (bVar != bVar2 && !a(this.f14445g, c1448c0)) {
            this.f14446h = bVar2;
            this.f14445g = null;
        }
        int ordinal = this.f14446h.ordinal();
        if (ordinal == 1) {
            this.f14445g.c(c1448c0.e());
            return this.f14445g;
        } else if (ordinal != 2) {
            this.f14446h = b.BACKGROUND;
            long e2 = c1448c0.e();
            V5 a2 = ((R5) this.f14444f).a(new W5(e2, c1448c0.f()));
            if (this.f14439a.x().k()) {
                this.f14441c.a(C1448c0.a(c1448c0, this.f14442d), a(a2, c1448c0.e()));
            } else if (c1448c0.o() == EnumC1399a1.EVENT_TYPE_FIRST_ACTIVATION.b()) {
                this.f14441c.a(c1448c0, a(a2, e2));
                this.f14441c.a(C1448c0.a(c1448c0, this.f14442d), a(a2, e2));
            }
            this.f14445g = a2;
            return a2;
        } else {
            return this.f14445g;
        }
    }

    public synchronized void d(C1448c0 c1448c0) {
        e(c1448c0);
        int ordinal = this.f14446h.ordinal();
        if (ordinal == 0) {
            this.f14445g = a(c1448c0);
        } else if (ordinal == 1) {
            b(this.f14445g, c1448c0);
            this.f14445g = a(c1448c0);
        } else if (ordinal == 2) {
            if (a(this.f14445g, c1448c0)) {
                this.f14445g.c(c1448c0.e());
            } else {
                this.f14445g = a(c1448c0);
            }
        }
    }

    public C1454c6 f(C1448c0 c1448c0) {
        V5 v5;
        if (this.f14446h == null) {
            v5 = ((R5) this.f14443e).b();
            if (v5 == null ? false : v5.b(c1448c0.e())) {
                v5 = ((R5) this.f14444f).b();
                if (v5 != null ? v5.b(c1448c0.e()) : false) {
                    v5 = null;
                }
            }
        } else {
            v5 = this.f14445g;
        }
        if (v5 != null) {
            return new C1454c6().c(v5.c()).a(v5.e()).b(v5.d()).a(v5.f());
        }
        long f2 = c1448c0.f();
        long a2 = this.f14440b.a();
        L7 i = this.f14439a.i();
        EnumC1529f6 enumC1529f6 = EnumC1529f6.BACKGROUND;
        i.a(a2, enumC1529f6, f2);
        return new C1454c6().c(a2).a(enumC1529f6).a(0L).b(0L);
    }

    public synchronized void g(C1448c0 c1448c0) {
        c(c1448c0).a(false);
        b bVar = this.f14446h;
        b bVar2 = b.EMPTY;
        if (bVar != bVar2) {
            b(this.f14445g, c1448c0);
        }
        this.f14446h = bVar2;
    }

    private V5 a(C1448c0 c1448c0) {
        long e2 = c1448c0.e();
        V5 a2 = ((R5) this.f14443e).a(new W5(e2, c1448c0.f()));
        this.f14446h = b.FOREGROUND;
        this.f14439a.l().c();
        this.f14441c.a(C1448c0.a(c1448c0, this.f14442d), a(a2, e2));
        return a2;
    }

    private void b(V5 v5, C1448c0 c1448c0) {
        if (v5.h()) {
            this.f14441c.a(C1448c0.a(c1448c0), new C1454c6().c(v5.c()).a(v5.f()).a(v5.e()).b(v5.b()));
            v5.a(false);
        }
        v5.i();
    }

    public C1429b6(L3 l3, C1404a6 c1404a6, a aVar, U5<W5> u5, U5<W5> u52, A0 a0) {
        this.f14446h = null;
        this.f14439a = l3;
        this.f14441c = aVar;
        this.f14443e = u5;
        this.f14444f = u52;
        this.f14440b = c1404a6;
        this.f14442d = a0;
    }

    private boolean a(V5 v5, C1448c0 c1448c0) {
        if (v5 == null) {
            return false;
        }
        if (v5.b(c1448c0.e())) {
            return true;
        }
        b(v5, c1448c0);
        return false;
    }

    private C1454c6 a(V5 v5, long j) {
        return new C1454c6().c(v5.c()).a(v5.e()).b(v5.a(j)).a(v5.f());
    }
}
