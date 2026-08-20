package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1918v3;
import java.util.Map;
/* loaded from: classes5.dex */
public class Rh {
    public boolean a(Map<String, String> map, C1790pi c1790pi, I i) {
        Map<String, String> b2 = i.a(new C1918v3.a(map, EnumC1891u0.APP)).b();
        if (A2.b(b2)) {
            return true;
        }
        return b2.equals(Tl.a(c1790pi.u()));
    }
}
