package com.ironsource.sdk.g;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public String f12025a;

    /* renamed from: b  reason: collision with root package name */
    public String f12026b;

    /* renamed from: d  reason: collision with root package name */
    public Map<String, String> f12028d;

    /* renamed from: g  reason: collision with root package name */
    public com.ironsource.sdk.j.a f12031g;

    /* renamed from: c  reason: collision with root package name */
    public int f12027c = -1;

    /* renamed from: e  reason: collision with root package name */
    public int f12029e = 0;

    /* renamed from: f  reason: collision with root package name */
    public boolean f12030f = false;

    public c(String str, String str2, Map<String, String> map, com.ironsource.sdk.j.a aVar) {
        this.f12026b = str;
        this.f12025a = str2;
        this.f12028d = map;
        this.f12031g = aVar;
    }

    public final Map<String, String> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("demandSourceId", this.f12026b);
        hashMap.put("demandSourceName", this.f12025a);
        Map<String, String> map = this.f12028d;
        if (map != null) {
            hashMap.putAll(map);
        }
        return hashMap;
    }

    public final synchronized void a(int i) {
        this.f12029e = i;
    }
}
