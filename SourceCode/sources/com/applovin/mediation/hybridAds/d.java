package com.applovin.mediation.hybridAds;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final n f6265a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends com.applovin.impl.sdk.utils.a {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.mediation.a.c f6266a;

        /* renamed from: b  reason: collision with root package name */
        private final n f6267b;

        /* renamed from: c  reason: collision with root package name */
        private final MaxAdapterListener f6268c;

        public a(com.applovin.impl.mediation.a.c cVar, n nVar, MaxAdapterListener maxAdapterListener) {
            this.f6266a = cVar;
            this.f6267b = nVar;
            this.f6268c = maxAdapterListener;
        }

        @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof MaxHybridMRecAdActivity) {
                com.applovin.impl.mediation.a.c cVar = this.f6266a;
                ((MaxHybridMRecAdActivity) activity).a(cVar, cVar.o(), this.f6267b, this.f6268c);
            }
        }

        @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if ((activity instanceof MaxHybridMRecAdActivity) && this.f6266a.x().get()) {
                this.f6267b.ai().b(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends com.applovin.impl.sdk.utils.a {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.mediation.a.c f6269a;

        /* renamed from: b  reason: collision with root package name */
        private final n f6270b;

        /* renamed from: c  reason: collision with root package name */
        private final MaxAdapterListener f6271c;

        public b(com.applovin.impl.mediation.a.c cVar, n nVar, MaxAdapterListener maxAdapterListener) {
            this.f6269a = cVar;
            this.f6270b = nVar;
            this.f6271c = maxAdapterListener;
        }

        @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof MaxHybridNativeAdActivity) {
                com.applovin.impl.mediation.a.c cVar = this.f6269a;
                ((MaxHybridNativeAdActivity) activity).a(cVar, cVar.getNativeAd(), this.f6270b, this.f6271c);
            }
        }

        @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if ((activity instanceof MaxHybridNativeAdActivity) && this.f6269a.x().get()) {
                this.f6270b.ai().b(this);
            }
        }
    }

    public d(n nVar) {
        this.f6265a = nVar;
    }

    public void a(com.applovin.impl.mediation.a.c cVar, Activity activity, MaxAdapterListener maxAdapterListener) {
        Intent intent;
        Utils.assertMainThread();
        if (activity == null) {
            activity = this.f6265a.ai().a();
        }
        if (cVar.getNativeAd() != null) {
            this.f6265a.D();
            if (v.a()) {
                this.f6265a.D().b("MaxHybridAdService", "Showing fullscreen native ad...");
            }
            this.f6265a.ai().a(new b(cVar, this.f6265a, maxAdapterListener));
            intent = new Intent(activity, MaxHybridNativeAdActivity.class);
        } else if (cVar.o() == null) {
            if (maxAdapterListener instanceof MaxInterstitialAdapterListener) {
                ((MaxInterstitialAdapterListener) maxAdapterListener).onInterstitialAdDisplayFailed(MaxAdapterError.AD_DISPLAY_FAILED);
                return;
            } else if (!(maxAdapterListener instanceof MaxAppOpenAdapterListener)) {
                throw new IllegalStateException("Failed to display hybrid ad: neither native nor adview ad");
            } else {
                ((MaxAppOpenAdapterListener) maxAdapterListener).onAppOpenAdDisplayFailed(MaxAdapterError.AD_DISPLAY_FAILED);
                return;
            }
        } else {
            this.f6265a.D();
            if (v.a()) {
                this.f6265a.D().b("MaxHybridAdService", "Showing fullscreen MREC ad...");
            }
            this.f6265a.ai().a(new a(cVar, this.f6265a, maxAdapterListener));
            intent = new Intent(activity, MaxHybridMRecAdActivity.class);
        }
        activity.startActivity(intent);
    }
}
