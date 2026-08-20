package com.yandex.metrica.identifiers.impl;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final String f12585a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12586b;

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f12587c;

    public f(String provider, String str, Boolean bool) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.f12585a = provider;
        this.f12586b = str;
        this.f12587c = bool;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("com.yandex.metrica.identifiers.extra.PROVIDER", this.f12585a);
        bundle.putString("com.yandex.metrica.identifiers.extra.ID", this.f12586b);
        Boolean bool = this.f12587c;
        if (bool != null) {
            bundle.putBoolean("com.yandex.metrica.identifiers.extra.LIMITED", bool.booleanValue());
        }
        return bundle;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof f) {
                f fVar = (f) obj;
                return Intrinsics.areEqual(this.f12585a, fVar.f12585a) && Intrinsics.areEqual(this.f12586b, fVar.f12586b) && Intrinsics.areEqual(this.f12587c, fVar.f12587c);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f12585a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f12586b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Boolean bool = this.f12587c;
        return hashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        return "AdsIdInfo(provider=" + this.f12585a + ", advId=" + this.f12586b + ", limitedAdTracking=" + this.f12587c + ")";
    }
}
