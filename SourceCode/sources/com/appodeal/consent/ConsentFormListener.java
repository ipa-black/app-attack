package com.appodeal.consent;

import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016¨\u0006\u000e"}, d2 = {"Lcom/appodeal/consent/ConsentFormListener;", "Lcom/appodeal/consent/IConsentFormListener;", "()V", "onConsentFormClosed", "", "consent", "Lcom/appodeal/consent/Consent;", "onConsentFormError", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "Lcom/appodeal/consent/ConsentManagerError;", "onConsentFormLoaded", "consentForm", "Lcom/appodeal/consent/ConsentForm;", "onConsentFormOpened", "apd_consent"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public class ConsentFormListener implements IConsentFormListener {
    @Override // com.appodeal.consent.IConsentFormListener
    public void onConsentFormClosed(Consent consent) {
        Intrinsics.checkNotNullParameter(consent, "consent");
    }

    @Override // com.appodeal.consent.IConsentFormListener
    public void onConsentFormError(ConsentManagerError error) {
        Intrinsics.checkNotNullParameter(error, "error");
    }

    @Override // com.appodeal.consent.IConsentFormListener
    public void onConsentFormLoaded(ConsentForm consentForm) {
        Intrinsics.checkNotNullParameter(consentForm, "consentForm");
    }

    @Override // com.appodeal.consent.IConsentFormListener
    public void onConsentFormOpened() {
    }
}
