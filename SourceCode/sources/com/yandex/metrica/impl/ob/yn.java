package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.TimeProvider;
import com.yandex.metrica.impl.ob.zn;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class yn<D> implements wn<D> {

    /* renamed from: a  reason: collision with root package name */
    private final Comparator<D> f16115a;

    /* renamed from: b  reason: collision with root package name */
    private final int f16116b;

    /* renamed from: c  reason: collision with root package name */
    private final TimeProvider f16117c;

    /* renamed from: d  reason: collision with root package name */
    final long f16118d;

    /* renamed from: e  reason: collision with root package name */
    private D f16119e;

    /* renamed from: f  reason: collision with root package name */
    private int f16120f;

    /* renamed from: g  reason: collision with root package name */
    private long f16121g;

    public yn(Comparator<D> comparator, TimeProvider timeProvider, int i, long j) {
        this.f16115a = comparator;
        this.f16116b = i;
        this.f16117c = timeProvider;
        this.f16118d = TimeUnit.SECONDS.toMillis(j);
    }

    private void a() {
        this.f16120f = 0;
        this.f16121g = this.f16117c.elapsedRealtime();
    }

    @Override // com.yandex.metrica.impl.ob.wn
    public zn<D> get(D d2) {
        D d3 = this.f16119e;
        if (d3 != d2) {
            if (this.f16115a.compare(d3, d2) == 0) {
                this.f16119e = d2;
            } else {
                this.f16119e = d2;
                a();
                return new zn<>(zn.a.NEW, this.f16119e);
            }
        }
        int i = this.f16120f + 1;
        this.f16120f = i;
        this.f16120f = i % this.f16116b;
        if (this.f16117c.elapsedRealtime() - this.f16121g >= this.f16118d) {
            a();
            return new zn<>(zn.a.REFRESH, this.f16119e);
        } else if (this.f16120f == 0) {
            a();
            return new zn<>(zn.a.REFRESH, this.f16119e);
        } else {
            return new zn<>(zn.a.NOT_CHANGED, this.f16119e);
        }
    }
}
