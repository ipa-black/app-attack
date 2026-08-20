package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.networking.binders.b;
import com.appodeal.ads.o1;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class r1 extends r<p1> {
    public r1(o1.c cVar) {
        super(cVar);
    }

    @Override // com.appodeal.ads.r
    public final void e(p1 p1Var) {
        p1 adObject = p1Var;
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        a(b.a.InterfaceC0131a.C0133b.f7158a);
    }

    @Override // com.appodeal.ads.r
    public final AdType n() {
        return AdType.Interstitial;
    }
}
