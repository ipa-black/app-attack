package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.gm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1570gm {

    /* renamed from: a  reason: collision with root package name */
    private final SystemTimeProvider f14819a;

    public C1570gm() {
        this(new SystemTimeProvider());
    }

    public long a(long j, TimeUnit timeUnit) {
        return TimeUnit.MILLISECONDS.toSeconds(this.f14819a.elapsedRealtime() - timeUnit.toMillis(j));
    }

    public long b(long j, TimeUnit timeUnit) {
        if (j == 0) {
            return 0L;
        }
        return this.f14819a.currentTimeSeconds() - timeUnit.toSeconds(j);
    }

    public long c(long j, TimeUnit timeUnit) {
        return TimeUnit.NANOSECONDS.toSeconds(this.f14819a.systemNanoTime() - timeUnit.toNanos(j));
    }

    public C1570gm(SystemTimeProvider systemTimeProvider) {
        this.f14819a = systemTimeProvider;
    }
}
