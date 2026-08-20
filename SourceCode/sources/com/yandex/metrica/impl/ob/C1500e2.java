package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.e2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1500e2 {

    /* renamed from: a  reason: collision with root package name */
    private C1450c2 f14632a = new C1450c2(0, 0, 0, 0.0f, null);

    public synchronized void a(C1450c2 c1450c2) {
        if (c1450c2 != null) {
            this.f14632a = c1450c2;
        }
    }

    public synchronized C1450c2 a() {
        return this.f14632a;
    }
}
