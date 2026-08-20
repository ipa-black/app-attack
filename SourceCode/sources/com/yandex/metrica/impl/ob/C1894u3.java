package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1918v3;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.u3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1894u3 implements X<Map<String, ? extends String>> {
    @Override // kotlin.jvm.functions.Function1
    public Boolean invoke(Object obj) {
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        return Boolean.valueOf(g2.d().b(new C1918v3.a((Map) obj, EnumC1891u0.RETAIL)));
    }
}
