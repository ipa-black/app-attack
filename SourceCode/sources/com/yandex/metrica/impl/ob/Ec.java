package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Ec<T> implements InterfaceC1784pc<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Dc<T> f12863a;

    /* renamed from: b  reason: collision with root package name */
    private final Lb<T> f12864b;

    /* renamed from: c  reason: collision with root package name */
    private final Gc f12865c;

    /* renamed from: d  reason: collision with root package name */
    private final Qb<T> f12866d;

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f12867e = new a();

    /* renamed from: f  reason: collision with root package name */
    private T f12868f;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Ec.this.b();
        }
    }

    public Ec(Dc<T> dc, Lb<T> lb, Gc gc, Qb<T> qb, T t) {
        this.f12863a = dc;
        this.f12864b = lb;
        this.f12865c = gc;
        this.f12866d = qb;
        this.f12868f = t;
    }

    public void a() {
        T t = this.f12868f;
        if (t != null && this.f12864b.a(t) && this.f12863a.a(this.f12868f)) {
            this.f12865c.a();
            this.f12866d.a(this.f12867e, this.f12868f);
        }
    }

    public void b() {
        this.f12866d.a();
        this.f12863a.a();
    }

    public void c() {
        T t = this.f12868f;
        if (t != null && this.f12864b.b(t)) {
            this.f12863a.b();
        }
        a();
    }

    public void a(T t) {
        if (A2.a(this.f12868f, t)) {
            return;
        }
        this.f12868f = t;
        b();
        a();
    }
}
