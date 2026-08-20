package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceReferrer;
/* renamed from: com.yandex.metrica.impl.ob.ab  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1409ab {

    /* renamed from: a  reason: collision with root package name */
    public final String f14405a;

    /* renamed from: b  reason: collision with root package name */
    public final String f14406b;

    /* renamed from: c  reason: collision with root package name */
    public final C1434bb f14407c;

    public C1409ab(ECommerceReferrer eCommerceReferrer) {
        this(eCommerceReferrer.getType(), eCommerceReferrer.getIdentifier(), eCommerceReferrer.getScreen() == null ? null : new C1434bb(eCommerceReferrer.getScreen()));
    }

    public String toString() {
        return "ReferrerWrapper{type='" + this.f14405a + "', identifier='" + this.f14406b + "', screen=" + this.f14407c + '}';
    }

    public C1409ab(String str, String str2, C1434bb c1434bb) {
        this.f14405a = str;
        this.f14406b = str2;
        this.f14407c = c1434bb;
    }
}
