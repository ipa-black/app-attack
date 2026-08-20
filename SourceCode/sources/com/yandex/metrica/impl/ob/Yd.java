package com.yandex.metrica.impl.ob;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Yd implements X<C1512ee> {
    @Override // kotlin.jvm.functions.Function1
    public Boolean invoke(Object obj) {
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        return Boolean.valueOf(g2.k().b((C1512ee) obj));
    }
}
