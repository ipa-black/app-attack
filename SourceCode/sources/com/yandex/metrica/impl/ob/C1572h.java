package com.yandex.metrica.impl.ob;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.h  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1572h implements InterfaceC1746o {

    /* renamed from: a  reason: collision with root package name */
    private final com.yandex.metrica.billing_interface.g f14822a;

    public C1572h(com.yandex.metrica.billing_interface.g systemTimeProvider) {
        Intrinsics.checkNotNullParameter(systemTimeProvider, "systemTimeProvider");
        this.f14822a = systemTimeProvider;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1746o
    public Map<String, com.yandex.metrica.billing_interface.a> a(C1597i config, Map<String, ? extends com.yandex.metrica.billing_interface.a> history, InterfaceC1671l storage) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(history, "history");
        Intrinsics.checkNotNullParameter(storage, "storage");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ? extends com.yandex.metrica.billing_interface.a> entry : history.entrySet()) {
            com.yandex.metrica.billing_interface.a value = entry.getValue();
            this.f14822a.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            if (value.f12477a == com.yandex.metrica.billing_interface.e.INAPP && !storage.a()) {
                if (currentTimeMillis - value.f12480d <= TimeUnit.SECONDS.toMillis(config.f14886b)) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            } else {
                com.yandex.metrica.billing_interface.a a2 = storage.a(value.f12478b);
                if (a2 != null) {
                    Intrinsics.checkNotNullExpressionValue(a2, "storage[historyEntry.sku] ?: return true");
                    if (!(!Intrinsics.areEqual(a2.f12479c, value.f12479c))) {
                        if (value.f12477a == com.yandex.metrica.billing_interface.e.SUBS && currentTimeMillis - a2.f12481e >= TimeUnit.SECONDS.toMillis(config.f14885a)) {
                        }
                    }
                }
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public /* synthetic */ C1572h(com.yandex.metrica.billing_interface.g gVar, int i) {
        this((i & 1) != 0 ? new com.yandex.metrica.billing_interface.g() : null);
    }
}
