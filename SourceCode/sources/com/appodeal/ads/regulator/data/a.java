package com.appodeal.ads.regulator.data;

import com.appodeal.consent.Consent;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Consent f7406a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f7407b;

    public a(Consent consent, boolean z) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        this.f7406a = consent;
        this.f7407b = z;
    }

    public final Consent a() {
        return this.f7406a;
    }

    public final boolean b() {
        return this.f7407b;
    }
}
