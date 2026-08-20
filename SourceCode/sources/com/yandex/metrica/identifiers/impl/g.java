package com.yandex.metrica.identifiers.impl;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final l f12588a;

    /* renamed from: b  reason: collision with root package name */
    private final f f12589b;

    /* renamed from: c  reason: collision with root package name */
    private final String f12590c;

    public g(l status, f fVar, String str) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.f12588a = status;
        this.f12589b = fVar;
        this.f12590c = str;
    }

    public /* synthetic */ g(l lVar, f fVar, String str, int i) {
        this(lVar, (i & 2) != 0 ? null : fVar, (i & 4) != 0 ? null : str);
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        f fVar = this.f12589b;
        if (fVar != null) {
            bundle.putBundle("com.yandex.metrica.identifiers.extra.TRACKING_INFO", fVar.a());
        }
        bundle.putString("com.yandex.metrica.identifiers.extra.STATUS", this.f12588a.a());
        bundle.putString("com.yandex.metrica.identifiers.extra.ERROR_MESSAGE", this.f12590c);
        return bundle;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof g) {
                g gVar = (g) obj;
                return Intrinsics.areEqual(this.f12588a, gVar.f12588a) && Intrinsics.areEqual(this.f12589b, gVar.f12589b) && Intrinsics.areEqual(this.f12590c, gVar.f12590c);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        l lVar = this.f12588a;
        int hashCode = (lVar != null ? lVar.hashCode() : 0) * 31;
        f fVar = this.f12589b;
        int hashCode2 = (hashCode + (fVar != null ? fVar.hashCode() : 0)) * 31;
        String str = this.f12590c;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "AdsIdResult(status=" + this.f12588a + ", adsIdInfo=" + this.f12589b + ", errorExplanation=" + this.f12590c + ")";
    }
}
