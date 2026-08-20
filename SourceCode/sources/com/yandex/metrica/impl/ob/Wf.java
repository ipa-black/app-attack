package com.yandex.metrica.impl.ob;

import com.yandex.metrica.i;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes5.dex */
public class Wf {
    public com.yandex.metrica.i a(com.yandex.metrica.i iVar) {
        if (A2.a(iVar.maxReportsInDatabaseCount)) {
            i.b a2 = com.yandex.metrica.i.a(iVar).a(new ArrayList());
            if (A2.a((Object) iVar.f12560a)) {
                a2.b(iVar.f12560a);
            }
            if (A2.a((Object) iVar.f12561b) && A2.a(iVar.i)) {
                a2.a(iVar.f12561b, iVar.i);
            }
            if (A2.a(iVar.f12564e)) {
                a2.a(iVar.f12564e.intValue());
            }
            if (A2.a(iVar.f12565f)) {
                a2.b(iVar.f12565f.intValue());
            }
            if (A2.a(iVar.f12566g)) {
                a2.c(iVar.f12566g.intValue());
            }
            if (A2.a((Object) iVar.f12562c)) {
                a2.f12573f = iVar.f12562c;
            }
            if (A2.a((Object) iVar.f12567h)) {
                for (Map.Entry<String, String> entry : iVar.f12567h.entrySet()) {
                    a2.a(entry.getKey(), entry.getValue());
                }
            }
            if (A2.a(iVar.j)) {
                a2.g(iVar.j.booleanValue());
            }
            if (A2.a((Object) iVar.f12563d)) {
                a2.a(iVar.f12563d);
            }
            if (A2.a(iVar.k)) {
                a2.b(iVar.k.booleanValue());
            }
            return a2.d(a(iVar.maxReportsInDatabaseCount, iVar.apiKey)).a();
        }
        return iVar;
    }

    public com.yandex.metrica.e a(com.yandex.metrica.e eVar) {
        return A2.a(eVar.maxReportsInDatabaseCount) ? com.yandex.metrica.e.a(eVar).a(a(eVar.maxReportsInDatabaseCount, eVar.apiKey)).a() : eVar;
    }

    private int a(Integer num, String str) {
        if (num.intValue() < 100) {
            Ul.b(str).fw("Value passed as maxReportsInDatabaseCount is invalid. Should be greater than or equal to %d, but was: %d. Default value (%d) will be used", 100, num, 100);
            return 100;
        } else if (num.intValue() > 10000) {
            Ul.b(str).fw("Value passed as maxReportsInDatabaseCount is invalid. Should be less than or equal to %d, but was: %d. Default value (%d) will be used", 10000, num, 10000);
            return 10000;
        } else {
            return num.intValue();
        }
    }
}
