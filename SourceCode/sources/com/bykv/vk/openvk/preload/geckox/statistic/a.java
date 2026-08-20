package com.bykv.vk.openvk.preload.geckox.statistic;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: StatisticDataManager.java */
/* loaded from: classes2.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Long, a> f8567a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, com.bykv.vk.openvk.preload.geckox.statistic.model.a> f8568b = new HashMap();

    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(long j) {
        a aVar;
        Map<Long, a> map = f8567a;
        synchronized (map) {
            aVar = map.get(Long.valueOf(j));
            if (aVar == null) {
                aVar = new a();
                map.put(Long.valueOf(j), aVar);
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.bykv.vk.openvk.preload.geckox.statistic.model.a a(String str) {
        com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar;
        synchronized (this.f8568b) {
            aVar = this.f8568b.get(str);
            if (aVar == null) {
                aVar = new com.bykv.vk.openvk.preload.geckox.statistic.model.a();
                this.f8568b.put(str, aVar);
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<com.bykv.vk.openvk.preload.geckox.statistic.model.a> a() {
        ArrayList arrayList;
        synchronized (this.f8568b) {
            arrayList = new ArrayList(this.f8568b.values());
        }
        return arrayList;
    }
}
