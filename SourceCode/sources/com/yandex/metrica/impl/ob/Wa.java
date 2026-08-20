package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceCartItem;
import com.yandex.metrica.ecommerce.ECommerceOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes5.dex */
public class Wa {

    /* renamed from: a  reason: collision with root package name */
    public final String f14189a;

    /* renamed from: b  reason: collision with root package name */
    public final String f14190b;

    /* renamed from: c  reason: collision with root package name */
    public final List<Ua> f14191c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f14192d;

    public Wa(ECommerceOrder eCommerceOrder) {
        this(UUID.randomUUID().toString(), eCommerceOrder.getIdentifier(), a(eCommerceOrder.getCartItems()), A2.c(eCommerceOrder.getPayload()));
    }

    private static List<Ua> a(List<ECommerceCartItem> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (ECommerceCartItem eCommerceCartItem : list) {
            arrayList.add(new Ua(eCommerceCartItem));
        }
        return arrayList;
    }

    public String toString() {
        return "OrderWrapper{uuid='" + this.f14189a + "', identifier='" + this.f14190b + "', cartItems=" + this.f14191c + ", payload=" + this.f14192d + '}';
    }

    public Wa(String str, String str2, List<Ua> list, Map<String, String> map) {
        this.f14189a = str;
        this.f14190b = str2;
        this.f14191c = list;
        this.f14192d = map;
    }
}
