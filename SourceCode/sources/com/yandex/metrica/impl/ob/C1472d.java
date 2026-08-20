package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.d  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1472d implements InterfaceC1746o {

    /* renamed from: a  reason: collision with root package name */
    private final com.yandex.metrica.billing_interface.g f14578a;

    public C1472d() {
        this(new com.yandex.metrica.billing_interface.g());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1746o
    public Map<String, com.yandex.metrica.billing_interface.a> a(C1597i c1597i, Map<String, com.yandex.metrica.billing_interface.a> map, InterfaceC1671l interfaceC1671l) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            com.yandex.metrica.billing_interface.a aVar = map.get(str);
            this.f14578a.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            if (aVar.f12477a == com.yandex.metrica.billing_interface.e.INAPP && !interfaceC1671l.a()) {
                if (currentTimeMillis - aVar.f12480d <= TimeUnit.SECONDS.toMillis(c1597i.f14886b)) {
                    hashMap.put(str, aVar);
                }
            } else {
                com.yandex.metrica.billing_interface.a a2 = interfaceC1671l.a(aVar.f12478b);
                if (a2 != null) {
                    if (a2.f12479c.equals(aVar.f12479c)) {
                        if (aVar.f12477a == com.yandex.metrica.billing_interface.e.SUBS && currentTimeMillis - a2.f12481e >= TimeUnit.SECONDS.toMillis(c1597i.f14885a)) {
                        }
                    }
                }
                hashMap.put(str, aVar);
            }
        }
        return hashMap;
    }

    C1472d(com.yandex.metrica.billing_interface.g gVar) {
        this.f14578a = gVar;
    }
}
