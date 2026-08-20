package com.applovin.mediation.hybridAds;

import android.os.Bundle;
import android.view.ViewGroup;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.n;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.R;
/* loaded from: classes.dex */
public class MaxHybridNativeAdActivity extends b {

    /* renamed from: c  reason: collision with root package name */
    private MaxNativeAdView f6256c;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.applovin.impl.mediation.a.c cVar, final MaxNativeAd maxNativeAd, n nVar, MaxAdapterListener maxAdapterListener) {
        super.a(cVar, nVar, maxAdapterListener);
        MaxNativeAdView maxNativeAdView = new MaxNativeAdView(maxNativeAd, new MaxNativeAdViewBinder.Builder(R.layout.max_hybrid_native_ad_view).setTitleTextViewId(R.id.applovin_native_title_text_view).setBodyTextViewId(R.id.applovin_native_body_text_view).setAdvertiserTextViewId(R.id.applovin_native_advertiser_text_view).setIconImageViewId(R.id.applovin_native_icon_image_view).setMediaContentViewGroupId(R.id.applovin_native_media_content_view).setOptionsContentViewGroupId(R.id.applovin_native_options_view).setCallToActionButtonId(R.id.applovin_native_cta_button).build(), this);
        this.f6256c = maxNativeAdView;
        maxNativeAdView.renderCustomNativeAdView(maxNativeAd);
        Runnable runnable = new Runnable() { // from class: com.applovin.mediation.hybridAds.MaxHybridNativeAdActivity.1
            @Override // java.lang.Runnable
            public void run() {
                if (maxNativeAd.prepareForInteraction(MaxHybridNativeAdActivity.this.f6256c.getClickableViews(), MaxHybridNativeAdActivity.this.f6256c)) {
                    return;
                }
                maxNativeAd.prepareViewForInteraction(MaxHybridNativeAdActivity.this.f6256c);
            }
        };
        if (maxNativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            runOnUiThread(runnable);
        } else {
            nVar.V().a(new z(nVar, runnable), o.a.MEDIATION_MAIN);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.mediation.hybridAds.b, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((ViewGroup) findViewById(16908290)).addView(this.f6256c);
        this.f6260a.bringToFront();
    }
}
