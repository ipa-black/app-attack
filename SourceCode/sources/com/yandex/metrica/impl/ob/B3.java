package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1842s;
import java.util.HashMap;
/* loaded from: classes5.dex */
class B3 {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, C1842s> f12663a = new HashMap<>();

    public synchronized C1842s a(I3 i3, C1470cm c1470cm, C1457c9 c1457c9) {
        C1842s c1842s;
        c1842s = this.f12663a.get(i3.toString());
        if (c1842s == null) {
            C1842s.a f2 = c1457c9.f();
            c1842s = new C1842s(f2.f15699a, f2.f15700b, c1470cm);
            this.f12663a.put(i3.toString(), c1842s);
        }
        return c1842s;
    }
}
