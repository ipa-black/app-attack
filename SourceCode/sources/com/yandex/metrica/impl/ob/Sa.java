package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceAmount;
import java.math.BigDecimal;
/* loaded from: classes5.dex */
public class Sa {

    /* renamed from: a  reason: collision with root package name */
    public final BigDecimal f13855a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13856b;

    public Sa(ECommerceAmount eCommerceAmount) {
        this(eCommerceAmount.getAmount(), eCommerceAmount.getUnit());
    }

    public String toString() {
        return "AmountWrapper{amount=" + this.f13855a + ", unit='" + this.f13856b + "'}";
    }

    public Sa(BigDecimal bigDecimal, String str) {
        this.f13855a = bigDecimal;
        this.f13856b = str;
    }
}
