package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
/* loaded from: classes5.dex */
public class E4 {

    /* renamed from: a  reason: collision with root package name */
    private Long f12841a;

    /* renamed from: b  reason: collision with root package name */
    private int f12842b;

    /* renamed from: c  reason: collision with root package name */
    private TimeProvider f12843c;

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f12844a;

        /* renamed from: b  reason: collision with root package name */
        public final long f12845b;

        /* renamed from: c  reason: collision with root package name */
        public final int f12846c;

        public a(long j, long j2, int i) {
            this.f12844a = j;
            this.f12846c = i;
            this.f12845b = j2;
        }
    }

    public E4() {
        this(new SystemTimeProvider());
    }

    public a a() {
        if (this.f12841a == null) {
            this.f12841a = Long.valueOf(this.f12843c.currentTimeSeconds());
        }
        long longValue = this.f12841a.longValue();
        long longValue2 = this.f12841a.longValue();
        int i = this.f12842b;
        a aVar = new a(longValue, longValue2, i);
        this.f12842b = i + 1;
        return aVar;
    }

    public E4(TimeProvider timeProvider) {
        this.f12843c = timeProvider;
    }
}
