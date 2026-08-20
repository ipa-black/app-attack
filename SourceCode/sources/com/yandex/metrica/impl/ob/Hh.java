package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.TimeProvider;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
class Hh {

    /* renamed from: a  reason: collision with root package name */
    private final C1570gm f13051a;

    /* renamed from: b  reason: collision with root package name */
    private final long f13052b;

    /* renamed from: c  reason: collision with root package name */
    private long f13053c;

    /* renamed from: d  reason: collision with root package name */
    private long f13054d;

    /* renamed from: e  reason: collision with root package name */
    private long f13055e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Hh(TimeProvider timeProvider, C1570gm c1570gm) {
        this.f13052b = timeProvider.currentTimeMillis();
        this.f13051a = c1570gm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f13053c = this.f13051a.b(this.f13052b, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f13054d = this.f13051a.b(this.f13052b, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f13055e = this.f13051a.b(this.f13052b, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long d() {
        return this.f13053c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long e() {
        return this.f13054d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long f() {
        return this.f13055e;
    }
}
