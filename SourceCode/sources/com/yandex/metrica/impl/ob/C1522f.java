package com.yandex.metrica.impl.ob;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.f  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1522f implements InterfaceC1671l {

    /* renamed from: a  reason: collision with root package name */
    private boolean f14704a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, com.yandex.metrica.billing_interface.a> f14705b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1721n f14706c;

    public C1522f(InterfaceC1721n storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.f14706c = storage;
        C1451c3 c1451c3 = (C1451c3) storage;
        this.f14704a = c1451c3.b();
        List<com.yandex.metrica.billing_interface.a> a2 = c1451c3.a();
        Intrinsics.checkNotNullExpressionValue(a2, "storage.billingInfo");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : a2) {
            linkedHashMap.put(((com.yandex.metrica.billing_interface.a) obj).f12478b, obj);
        }
        this.f14705b = linkedHashMap;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1671l
    public void a(Map<String, ? extends com.yandex.metrica.billing_interface.a> history) {
        Intrinsics.checkNotNullParameter(history, "history");
        for (com.yandex.metrica.billing_interface.a aVar : history.values()) {
            Map<String, com.yandex.metrica.billing_interface.a> map = this.f14705b;
            String str = aVar.f12478b;
            Intrinsics.checkNotNullExpressionValue(str, "billingInfo.sku");
            map.put(str, aVar);
        }
        ((C1451c3) this.f14706c).a(CollectionsKt.toList(this.f14705b.values()), this.f14704a);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1671l
    public void b() {
        if (this.f14704a) {
            return;
        }
        this.f14704a = true;
        ((C1451c3) this.f14706c).a(CollectionsKt.toList(this.f14705b.values()), this.f14704a);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1671l
    public com.yandex.metrica.billing_interface.a a(String sku) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        return this.f14705b.get(sku);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1671l
    public boolean a() {
        return this.f14704a;
    }
}
