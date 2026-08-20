package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.a6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1404a6 {

    /* renamed from: a  reason: collision with root package name */
    private final C1431b8 f14398a;

    public C1404a6(C1431b8 c1431b8) {
        this.f14398a = c1431b8;
    }

    public long a() {
        long h2 = this.f14398a.h();
        long j = h2 >= 10000000000L ? 1 + h2 : 10000000000L;
        this.f14398a.a(j);
        return j;
    }
}
