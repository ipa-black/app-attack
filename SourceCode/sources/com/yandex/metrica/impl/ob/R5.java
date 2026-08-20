package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.impl.ob.X5;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public abstract class R5 implements U5<W5> {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f13784a;

    /* renamed from: b  reason: collision with root package name */
    private final C1404a6 f13785b;

    /* renamed from: c  reason: collision with root package name */
    private final C1504e6 f13786c;

    /* renamed from: d  reason: collision with root package name */
    private final Z5 f13787d;

    /* renamed from: e  reason: collision with root package name */
    private final M0 f13788e;

    /* renamed from: f  reason: collision with root package name */
    private final SystemTimeProvider f13789f;

    public R5(L3 l3, C1404a6 c1404a6, C1504e6 c1504e6, Z5 z5, M0 m0, SystemTimeProvider systemTimeProvider) {
        this.f13784a = l3;
        this.f13785b = c1404a6;
        this.f13786c = c1504e6;
        this.f13787d = z5;
        this.f13788e = m0;
        this.f13789f = systemTimeProvider;
    }

    public V5 a(Object obj) {
        W5 w5 = (W5) obj;
        if (this.f13786c.h()) {
            this.f13788e.reportEvent("create session with non-empty storage");
        }
        L3 l3 = this.f13784a;
        C1504e6 c1504e6 = this.f13786c;
        long a2 = this.f13785b.a();
        C1504e6 d2 = this.f13786c.d(a2);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        d2.e(timeUnit.toSeconds(w5.f14182a)).a(w5.f14182a).c(0L).a(true).b();
        this.f13784a.i().a(a2, this.f13787d.b(), timeUnit.toSeconds(w5.f14183b));
        return new V5(l3, c1504e6, a(), new SystemTimeProvider());
    }

    public final V5 b() {
        if (this.f13786c.h()) {
            return new V5(this.f13784a, this.f13786c, a(), this.f13789f);
        }
        return null;
    }

    X5 a() {
        X5.b d2 = new X5.b(this.f13787d).a(this.f13786c.i()).b(this.f13786c.e()).a(this.f13786c.c()).c(this.f13786c.f()).d(this.f13786c.g());
        d2.f14237a = this.f13786c.d();
        return new X5(d2);
    }
}
