package com.ironsource.sdk.controller;

import android.text.TextUtils;
import com.ironsource.sdk.g.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, com.ironsource.sdk.g.c> f11715a = new LinkedHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, com.ironsource.sdk.g.c> f11716b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, com.ironsource.sdk.g.c> f11717c = new LinkedHashMap();

    public final com.ironsource.sdk.g.c a(d.e eVar, String str) {
        Map<String, com.ironsource.sdk.g.c> a2;
        if (TextUtils.isEmpty(str) || (a2 = a(eVar)) == null) {
            return null;
        }
        return a2.get(str);
    }

    public final com.ironsource.sdk.g.c a(d.e eVar, String str, Map<String, String> map, com.ironsource.sdk.j.a aVar) {
        com.ironsource.sdk.g.c cVar = new com.ironsource.sdk.g.c(str, str, map, aVar);
        a(eVar, str, cVar);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, com.ironsource.sdk.g.c> a(d.e eVar) {
        if (eVar.name().equalsIgnoreCase(d.e.RewardedVideo.name())) {
            return this.f11715a;
        }
        if (eVar.name().equalsIgnoreCase(d.e.Interstitial.name())) {
            return this.f11716b;
        }
        if (eVar.name().equalsIgnoreCase(d.e.Banner.name())) {
            return this.f11717c;
        }
        return null;
    }

    public void a(d.e eVar, String str, com.ironsource.sdk.g.c cVar) {
        Map<String, com.ironsource.sdk.g.c> a2;
        if (TextUtils.isEmpty(str) || (a2 = a(eVar)) == null) {
            return;
        }
        a2.put(str, cVar);
    }

    public final Collection<com.ironsource.sdk.g.c> b(d.e eVar) {
        Map<String, com.ironsource.sdk.g.c> a2 = a(eVar);
        return a2 != null ? a2.values() : new ArrayList();
    }
}
