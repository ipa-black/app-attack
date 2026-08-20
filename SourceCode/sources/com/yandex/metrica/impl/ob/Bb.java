package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class Bb {

    /* renamed from: a  reason: collision with root package name */
    private volatile Ab f12682a;

    /* renamed from: b  reason: collision with root package name */
    private CountDownLatch f12683b = new CountDownLatch(1);

    /* renamed from: c  reason: collision with root package name */
    private final long f12684c = 20;

    /* renamed from: d  reason: collision with root package name */
    private final com.yandex.metrica.appsetid.a f12685d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final Context f12686e;

    /* renamed from: f  reason: collision with root package name */
    private final com.yandex.metrica.appsetid.d f12687f;

    public Bb(Context context, com.yandex.metrica.appsetid.d dVar) {
        this.f12686e = context;
        this.f12687f = dVar;
    }

    /* loaded from: classes5.dex */
    public static final class a implements com.yandex.metrica.appsetid.a {
        a() {
        }

        @Override // com.yandex.metrica.appsetid.a
        public void a(String str, com.yandex.metrica.appsetid.c cVar) {
            Bb.this.f12682a = new Ab(str, cVar);
            Bb.this.f12683b.countDown();
        }

        @Override // com.yandex.metrica.appsetid.a
        public void a(Throwable th) {
            Bb.this.f12683b.countDown();
        }
    }

    public final synchronized Ab a() {
        Ab ab;
        if (this.f12682a == null) {
            try {
                this.f12683b = new CountDownLatch(1);
                this.f12687f.a(this.f12686e, this.f12685d);
                this.f12683b.await(this.f12684c, TimeUnit.SECONDS);
            } catch (Throwable unused) {
            }
        }
        ab = this.f12682a;
        if (ab == null) {
            ab = new Ab(null, com.yandex.metrica.appsetid.c.UNKNOWN);
            this.f12682a = ab;
        }
        return ab;
    }
}
