package com.yandex.metrica.ecommerce;
/* loaded from: classes3.dex */
public class ECommerceReferrer {

    /* renamed from: a  reason: collision with root package name */
    private String f12533a;

    /* renamed from: b  reason: collision with root package name */
    private String f12534b;

    /* renamed from: c  reason: collision with root package name */
    private ECommerceScreen f12535c;

    public String getIdentifier() {
        return this.f12534b;
    }

    public ECommerceScreen getScreen() {
        return this.f12535c;
    }

    public String getType() {
        return this.f12533a;
    }

    public ECommerceReferrer setIdentifier(String str) {
        this.f12534b = str;
        return this;
    }

    public ECommerceReferrer setScreen(ECommerceScreen eCommerceScreen) {
        this.f12535c = eCommerceScreen;
        return this;
    }

    public ECommerceReferrer setType(String str) {
        this.f12533a = str;
        return this;
    }

    public String toString() {
        return "ECommerceReferrer{type='" + this.f12533a + "', identifier='" + this.f12534b + "', screen=" + this.f12535c + '}';
    }
}
