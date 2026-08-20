package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceProduct;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class Ya {

    /* renamed from: a  reason: collision with root package name */
    public final String f14305a;

    /* renamed from: b  reason: collision with root package name */
    public final String f14306b;

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f14307c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f14308d;

    /* renamed from: e  reason: collision with root package name */
    public final Xa f14309e;

    /* renamed from: f  reason: collision with root package name */
    public final Xa f14310f;

    /* renamed from: g  reason: collision with root package name */
    public final List<String> f14311g;

    public Ya(ECommerceProduct eCommerceProduct) {
        this(eCommerceProduct.getSku(), eCommerceProduct.getName(), A2.a((Collection) eCommerceProduct.getCategoriesPath()), A2.c(eCommerceProduct.getPayload()), eCommerceProduct.getActualPrice() == null ? null : new Xa(eCommerceProduct.getActualPrice()), eCommerceProduct.getOriginalPrice() == null ? null : new Xa(eCommerceProduct.getOriginalPrice()), A2.a((Collection) eCommerceProduct.getPromocodes()));
    }

    public String toString() {
        return "ProductWrapper{sku='" + this.f14305a + "', name='" + this.f14306b + "', categoriesPath=" + this.f14307c + ", payload=" + this.f14308d + ", actualPrice=" + this.f14309e + ", originalPrice=" + this.f14310f + ", promocodes=" + this.f14311g + '}';
    }

    public Ya(String str, String str2, List<String> list, Map<String, String> map, Xa xa, Xa xa2, List<String> list2) {
        this.f14305a = str;
        this.f14306b = str2;
        this.f14307c = list;
        this.f14308d = map;
        this.f14309e = xa;
        this.f14310f = xa2;
        this.f14311g = list2;
    }
}
