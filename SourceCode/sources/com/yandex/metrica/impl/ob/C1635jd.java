package com.yandex.metrica.impl.ob;

import com.yandex.metrica.modules.api.ModuleEntryPoint;
import com.yandex.metrica.modules.api.RemoteConfigExtensionConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
/* renamed from: com.yandex.metrica.impl.ob.jd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1635jd implements InterfaceC1660kd, InterfaceC1665ki {

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<ModuleEntryPoint> f15003a = new CopyOnWriteArrayList<>();

    @Override // com.yandex.metrica.impl.ob.InterfaceC1660kd
    public Map<String, Integer> a() {
        List emptyList;
        Map blocks;
        CopyOnWriteArrayList<ModuleEntryPoint> copyOnWriteArrayList = this.f15003a;
        ArrayList arrayList = new ArrayList();
        for (ModuleEntryPoint moduleEntryPoint : copyOnWriteArrayList) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = moduleEntryPoint.getRemoteConfigExtensionConfiguration();
            if (remoteConfigExtensionConfiguration == null || (blocks = remoteConfigExtensionConfiguration.getBlocks()) == null || (emptyList = MapsKt.toList(blocks)) == null) {
                emptyList = CollectionsKt.emptyList();
            }
            CollectionsKt.addAll(arrayList, emptyList);
        }
        return MapsKt.toMap(arrayList);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public void a(EnumC1566gi enumC1566gi, C1790pi c1790pi) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1660kd
    public List<String> b() {
        List emptyList;
        CopyOnWriteArrayList<ModuleEntryPoint> copyOnWriteArrayList = this.f15003a;
        ArrayList arrayList = new ArrayList();
        for (ModuleEntryPoint moduleEntryPoint : copyOnWriteArrayList) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = moduleEntryPoint.getRemoteConfigExtensionConfiguration();
            if (remoteConfigExtensionConfiguration == null || (emptyList = remoteConfigExtensionConfiguration.getFeatures()) == null) {
                emptyList = CollectionsKt.emptyList();
            }
            CollectionsKt.addAll(arrayList, emptyList);
        }
        return arrayList;
    }

    public Map<String, C1586hd> c() {
        CopyOnWriteArrayList<ModuleEntryPoint> copyOnWriteArrayList = this.f15003a;
        ArrayList arrayList = new ArrayList();
        for (ModuleEntryPoint moduleEntryPoint : copyOnWriteArrayList) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = moduleEntryPoint.getRemoteConfigExtensionConfiguration();
            Pair pair = remoteConfigExtensionConfiguration != null ? TuplesKt.to(moduleEntryPoint.getIdentifier(), new C1586hd(remoteConfigExtensionConfiguration)) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return MapsKt.toMap(arrayList);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public void a(C1790pi c1790pi) {
        C1611id c1611id = new C1611id(c1790pi);
        for (ModuleEntryPoint moduleEntryPoint : this.f15003a) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = moduleEntryPoint.getRemoteConfigExtensionConfiguration();
            if (remoteConfigExtensionConfiguration != null) {
                remoteConfigExtensionConfiguration.getRemoteConfigUpdateListener().onRemoteConfigUpdated(c1611id.a(moduleEntryPoint.getIdentifier()));
            }
        }
    }
}
