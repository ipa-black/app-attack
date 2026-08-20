package com.yandex.metrica.impl.ob;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.g  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1547g {

    /* renamed from: a  reason: collision with root package name */
    public static final C1547g f14766a = new C1547g();

    private C1547g() {
    }

    public static void a(C1547g c1547g, Map history, Map newBillingInfo, String type, InterfaceC1671l billingInfoManager, com.yandex.metrica.billing_interface.g gVar, int i) {
        com.yandex.metrica.billing_interface.g systemTimeProvider = (i & 16) != 0 ? new com.yandex.metrica.billing_interface.g() : null;
        Intrinsics.checkNotNullParameter(history, "history");
        Intrinsics.checkNotNullParameter(newBillingInfo, "newBillingInfo");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(billingInfoManager, "billingInfoManager");
        Intrinsics.checkNotNullParameter(systemTimeProvider, "systemTimeProvider");
        systemTimeProvider.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        for (com.yandex.metrica.billing_interface.a aVar : history.values()) {
            if (newBillingInfo.containsKey(aVar.f12478b)) {
                aVar.f12481e = currentTimeMillis;
            } else {
                com.yandex.metrica.billing_interface.a a2 = billingInfoManager.a(aVar.f12478b);
                if (a2 != null) {
                    aVar.f12481e = a2.f12481e;
                }
            }
        }
        billingInfoManager.a(history);
        if (billingInfoManager.a() || !Intrinsics.areEqual("inapp", type)) {
            return;
        }
        billingInfoManager.b();
    }
}
