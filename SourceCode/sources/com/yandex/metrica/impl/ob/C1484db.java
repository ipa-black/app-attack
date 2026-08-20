package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceEvent;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.db  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1484db extends ECommerceEvent {

    /* renamed from: b  reason: collision with root package name */
    public final Ya f14587b;

    /* renamed from: c  reason: collision with root package name */
    public final C1409ab f14588c;

    /* renamed from: d  reason: collision with root package name */
    private final Fa<C1484db> f14589d;

    public C1484db(Ya ya, C1409ab c1409ab, Fa<C1484db> fa) {
        this.f14587b = ya;
        this.f14588c = c1409ab;
        this.f14589d = fa;
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent
    public String getPublicDescription() {
        return "shown product details info";
    }

    @Override // com.yandex.metrica.ecommerce.ECommerceEvent, com.yandex.metrica.impl.ob.Za
    public List<Na<C1712mf, Vm>> toProto() {
        return (List) this.f14589d.fromModel(this);
    }

    public String toString() {
        return "ShownProductDetailInfoEvent{product=" + this.f14587b + ", referrer=" + this.f14588c + ", converter=" + this.f14589d + '}';
    }
}
