package com.appodeal.consent;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.consent.internal.d;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.NotificationBundleProcessor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0002H\u0016J\b\u0010\n\u001a\u00020\u0002H\u0016R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0013¨\u0006\u0019"}, d2 = {"Lcom/appodeal/consent/ConsentForm;", "Lcom/appodeal/consent/internal/d$a;", "", "load", Constants.SHOW, "onLoaded", "Lcom/appodeal/consent/ConsentManagerError;", com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, "onError", "onOpened", "onClosed", "Lcom/appodeal/consent/IConsentFormListener;", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "Lcom/appodeal/consent/IConsentFormListener;", "getListener", "()Lcom/appodeal/consent/IConsentFormListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "isLoaded", "()Z", "isShowing", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Lcom/appodeal/consent/IConsentFormListener;)V", "apd_consent"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class ConsentForm implements d.a {

    /* renamed from: a  reason: collision with root package name */
    public final IConsentFormListener f8049a;

    /* renamed from: b  reason: collision with root package name */
    public final d f8050b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConsentForm(Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public ConsentForm(Context context, IConsentFormListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f8049a = listener;
        this.f8050b = new d(context, this);
    }

    public /* synthetic */ ConsentForm(Context context, IConsentFormListener iConsentFormListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? new ConsentFormListener() : iConsentFormListener);
    }

    public final IConsentFormListener getListener() {
        return this.f8049a;
    }

    public final boolean isLoaded() {
        return this.f8050b.d();
    }

    public final boolean isShowing() {
        return this.f8050b.f();
    }

    public final void load() {
        this.f8050b.g();
    }

    @Override // com.appodeal.consent.internal.d.a
    public void onClosed() {
        this.f8049a.onConsentFormClosed(ConsentManager.getConsent());
    }

    @Override // com.appodeal.consent.internal.d.a
    public void onError(ConsentManagerError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.f8049a.onConsentFormError(error);
    }

    @Override // com.appodeal.consent.internal.d.a
    public void onLoaded() {
        this.f8049a.onConsentFormLoaded(this);
    }

    @Override // com.appodeal.consent.internal.d.a
    public void onOpened() {
        this.f8049a.onConsentFormOpened();
    }

    public final void show() {
        this.f8050b.h();
    }
}
