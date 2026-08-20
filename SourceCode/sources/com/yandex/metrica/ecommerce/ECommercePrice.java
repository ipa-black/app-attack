package com.yandex.metrica.ecommerce;

import java.util.List;
/* loaded from: classes3.dex */
public class ECommercePrice {

    /* renamed from: a  reason: collision with root package name */
    private final ECommerceAmount f12524a;

    /* renamed from: b  reason: collision with root package name */
    private List<ECommerceAmount> f12525b;

    public ECommercePrice(ECommerceAmount eCommerceAmount) {
        this.f12524a = eCommerceAmount;
    }

    public ECommerceAmount getFiat() {
        return this.f12524a;
    }

    public List<ECommerceAmount> getInternalComponents() {
        return this.f12525b;
    }

    public ECommercePrice setInternalComponents(List<ECommerceAmount> list) {
        this.f12525b = list;
        return this;
    }

    public String toString() {
        return "ECommercePrice{fiat=" + this.f12524a + ", internalComponents=" + this.f12525b + '}';
    }
}
