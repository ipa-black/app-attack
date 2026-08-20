package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.TimeProvider;
/* loaded from: classes5.dex */
public class X0 {

    /* renamed from: a  reason: collision with root package name */
    private final TimeProvider f14210a;

    /* renamed from: b  reason: collision with root package name */
    private final C1965x2 f14211b;

    /* renamed from: c  reason: collision with root package name */
    private final C1507e9 f14212c;

    /* renamed from: d  reason: collision with root package name */
    private long f14213d;

    /* renamed from: e  reason: collision with root package name */
    private Zh f14214e;

    /* renamed from: f  reason: collision with root package name */
    private final M0 f14215f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public X0(C1507e9 c1507e9, Zh zh, TimeProvider timeProvider, C1965x2 c1965x2, M0 m0) {
        this.f14212c = c1507e9;
        this.f14214e = zh;
        this.f14213d = c1507e9.d(0L);
        this.f14210a = timeProvider;
        this.f14211b = c1965x2;
        this.f14215f = m0;
    }

    public void a() {
        Zh zh = this.f14214e;
        if (zh == null || !this.f14211b.b(this.f14213d, zh.f14358a, "should send EVENT_IDENTITY_LIGHT")) {
            return;
        }
        this.f14215f.b();
        long currentTimeSeconds = this.f14210a.currentTimeSeconds();
        this.f14213d = currentTimeSeconds;
        this.f14212c.i(currentTimeSeconds);
    }

    public void a(Zh zh) {
        this.f14214e = zh;
    }
}
