package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.cb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1459cb extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final Ya f14544b;

    /* renamed from: c  reason: collision with root package name */
    public final C1434bb f14545c;

    /* renamed from: d  reason: collision with root package name */
    private final Fa<C1459cb> f14546d;

    public C1459cb(Ya ya, C1434bb c1434bb, Fa<C1459cb> fa) {
        this.f14544b = ya;
        this.f14545c = c1434bb;
        this.f14546d = fa;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        return "shown product card info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C1712mf, Vm>> toProto() {
        return (List) this.f14546d.fromModel(this);
    }

    public String toString() {
        return "ShownProductCardInfoEvent{product=" + this.f14544b + ", screen=" + this.f14545c + ", converter=" + this.f14546d + '}';
    }
}
