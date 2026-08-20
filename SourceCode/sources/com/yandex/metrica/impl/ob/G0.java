package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.H0;
/* loaded from: classes5.dex */
public abstract class G0<T> implements H0.d {

    /* renamed from: a  reason: collision with root package name */
    protected final G<T> f12956a;

    /* renamed from: b  reason: collision with root package name */
    private H0 f12957b;

    public G0(long j, long j2) {
        this.f12956a = new G<>(j, j2);
    }

    protected abstract long a(Ph ph);

    public T a() {
        H0 h0;
        if (b() && (h0 = this.f12957b) != null) {
            h0.b();
        }
        if (this.f12956a.c()) {
            this.f12956a.a(null);
        }
        return this.f12956a.a();
    }

    protected abstract boolean a(T t);

    protected abstract long b(Ph ph);

    public void b(T t) {
        if (a((G0<T>) t)) {
            this.f12956a.a(t);
            H0 h0 = this.f12957b;
            if (h0 != null) {
                h0.a();
            }
        }
    }

    public abstract boolean b();

    public void c(Ph ph) {
        this.f12956a.a(b(ph), a(ph));
    }

    public void a(H0 h0) {
        this.f12957b = h0;
    }
}
