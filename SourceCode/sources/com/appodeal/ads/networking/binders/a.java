package com.appodeal.ads.networking.binders;

import com.appodeal.ads.h0;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f7144a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7145b;

    public a(String adapterVersion, String adapterSdkVersion) {
        Intrinsics.checkNotNullParameter(adapterVersion, "adapterVersion");
        Intrinsics.checkNotNullParameter(adapterSdkVersion, "adapterSdkVersion");
        this.f7144a = adapterVersion;
        this.f7145b = adapterSdkVersion;
    }

    public final String a() {
        return this.f7145b;
    }

    public final String b() {
        return this.f7144a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.f7144a, aVar.f7144a) && Intrinsics.areEqual(this.f7145b, aVar.f7145b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7145b.hashCode() + (this.f7144a.hashCode() * 31);
    }

    public final String toString() {
        return h0.a("ModuleInfo(adapterVersion=").append(this.f7144a).append(", adapterSdkVersion=").append(this.f7145b).append(')').toString();
    }
}
