package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceAmount;
import com.yandex.metrica.ecommerce.ECommercePrice;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes5.dex */
public class Xa {

    /* renamed from: a  reason: collision with root package name */
    public final Sa f14263a;

    /* renamed from: b  reason: collision with root package name */
    public final List<Sa> f14264b;

    public Xa(ECommercePrice eCommercePrice) {
        this(new Sa(eCommercePrice.getFiat()), a(eCommercePrice.getInternalComponents()));
    }

    public static List<Sa> a(List<ECommerceAmount> list) {
        if (list != null) {
            LinkedList linkedList = new LinkedList();
            for (ECommerceAmount eCommerceAmount : list) {
                linkedList.add(new Sa(eCommerceAmount.getAmount(), eCommerceAmount.getUnit()));
            }
            return linkedList;
        }
        return null;
    }

    public String toString() {
        return "PriceWrapper{fiat=" + this.f14263a + ", internalComponents=" + this.f14264b + '}';
    }

    public Xa(Sa sa, List<Sa> list) {
        this.f14263a = sa;
        this.f14264b = list;
    }
}
