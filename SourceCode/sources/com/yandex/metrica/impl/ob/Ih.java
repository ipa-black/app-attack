package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class Ih {

    /* renamed from: a  reason: collision with root package name */
    private long f13202a;

    /* renamed from: b  reason: collision with root package name */
    private long f13203b;

    /* renamed from: c  reason: collision with root package name */
    private final TimeProvider f13204c;

    /* renamed from: d  reason: collision with root package name */
    private final C1570gm f13205d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ih() {
        this(new SystemTimeProvider(), new C1570gm());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized double a() {
        return this.f13205d.b(this.f13203b, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized double b() {
        return this.f13205d.b(this.f13202a, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void c() {
        this.f13203b = this.f13204c.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d() {
        this.f13202a = this.f13204c.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void e() {
        this.f13203b = 0L;
    }

    Ih(TimeProvider timeProvider, C1570gm c1570gm) {
        this.f13204c = timeProvider;
        this.f13205d = c1570gm;
    }
}
