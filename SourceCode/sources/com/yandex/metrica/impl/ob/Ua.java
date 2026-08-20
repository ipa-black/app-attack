package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceCartItem;
import java.math.BigDecimal;
/* loaded from: classes5.dex */
public class Ua {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f14022a;

    /* renamed from: b  reason: collision with root package name */
    public final BigDecimal f14023b;

    /* renamed from: c  reason: collision with root package name */
    public final Xa f14024c;

    /* renamed from: d  reason: collision with root package name */
    public final C1409ab f14025d;

    public Ua(ECommerceCartItem eCommerceCartItem) {
        this(new Ya(eCommerceCartItem.getProduct()), eCommerceCartItem.getQuantity(), new Xa(eCommerceCartItem.getRevenue()), eCommerceCartItem.getReferrer() == null ? null : new C1409ab(eCommerceCartItem.getReferrer()));
    }

    public String toString() {
        return "CartItemWrapper{product=" + this.f14022a + ", quantity=" + this.f14023b + ", revenue=" + this.f14024c + ", referrer=" + this.f14025d + '}';
    }

    public Ua(Ya ya, BigDecimal bigDecimal, Xa xa, C1409ab c1409ab) {
        this.f14022a = ya;
        this.f14023b = bigDecimal;
        this.f14024c = xa;
        this.f14025d = c1409ab;
    }
}
