package com.applovin.impl.sdk.d;

import java.util.Map;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f5628a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5629b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f5630c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5631d;

    public a(String str, String str2) {
        this(str, str2, null, false);
    }

    public a(String str, String str2, Map<String, String> map, boolean z) {
        this.f5628a = str;
        this.f5629b = str2;
        this.f5630c = map;
        this.f5631d = z;
    }

    public String a() {
        return this.f5628a;
    }

    public String b() {
        return this.f5629b;
    }

    public Map<String, String> c() {
        return this.f5630c;
    }

    public boolean d() {
        return this.f5631d;
    }

    public String toString() {
        return "AdEventPostback{url='" + this.f5628a + "', backupUrl='" + this.f5629b + "', headers='" + this.f5630c + "', shouldFireInWebView='" + this.f5631d + "'}";
    }
}
