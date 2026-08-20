package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* loaded from: classes5.dex */
public class Ta extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final int f13947b;

    /* renamed from: c  reason: collision with root package name */
    public final Ua f13948c;

    /* renamed from: d  reason: collision with root package name */
    private final Fa<Ta> f13949d;

    public Ta(int i, Ua ua, Fa<Ta> fa) {
        this.f13947b = i;
        this.f13948c = ua;
        this.f13949d = fa;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        int i = this.f13947b;
        return i != 4 ? i != 5 ? "unknown cart action info" : "remove cart item info" : "add cart item info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C1712mf, Vm>> toProto() {
        return (List) this.f13949d.fromModel(this);
    }

    public String toString() {
        return "CartActionInfoEvent{eventType=" + this.f13947b + ", cartItem=" + this.f13948c + ", converter=" + this.f13949d + '}';
    }
}
