package com.yandex.metrica.impl.ob;

import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.be  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1437be extends AbstractC1867t0<C1512ee> {
    @Override // com.yandex.metrica.impl.ob.AbstractC1867t0
    public boolean a(C1512ee c1512ee, C1512ee c1512ee2) {
        C1512ee c1512ee3 = c1512ee;
        C1512ee c1512ee4 = c1512ee2;
        if (c1512ee3.f14678c) {
            if (c1512ee4.f14678c) {
                int intValue = a().a(c1512ee3.f14680e).intValue();
                Integer a2 = a().a(c1512ee4.f14680e);
                Intrinsics.checkNotNullExpressionValue(a2, "priorities[oldData.source]");
                if (Intrinsics.compare(intValue, a2.intValue()) > 0) {
                }
            }
            return true;
        }
        return false;
    }
}
