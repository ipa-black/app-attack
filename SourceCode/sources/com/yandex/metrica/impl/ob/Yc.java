package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1787pf;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
/* loaded from: classes5.dex */
public class Yc {
    public C1787pf.a a(C1684lc c1684lc) {
        C1787pf.a aVar = new C1787pf.a();
        aVar.f15378a = c1684lc.f() == null ? aVar.f15378a : c1684lc.f().longValue();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        aVar.f15379b = timeUnit.toSeconds(c1684lc.d());
        aVar.f15382e = timeUnit.toSeconds(c1684lc.c());
        aVar.f15383f = c1684lc.b() == null ? 0 : J1.a(c1684lc.b());
        aVar.f15384g = c1684lc.e() == null ? 3 : J1.a(c1684lc.e());
        JSONArray a2 = c1684lc.a();
        if (a2 != null) {
            aVar.f15380c = J1.b(a2);
        }
        JSONArray g2 = c1684lc.g();
        if (g2 != null) {
            aVar.f15381d = J1.a(g2);
        }
        return aVar;
    }
}
