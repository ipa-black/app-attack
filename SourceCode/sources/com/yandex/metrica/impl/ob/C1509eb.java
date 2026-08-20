package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.eb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1509eb extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final C1434bb f14663b;

    /* renamed from: c  reason: collision with root package name */
    private final Fa<C1509eb> f14664c;

    public C1509eb(C1434bb c1434bb, Fa<C1509eb> fa) {
        this.f14663b = c1434bb;
        this.f14664c = fa;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        return "shown screen info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C1712mf, Vm>> toProto() {
        return (List) this.f14664c.fromModel(this);
    }

    public String toString() {
        return "ShownScreenInfoEvent{screen=" + this.f14663b + ", converter=" + this.f14664c + '}';
    }
}
