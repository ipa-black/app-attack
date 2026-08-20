package com.yandex.metrica.impl.ob;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.p5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1777p5 extends X4 {
    public C1777p5(L3 l3) {
        super(l3);
        StringBuilder sb = new StringBuilder("[SaveSessionExtrasHandler-");
        I3 e2 = l3.e();
        Intrinsics.checkNotNullExpressionValue(e2, "component.componentId");
        String a2 = e2.a();
        sb.append(a2 != null ? A2.a(a2) : null).append(']').toString();
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        Map<String, byte[]> i = c1448c0.i();
        Intrinsics.checkNotNullExpressionValue(i, "reportData.extras");
        for (Map.Entry<String, byte[]> entry : i.entrySet()) {
            L3 component = a();
            Intrinsics.checkNotNullExpressionValue(component, "component");
            C1579h6 u = component.u();
            String key = entry.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "it.key");
            u.a(key, entry.getValue());
        }
        return true;
    }
}
