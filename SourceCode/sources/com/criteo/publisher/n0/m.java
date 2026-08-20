package com.criteo.publisher.n0;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MapUtil.kt */
/* loaded from: classes2.dex */
public final class m {
    public static final <K, V> V a(ConcurrentMap<K, V> getOrCompute, K k, Function0<? extends V> defaultValue) {
        Intrinsics.checkParameterIsNotNull(getOrCompute, "$this$getOrCompute");
        Intrinsics.checkParameterIsNotNull(defaultValue, "defaultValue");
        V v = getOrCompute.get(k);
        if (v == null) {
            V invoke = defaultValue.invoke();
            V putIfAbsent = getOrCompute.putIfAbsent(k, invoke);
            return putIfAbsent != null ? putIfAbsent : invoke;
        }
        return v;
    }

    public static final <K, V> Map<K, V> a(Map<K, ? extends V> filterNotNullValues) {
        Intrinsics.checkParameterIsNotNull(filterNotNullValues, "$this$filterNotNullValues");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<K, ? extends V> entry : filterNotNullValues.entrySet()) {
            if (entry.getValue() != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }
}
