package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class G<T> {

    /* renamed from: e  reason: collision with root package name */
    public static final If.c f12951e = new If.c();

    /* renamed from: a  reason: collision with root package name */
    private volatile long f12952a;

    /* renamed from: b  reason: collision with root package name */
    private volatile long f12953b;

    /* renamed from: c  reason: collision with root package name */
    private long f12954c = 0;

    /* renamed from: d  reason: collision with root package name */
    private T f12955d = null;

    public G(long j, long j2) {
        this.f12952a = j;
        this.f12953b = j2;
    }

    public T a() {
        return this.f12955d;
    }

    public final boolean b() {
        return this.f12955d == null;
    }

    public final boolean c() {
        if (this.f12954c == 0) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f12954c;
        return currentTimeMillis > this.f12953b || currentTimeMillis < 0;
    }

    public final boolean d() {
        long currentTimeMillis = System.currentTimeMillis() - this.f12954c;
        return currentTimeMillis > this.f12952a || currentTimeMillis < 0;
    }

    public String toString() {
        return "CachedData{refreshTime=" + this.f12952a + ", mCachedTime=" + this.f12954c + ", expiryTime=" + this.f12953b + ", mCachedData=" + this.f12955d + '}';
    }

    public void a(T t) {
        this.f12955d = t;
        this.f12954c = System.currentTimeMillis();
    }

    public void a(long j, long j2) {
        this.f12952a = j;
        this.f12953b = j2;
    }
}
