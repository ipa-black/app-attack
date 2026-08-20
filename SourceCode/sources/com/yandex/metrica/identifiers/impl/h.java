package com.yandex.metrica.identifiers.impl;

import android.content.Context;
import android.os.Bundle;
import com.appodeal.ads.AppodealNetworks;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final Map f12591a;

    public h(Map providers) {
        Intrinsics.checkNotNullParameter(providers, "providers");
        this.f12591a = providers;
    }

    public /* synthetic */ h(Map map, int i) {
        this((i & 1) != 0 ? MapsKt.mapOf(TuplesKt.to("google", new k()), TuplesKt.to("huawei", new r()), TuplesKt.to(AppodealNetworks.YANDEX, new o())) : null);
    }

    public final Bundle a(Context context, String str) {
        g a2;
        Intrinsics.checkNotNullParameter(context, "context");
        i iVar = (i) this.f12591a.get(str);
        if (iVar == null || (a2 = iVar.a(context)) == null) {
            return null;
        }
        return a2.a();
    }
}
