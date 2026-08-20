package com.yandex.metrica.impl.ob;

import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ee  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1512ee implements InterfaceC1915v0 {

    /* renamed from: a  reason: collision with root package name */
    public final String f14676a;

    /* renamed from: b  reason: collision with root package name */
    public final JSONObject f14677b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f14678c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f14679d;

    /* renamed from: e  reason: collision with root package name */
    public final EnumC1891u0 f14680e;

    public C1512ee(String str, JSONObject jSONObject, boolean z, boolean z2, EnumC1891u0 enumC1891u0) {
        this.f14676a = str;
        this.f14677b = jSONObject;
        this.f14678c = z;
        this.f14679d = z2;
        this.f14680e = enumC1891u0;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1915v0
    public EnumC1891u0 a() {
        return this.f14680e;
    }

    public String toString() {
        return "PreloadInfoState{trackingId='" + this.f14676a + "', additionalParameters=" + this.f14677b + ", wasSet=" + this.f14678c + ", autoTrackingEnabled=" + this.f14679d + ", source=" + this.f14680e + '}';
    }
}
