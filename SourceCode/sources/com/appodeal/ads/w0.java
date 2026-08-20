package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.networking.binders.b;
import com.appodeal.ads.t0;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class w0 extends z5<v0> {
    public w0(t0.d dVar) {
        super(dVar);
    }

    @Override // com.appodeal.ads.r
    public final void e(l lVar) {
        v0 adObject = (v0) lVar;
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        t0.a c2 = t0.c();
        Intrinsics.checkNotNullExpressionValue(c2, "obtainAdRenderer()");
        a b2 = c2.b();
        Intrinsics.checkNotNullExpressionValue(b2, "adRenderer.currentDisplayPosition");
        String str = b2.f6419a;
        Intrinsics.checkNotNullExpressionValue(str, "currentDisplayPosition.name");
        a(new b.a.InterfaceC0131a.C0132a(str, adObject.t == 50 ? 320 : 728, c2.a(), t0.f7670b));
    }

    @Override // com.appodeal.ads.r
    public final AdType n() {
        return AdType.Banner;
    }
}
