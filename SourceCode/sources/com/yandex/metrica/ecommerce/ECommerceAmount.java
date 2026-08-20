package com.yandex.metrica.ecommerce;

import com.yandex.metrica.impl.ob.A2;
import java.math.BigDecimal;
/* loaded from: classes3.dex */
public class ECommerceAmount {

    /* renamed from: a  reason: collision with root package name */
    private final BigDecimal f12514a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12515b;

    public ECommerceAmount(long j, String str) {
        this(A2.a(j), str);
    }

    public BigDecimal getAmount() {
        return this.f12514a;
    }

    public String getUnit() {
        return this.f12515b;
    }

    public String toString() {
        return "ECommerceAmount{amount=" + this.f12514a + ", unit='" + this.f12515b + "'}";
    }

    public ECommerceAmount(double d2, String str) {
        this(new BigDecimal(A2.a(d2, 0.0d)), str);
    }

    public ECommerceAmount(BigDecimal bigDecimal, String str) {
        this.f12514a = bigDecimal;
        this.f12515b = str;
    }
}
