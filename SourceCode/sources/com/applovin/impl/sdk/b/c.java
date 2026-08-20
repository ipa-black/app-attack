package com.applovin.impl.sdk.b;

import java.util.Map;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f5584a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f5585b;

    private c(String str, Map<String, String> map) {
        this.f5584a = str;
        this.f5585b = map;
    }

    public static c a(String str) {
        return a(str, null);
    }

    public static c a(String str, Map<String, String> map) {
        return new c(str, map);
    }

    public Map<String, String> a() {
        return this.f5585b;
    }

    public String b() {
        return this.f5584a;
    }

    public String toString() {
        return "PendingReward{result='" + this.f5584a + "'params='" + this.f5585b + "'}";
    }
}
