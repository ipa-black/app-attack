package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.coreutils.services.TimeProvider;
import com.yandex.metrica.impl.ob.M3;
/* renamed from: com.yandex.metrica.impl.ob.a4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1402a4 {

    /* renamed from: a  reason: collision with root package name */
    private final C1457c9 f14389a;

    /* renamed from: b  reason: collision with root package name */
    private final C1431b8 f14390b;

    /* renamed from: c  reason: collision with root package name */
    private C1429b6 f14391c;

    /* renamed from: d  reason: collision with root package name */
    private L7 f14392d;

    /* renamed from: e  reason: collision with root package name */
    private final Dm f14393e;

    /* renamed from: f  reason: collision with root package name */
    private final C1579h6 f14394f;

    /* renamed from: g  reason: collision with root package name */
    private final C1842s f14395g;

    /* renamed from: h  reason: collision with root package name */
    private final O3 f14396h;
    private a i;
    private final TimeProvider j;
    private final int k;
    private long l;
    private long m;
    private int n;

    /* renamed from: com.yandex.metrica.impl.ob.a4$a */
    /* loaded from: classes5.dex */
    public interface a {
    }

    public C1402a4(C1457c9 c1457c9, C1431b8 c1431b8, C1429b6 c1429b6, L7 l7, C1842s c1842s, Dm dm, C1579h6 c1579h6, int i, a aVar, O3 o3, TimeProvider timeProvider) {
        this.f14389a = c1457c9;
        this.f14390b = c1431b8;
        this.f14391c = c1429b6;
        this.f14392d = l7;
        this.f14395g = c1842s;
        this.f14393e = dm;
        this.f14394f = c1579h6;
        this.k = i;
        this.f14396h = o3;
        this.j = timeProvider;
        this.i = aVar;
        this.l = c1457c9.b(0L);
        this.m = c1457c9.l();
        this.n = c1457c9.i();
    }

    public void a(C1448c0 c1448c0) {
        this.f14391c.c(c1448c0);
    }

    public void b(C1448c0 c1448c0) {
        a(c1448c0, this.f14391c.b(c1448c0));
    }

    public void c(C1448c0 c1448c0) {
        a(c1448c0, this.f14391c.b(c1448c0));
        int i = this.k;
        this.n = i;
        this.f14389a.a(i).d();
    }

    public void d(C1448c0 c1448c0) {
        a(c1448c0, this.f14391c.b(c1448c0));
        long currentTimeSeconds = this.j.currentTimeSeconds();
        this.l = currentTimeSeconds;
        this.f14389a.c(currentTimeSeconds).d();
    }

    public void e(C1448c0 c1448c0) {
        a(c1448c0, this.f14391c.b(c1448c0));
        long currentTimeSeconds = this.j.currentTimeSeconds();
        this.m = currentTimeSeconds;
        this.f14389a.e(currentTimeSeconds).d();
    }

    public void f(C1448c0 c1448c0) {
        a(c1448c0, this.f14391c.f(c1448c0));
    }

    public void a(C1448c0 c1448c0, C1454c6 c1454c6) {
        if (TextUtils.isEmpty(c1448c0.p())) {
            c1448c0.e(this.f14389a.n());
        }
        c1448c0.i().putAll(this.f14394f.a());
        c1448c0.d(this.f14389a.m());
        c1448c0.a(Integer.valueOf(this.f14390b.e()));
        this.f14392d.a(this.f14393e.a(c1448c0).a(c1448c0), c1448c0.o(), c1454c6, this.f14395g.a(), this.f14396h);
        ((M3.a) this.i).f13464a.g();
    }

    public void b() {
        int i = this.k;
        this.n = i;
        this.f14389a.a(i).d();
    }

    public boolean c() {
        return this.n < this.k;
    }

    public boolean d() {
        return this.j.currentTimeSeconds() - this.l > Y5.f14299a;
    }

    public long a() {
        return this.m;
    }
}
