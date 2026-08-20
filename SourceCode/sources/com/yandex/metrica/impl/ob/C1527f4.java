package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
/* renamed from: com.yandex.metrica.impl.ob.f4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1527f4 {

    /* renamed from: a  reason: collision with root package name */
    private final C1457c9 f14721a;

    /* renamed from: b  reason: collision with root package name */
    private final TimeProvider f14722b;

    /* renamed from: c  reason: collision with root package name */
    private final C1965x2 f14723c;

    /* renamed from: d  reason: collision with root package name */
    private C1885ti f14724d;

    /* renamed from: e  reason: collision with root package name */
    private long f14725e;

    public C1527f4(Context context, I3 i3) {
        this(new C1457c9(C1632ja.a(context).b(i3)), new SystemTimeProvider(), new C1965x2());
    }

    public boolean a(Boolean bool) {
        C1885ti c1885ti;
        return Boolean.FALSE.equals(bool) && (c1885ti = this.f14724d) != null && this.f14723c.a(this.f14725e, c1885ti.f15780a, "should report diagnostic");
    }

    public C1527f4(C1457c9 c1457c9, TimeProvider timeProvider, C1965x2 c1965x2) {
        this.f14721a = c1457c9;
        this.f14722b = timeProvider;
        this.f14723c = c1965x2;
        this.f14725e = c1457c9.k();
    }

    public void a() {
        long currentTimeMillis = this.f14722b.currentTimeMillis();
        this.f14725e = currentTimeMillis;
        this.f14721a.d(currentTimeMillis).d();
    }

    public void a(C1885ti c1885ti) {
        this.f14724d = c1885ti;
    }
}
