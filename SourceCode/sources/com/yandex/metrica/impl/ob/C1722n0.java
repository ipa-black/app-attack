package com.yandex.metrica.impl.ob;

import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.n0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1722n0 {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, String> f15229a;

    /* renamed from: b  reason: collision with root package name */
    public final String f15230b;

    /* renamed from: c  reason: collision with root package name */
    public final String f15231c;

    public C1722n0(String str, Map<String, String> map, String str2) {
        this.f15230b = str;
        this.f15229a = map;
        this.f15231c = str2;
    }

    public String toString() {
        return "DeferredDeeplinkState{mParameters=" + this.f15229a + ", mDeeplink='" + this.f15230b + "', mUnparsedReferrer='" + this.f15231c + "'}";
    }
}
