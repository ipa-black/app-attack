package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.v2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC1917v2<T> extends G0<T> {
    public AbstractC1917v2(long j, long j2) {
        super(j, j2);
    }

    @Override // com.yandex.metrica.impl.ob.G0
    public synchronized T a() {
        return (T) super.a();
    }

    @Override // com.yandex.metrica.impl.ob.G0
    public synchronized void b(T t) {
        super.b((AbstractC1917v2<T>) t);
    }

    @Override // com.yandex.metrica.impl.ob.G0
    public synchronized boolean b() {
        boolean z;
        if (!this.f12956a.b()) {
            z = this.f12956a.d();
        }
        return z;
    }
}
