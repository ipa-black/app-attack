package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceScreen;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.bb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1434bb {

    /* renamed from: a  reason: collision with root package name */
    public final String f14460a;

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f14461b;

    /* renamed from: c  reason: collision with root package name */
    public final String f14462c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f14463d;

    public C1434bb(ECommerceScreen eCommerceScreen) {
        this(eCommerceScreen.getName(), A2.a((Collection) eCommerceScreen.getCategoriesPath()), eCommerceScreen.getSearchQuery(), A2.c(eCommerceScreen.getPayload()));
    }

    public String toString() {
        return "ScreenWrapper{name='" + this.f14460a + "', categoriesPath=" + this.f14461b + ", searchQuery='" + this.f14462c + "', payload=" + this.f14463d + '}';
    }

    public C1434bb(String str, List<String> list, String str2, Map<String, String> map) {
        this.f14460a = str;
        this.f14461b = list;
        this.f14462c = str2;
        this.f14463d = map;
    }
}
