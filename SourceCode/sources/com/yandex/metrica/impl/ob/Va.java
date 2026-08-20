package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* loaded from: classes5.dex */
public class Va extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final int f14156b;

    /* renamed from: c  reason: collision with root package name */
    public final Wa f14157c;

    /* renamed from: d  reason: collision with root package name */
    private final Fa<Va> f14158d;

    public Va(int i, Wa wa, Fa<Va> fa) {
        this.f14156b = i;
        this.f14157c = wa;
        this.f14158d = fa;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        return "order info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C1712mf, Vm>> toProto() {
        return (List) this.f14158d.fromModel(this);
    }

    public String toString() {
        return "OrderInfoEvent{eventType=" + this.f14156b + ", order=" + this.f14157c + ", converter=" + this.f14158d + '}';
    }
}
