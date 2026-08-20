package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
/* loaded from: classes5.dex */
public class Q {

    /* renamed from: a  reason: collision with root package name */
    private SystemTimeProvider f13737a;

    public Q() {
        this(new SystemTimeProvider());
    }

    public void a() {
        this.f13737a.elapsedRealtime();
    }

    Q(SystemTimeProvider systemTimeProvider) {
        this.f13737a = systemTimeProvider;
    }
}
