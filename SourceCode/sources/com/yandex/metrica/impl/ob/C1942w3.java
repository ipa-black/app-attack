package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1918v3;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.w3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1942w3 extends AbstractC1867t0<C1918v3.a> {
    @Override // com.yandex.metrica.impl.ob.AbstractC1867t0
    public boolean a(C1918v3.a aVar, C1918v3.a aVar2) {
        if (!A2.b(aVar2.b())) {
            if (A2.b(aVar.b())) {
                return false;
            }
            if (aVar.a() == EnumC1891u0.APP) {
                int intValue = a().a(aVar.a()).intValue();
                Integer a2 = a().a(aVar2.a());
                Intrinsics.checkNotNullExpressionValue(a2, "priorities[oldData.source]");
                if (Intrinsics.compare(intValue, a2.intValue()) < 0) {
                    return false;
                }
            } else {
                int intValue2 = a().a(aVar.a()).intValue();
                Integer a3 = a().a(aVar2.a());
                Intrinsics.checkNotNullExpressionValue(a3, "priorities[oldData.source]");
                if (Intrinsics.compare(intValue2, a3.intValue()) <= 0) {
                    return false;
                }
            }
        }
        return true;
    }
}
