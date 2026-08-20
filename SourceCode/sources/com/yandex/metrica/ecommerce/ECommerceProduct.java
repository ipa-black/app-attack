package com.yandex.metrica.ecommerce;

import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class ECommerceProduct {

    /* renamed from: a  reason: collision with root package name */
    private final String f12526a;

    /* renamed from: b  reason: collision with root package name */
    private String f12527b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f12528c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, String> f12529d;

    /* renamed from: e  reason: collision with root package name */
    private ECommercePrice f12530e;

    /* renamed from: f  reason: collision with root package name */
    private ECommercePrice f12531f;

    /* renamed from: g  reason: collision with root package name */
    private List<String> f12532g;

    public ECommerceProduct(String str) {
        this.f12526a = str;
    }

    public ECommercePrice getActualPrice() {
        return this.f12530e;
    }

    public List<String> getCategoriesPath() {
        return this.f12528c;
    }

    public String getName() {
        return this.f12527b;
    }

    public ECommercePrice getOriginalPrice() {
        return this.f12531f;
    }

    public Map<String, String> getPayload() {
        return this.f12529d;
    }

    public List<String> getPromocodes() {
        return this.f12532g;
    }

    public String getSku() {
        return this.f12526a;
    }

    public ECommerceProduct setActualPrice(ECommercePrice eCommercePrice) {
        this.f12530e = eCommercePrice;
        return this;
    }

    public ECommerceProduct setCategoriesPath(List<String> list) {
        this.f12528c = list;
        return this;
    }

    public ECommerceProduct setName(String str) {
        this.f12527b = str;
        return this;
    }

    public ECommerceProduct setOriginalPrice(ECommercePrice eCommercePrice) {
        this.f12531f = eCommercePrice;
        return this;
    }

    public ECommerceProduct setPayload(Map<String, String> map) {
        this.f12529d = map;
        return this;
    }

    public ECommerceProduct setPromocodes(List<String> list) {
        this.f12532g = list;
        return this;
    }

    public String toString() {
        return "ECommerceProduct{sku='" + this.f12526a + "', name='" + this.f12527b + "', categoriesPath=" + this.f12528c + ", payload=" + this.f12529d + ", actualPrice=" + this.f12530e + ", originalPrice=" + this.f12531f + ", promocodes=" + this.f12532g + '}';
    }
}
