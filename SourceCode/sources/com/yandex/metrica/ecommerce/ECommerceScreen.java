package com.yandex.metrica.ecommerce;

import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class ECommerceScreen {

    /* renamed from: a  reason: collision with root package name */
    private String f12536a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f12537b;

    /* renamed from: c  reason: collision with root package name */
    private String f12538c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, String> f12539d;

    public List<String> getCategoriesPath() {
        return this.f12537b;
    }

    public String getName() {
        return this.f12536a;
    }

    public Map<String, String> getPayload() {
        return this.f12539d;
    }

    public String getSearchQuery() {
        return this.f12538c;
    }

    public ECommerceScreen setCategoriesPath(List<String> list) {
        this.f12537b = list;
        return this;
    }

    public ECommerceScreen setName(String str) {
        this.f12536a = str;
        return this;
    }

    public ECommerceScreen setPayload(Map<String, String> map) {
        this.f12539d = map;
        return this;
    }

    public ECommerceScreen setSearchQuery(String str) {
        this.f12538c = str;
        return this;
    }

    public String toString() {
        return "ECommerceScreen{name='" + this.f12536a + "', categoriesPath=" + this.f12537b + ", searchQuery='" + this.f12538c + "', payload=" + this.f12539d + '}';
    }
}
