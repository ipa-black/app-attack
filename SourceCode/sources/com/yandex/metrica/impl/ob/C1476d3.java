package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: com.yandex.metrica.impl.ob.d3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1476d3 {
    public final InterfaceC1646k a(Context context, Executor executor, Executor executor2, com.yandex.metrica.billing_interface.b bVar, InterfaceC1721n interfaceC1721n, InterfaceC1696m interfaceC1696m) {
        int ordinal = bVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                return new C1551g3();
            }
            return new com.yandex.metrica.billing.v4.library.c(context, executor, executor2, interfaceC1721n, interfaceC1696m, new C1522f(interfaceC1721n), new C1572h(null, 1));
        }
        return new com.yandex.metrica.billing.v3.library.c(context, executor, executor2, new C1447c(interfaceC1721n), new C1472d(), interfaceC1696m);
    }
}
