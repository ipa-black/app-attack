package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.fm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1545fm implements Q0 {

    /* renamed from: a  reason: collision with root package name */
    private volatile long f14762a;

    /* renamed from: b  reason: collision with root package name */
    private C1507e9 f14763b;

    /* renamed from: c  reason: collision with root package name */
    private TimeProvider f14764c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.fm$b */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        static C1545fm f14765a = new C1545fm();
    }

    public static C1545fm c() {
        return b.f14765a;
    }

    @Override // com.yandex.metrica.impl.ob.Q0
    public synchronized long a() {
        return this.f14762a;
    }

    public synchronized void b() {
        this.f14763b.c(false);
        this.f14763b.d();
    }

    public synchronized void d() {
        C1507e9 s = F0.g().s();
        SystemTimeProvider systemTimeProvider = new SystemTimeProvider();
        this.f14763b = s;
        this.f14762a = s.b(0);
        this.f14764c = systemTimeProvider;
    }

    public synchronized boolean e() {
        return this.f14763b.a(true);
    }

    private C1545fm() {
    }

    public synchronized void a(long j, Long l) {
        this.f14762a = (j - this.f14764c.currentTimeMillis()) / 1000;
        boolean z = true;
        if (this.f14763b.a(true)) {
            if (l != null) {
                long abs = Math.abs(j - this.f14764c.currentTimeMillis());
                C1507e9 c1507e9 = this.f14763b;
                if (abs <= TimeUnit.SECONDS.toMillis(l.longValue())) {
                    z = false;
                }
                c1507e9.c(z);
            } else {
                this.f14763b.c(false);
            }
        }
        this.f14763b.l(this.f14762a);
        this.f14763b.d();
    }
}
