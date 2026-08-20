package com.ironsource.sdk;

import java.util.Map;
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f11519a;

    /* renamed from: b  reason: collision with root package name */
    public String f11520b;

    /* renamed from: c  reason: collision with root package name */
    public String f11521c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11522d;

    /* renamed from: e  reason: collision with root package name */
    public a f11523e;

    /* renamed from: f  reason: collision with root package name */
    public Map<String, String> f11524f;

    /* renamed from: g  reason: collision with root package name */
    public com.ironsource.sdk.j.a f11525g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f11526h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, String str2, boolean z, boolean z2, Map<String, String> map, com.ironsource.sdk.j.a aVar, a aVar2) {
        this.f11520b = str;
        this.f11521c = str2;
        this.f11519a = z;
        this.f11522d = z2;
        this.f11524f = map;
        this.f11525g = aVar;
        this.f11523e = aVar2;
    }

    public final boolean a() {
        a aVar = this.f11523e;
        return aVar != null && aVar.f11498b > 0 && aVar.f11497a > 0;
    }
}
