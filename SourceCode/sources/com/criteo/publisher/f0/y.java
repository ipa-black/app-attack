package com.criteo.publisher.f0;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MetricSendingTask.kt */
/* loaded from: classes2.dex */
public final class y extends com.criteo.publisher.x {

    /* renamed from: c  reason: collision with root package name */
    private final u f8833c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.k0.g f8834d;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8835e;

    public y(u queue, com.criteo.publisher.k0.g api, com.criteo.publisher.n0.g buildConfigWrapper) {
        Intrinsics.checkParameterIsNotNull(queue, "queue");
        Intrinsics.checkParameterIsNotNull(api, "api");
        Intrinsics.checkParameterIsNotNull(buildConfigWrapper, "buildConfigWrapper");
        this.f8833c = queue;
        this.f8834d = api;
        this.f8835e = buildConfigWrapper;
    }

    @Override // com.criteo.publisher.x
    public void a() {
        Collection<? extends n> a2 = this.f8833c.a(this.f8835e.d());
        if (a2.isEmpty()) {
            return;
        }
        List mutableList = CollectionsKt.toMutableList((Collection) a2);
        try {
            for (Map.Entry<t, Collection<n>> entry : a(a2).entrySet()) {
                this.f8834d.a(entry.getKey());
                mutableList.removeAll(entry.getValue());
            }
        } finally {
            if (!mutableList.isEmpty()) {
                b(mutableList);
            }
        }
    }

    private final Map<t, Collection<n>> a(Collection<? extends n> collection) {
        String q = this.f8835e.q();
        Intrinsics.checkExpressionValueIsNotNull(q, "buildConfigWrapper.sdkVersion");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : collection) {
            Integer f2 = ((n) obj).f();
            if (f2 == null) {
                f2 = Integer.valueOf(com.criteo.publisher.i0.a.FALLBACK.a());
            }
            Object obj2 = linkedHashMap.get(f2);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(f2, obj2);
            }
            ((List) obj2).add(obj);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object key = entry.getKey();
            Intrinsics.checkExpressionValueIsNotNull(key, "it.key");
            linkedHashMap2.put(t.a((Collection) entry.getValue(), q, ((Number) key).intValue()), entry.getValue());
        }
        return linkedHashMap2;
    }

    private final void b(Collection<? extends n> collection) {
        for (n nVar : collection) {
            this.f8833c.a((u) nVar);
        }
    }
}
