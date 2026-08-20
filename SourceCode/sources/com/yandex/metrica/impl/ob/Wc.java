package com.yandex.metrica.impl.ob;

import java.util.List;
/* loaded from: classes5.dex */
public class Wc extends V<List<F2>> {

    /* renamed from: b  reason: collision with root package name */
    private final I2 f14195b;

    public Wc(V<List<F2>> v, I2 i2) {
        super(null);
        this.f14195b = i2;
    }

    @Override // com.yandex.metrica.impl.ob.V
    public void b(List<F2> list) {
        List<F2> list2 = list;
        if (list2 != null) {
            this.f14195b.b((I2) list2);
        }
    }
}
