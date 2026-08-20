package com.yandex.metrica.ecommerce;

import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class ECommerceOrder {

    /* renamed from: a  reason: collision with root package name */
    private final String f12521a;

    /* renamed from: b  reason: collision with root package name */
    private final List<ECommerceCartItem> f12522b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f12523c;

    public ECommerceOrder(String str, List<ECommerceCartItem> list) {
        this.f12521a = str;
        this.f12522b = list;
    }

    public List<ECommerceCartItem> getCartItems() {
        return this.f12522b;
    }

    public String getIdentifier() {
        return this.f12521a;
    }

    public Map<String, String> getPayload() {
        return this.f12523c;
    }

    public ECommerceOrder setPayload(Map<String, String> map) {
        this.f12523c = map;
        return this;
    }

    public String toString() {
        return "ECommerceOrder{identifier='" + this.f12521a + "', cartItems=" + this.f12522b + ", payload=" + this.f12523c + '}';
    }
}
