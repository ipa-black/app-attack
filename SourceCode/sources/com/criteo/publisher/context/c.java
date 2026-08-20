package com.criteo.publisher.context;

import java.util.Map;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ContextUtil.kt */
/* loaded from: classes2.dex */
public final class c {
    static {
        new c();
    }

    private c() {
    }

    @JvmStatic
    public static final Map<String, Object> a(AbstractContextData<?> contextData) {
        Intrinsics.checkParameterIsNotNull(contextData, "contextData");
        Map<String, Object> data = contextData.getData();
        Intrinsics.checkExpressionValueIsNotNull(data, "contextData.getData()");
        return data;
    }
}
