package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class Xc implements J0 {

    /* renamed from: a  reason: collision with root package name */
    private final C1507e9 f14267a;

    /* renamed from: b  reason: collision with root package name */
    private final C1965x2 f14268b;

    /* renamed from: c  reason: collision with root package name */
    private Xb f14269c;

    /* renamed from: d  reason: collision with root package name */
    private final H2 f14270d;

    /* renamed from: e  reason: collision with root package name */
    private final TimeProvider f14271e;

    /* renamed from: f  reason: collision with root package name */
    private final a f14272f;

    /* renamed from: g  reason: collision with root package name */
    private final Wc f14273g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a {
        a() {
        }
    }

    public Xc(Context context, Xb xb) {
        this(xb, H2.a(context));
    }

    public void a(Xb xb) {
        if (A2.a(this.f14269c, xb)) {
            return;
        }
        this.f14269c = xb;
        if (xb == null || !xb.f14265a.f13756a) {
            return;
        }
        this.f14273g.a(this.f14270d.b());
    }

    public void b() {
        Xb xb = this.f14269c;
        if (xb == null || xb.f14266b == null || !this.f14268b.b(this.f14267a.f(0L), this.f14269c.f14266b.f14194b, "last wifi scan attempt time")) {
            return;
        }
        this.f14272f.getClass();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        if (this.f14270d.a(countDownLatch, this.f14273g)) {
            this.f14267a.k(this.f14271e.currentTimeSeconds());
            try {
                countDownLatch.await(5L, TimeUnit.SECONDS);
            } catch (Throwable unused) {
            }
        }
    }

    private Xc(Xb xb, H2 h2) {
        this(h2, F0.g().s(), new C1965x2(), new SystemTimeProvider(), new a(), xb, new Wc(null, h2.a()));
    }

    @Override // com.yandex.metrica.impl.ob.J0
    public void a() {
        Xb xb = this.f14269c;
        if (xb == null || !xb.f14265a.f13756a) {
            return;
        }
        this.f14273g.a(this.f14270d.b());
    }

    Xc(H2 h2, C1507e9 c1507e9, C1965x2 c1965x2, TimeProvider timeProvider, a aVar, Xb xb, Wc wc) {
        this.f14270d = h2;
        this.f14267a = c1507e9;
        this.f14268b = c1965x2;
        this.f14272f = aVar;
        this.f14269c = xb;
        this.f14271e = timeProvider;
        this.f14273g = wc;
    }
}
