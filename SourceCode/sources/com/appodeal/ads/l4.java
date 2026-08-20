package com.appodeal.ads;

import com.appodeal.ads.modules.libs.network.AppodealEndpoint;
import com.appodeal.ads.modules.libs.network.AppodealEndpoints;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class l4 implements k4 {

    /* renamed from: a  reason: collision with root package name */
    public final AppodealEndpoint f6844a;

    public /* synthetic */ l4() {
        this(AppodealEndpoints.INSTANCE);
    }

    public l4(AppodealEndpoint appodealEndpoint) {
        Intrinsics.checkNotNullParameter(appodealEndpoint, "appodealEndpoint");
        this.f6844a = appodealEndpoint;
    }

    @Override // com.appodeal.ads.k4
    public final boolean b() {
        return this.f6844a.popNextEndpoint() != null;
    }
}
