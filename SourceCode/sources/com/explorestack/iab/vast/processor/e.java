package com.explorestack.iab.vast.processor;

import com.explorestack.iab.vast.tags.VastXmlTag;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public boolean f9592a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f9593b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9594c;

    public e() {
        this(true, true, true);
    }

    public e(VastXmlTag vastXmlTag) {
        this(vastXmlTag.getBooleanAttributeValueByName("followAdditionalWrappers", true), vastXmlTag.getBooleanAttributeValueByName("allowMultipleAds", true), vastXmlTag.getBooleanAttributeValueByName("fallbackOnNoAd", true));
    }

    private e(boolean z, boolean z2, boolean z3) {
        this.f9592a = z;
        this.f9593b = z2;
        this.f9594c = z3;
    }

    public boolean a() {
        return this.f9593b;
    }

    public boolean b() {
        return this.f9594c;
    }

    public boolean c() {
        return this.f9592a;
    }
}
