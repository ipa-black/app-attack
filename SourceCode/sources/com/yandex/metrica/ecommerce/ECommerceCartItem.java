package com.yandex.metrica.ecommerce;

import com.yandex.metrica.impl.ob.A2;
import java.math.BigDecimal;
/* loaded from: classes3.dex */
public class ECommerceCartItem {

    /* renamed from: a  reason: collision with root package name */
    private final ECommerceProduct f12516a;

    /* renamed from: b  reason: collision with root package name */
    private final BigDecimal f12517b;

    /* renamed from: c  reason: collision with root package name */
    private final ECommercePrice f12518c;

    /* renamed from: d  reason: collision with root package name */
    private ECommerceReferrer f12519d;

    public ECommerceCartItem(ECommerceProduct eCommerceProduct, ECommercePrice eCommercePrice, long j) {
        this(eCommerceProduct, eCommercePrice, A2.a(j));
    }

    public ECommerceProduct getProduct() {
        return this.f12516a;
    }

    public BigDecimal getQuantity() {
        return this.f12517b;
    }

    public ECommerceReferrer getReferrer() {
        return this.f12519d;
    }

    public ECommercePrice getRevenue() {
        return this.f12518c;
    }

    public ECommerceCartItem setReferrer(ECommerceReferrer eCommerceReferrer) {
        this.f12519d = eCommerceReferrer;
        return this;
    }

    public String toString() {
        return "ECommerceCartItem{product=" + this.f12516a + ", quantity=" + this.f12517b + ", revenue=" + this.f12518c + ", referrer=" + this.f12519d + '}';
    }

    public ECommerceCartItem(ECommerceProduct eCommerceProduct, ECommercePrice eCommercePrice, double d2) {
        this(eCommerceProduct, eCommercePrice, new BigDecimal(A2.a(d2, 0.0d)));
    }

    public ECommerceCartItem(ECommerceProduct eCommerceProduct, ECommercePrice eCommercePrice, BigDecimal bigDecimal) {
        this.f12516a = eCommerceProduct;
        this.f12517b = bigDecimal;
        this.f12518c = eCommercePrice;
    }
}
