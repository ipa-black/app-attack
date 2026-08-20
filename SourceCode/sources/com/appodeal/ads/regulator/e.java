package com.appodeal.ads.regulator;

import com.appodeal.ads.regulator.a;
import com.appodeal.consent.Consent;
import com.appodeal.consent.ConsentForm;
import com.appodeal.consent.ConsentFormListener;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class e extends ConsentFormListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f7408a;

    public e(d dVar) {
        this.f7408a = dVar;
    }

    @Override // com.appodeal.consent.ConsentFormListener, com.appodeal.consent.IConsentFormListener
    public final void onConsentFormClosed(Consent consent) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        d.a(this.f7408a, new a.C0138a(consent));
    }

    @Override // com.appodeal.consent.ConsentFormListener, com.appodeal.consent.IConsentFormListener
    public final void onConsentFormLoaded(ConsentForm consentForm) {
        Intrinsics.checkNotNullParameter(consentForm, "consentForm");
        d.a(this.f7408a, new a.e(consentForm));
    }
}
