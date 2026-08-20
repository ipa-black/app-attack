package com.appodeal.ads;

import com.appodeal.ads.Native;
import com.appodeal.ads.api.Stats;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.networking.binders.b;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class t2 extends r<s2> {
    public int J;
    public final LinkedHashSet K;
    public final LinkedHashSet L;
    public final LinkedHashSet M;

    public t2(Native.c cVar) {
        super(cVar);
        this.K = new LinkedHashSet();
        this.L = new LinkedHashSet();
        this.M = new LinkedHashSet();
    }

    @Override // com.appodeal.ads.r
    public final void a(Stats.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.setCapacity(this.J);
    }

    @Override // com.appodeal.ads.r
    public final void e(s2 s2Var) {
        s2 adObject = s2Var;
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        String str = Native.f6382b.name;
        Intrinsics.checkNotNullExpressionValue(str, "nativeAdType.name");
        a(new b.a.InterfaceC0131a.d(str));
    }

    @Override // com.appodeal.ads.r
    public final AdType n() {
        return AdType.Native;
    }
}
