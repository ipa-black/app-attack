package com.appnext.sdk.adapters.admob.banners;

import android.content.Context;
import android.os.Bundle;
import com.appnext.banners.BannerAdRequest;
import com.appnext.banners.BannerListener;
import com.appnext.banners.BannerSize;
import com.appnext.banners.BannerView;
import com.appnext.banners.d;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.AppnextError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.customevent.CustomEventBanner;
import com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
/* loaded from: classes.dex */
public class AppnextAdMobBannerAdapter implements CustomEventBanner {
    public static final String AppNextBannerAdRequestKey = "AppNextBannerAdRequestKey";
    public static final String AppNextBannerLanguageKey = "AppNextBannerLanguageKey";
    protected BannerView bannerView;

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEvent
    public void onDestroy() {
        BannerView bannerView = this.bannerView;
        if (bannerView != null) {
            bannerView.destroy();
            this.bannerView = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBanner
    public void requestBannerAd(Context context, final CustomEventBannerListener customEventBannerListener, String str, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle) {
        try {
            BannerView bannerView = this.bannerView;
            if (bannerView != null) {
                bannerView.destroy();
                this.bannerView = null;
            }
            d.S().q(ScarConstants.TOKEN_ID_KEY, "321");
            AppnextAdmobBannerView appnextAdmobBannerView = new AppnextAdmobBannerView(context);
            this.bannerView = appnextAdmobBannerView;
            if (bundle != null) {
                appnextAdmobBannerView.setLanguage(bundle.getString(AppNextBannerLanguageKey, ""));
            }
            this.bannerView.setPlacementId(str);
            if (adSize.getWidth() == BannerSize.BANNER.getWidth() && adSize.getHeight() == BannerSize.BANNER.getHeight()) {
                this.bannerView.setBannerSize(BannerSize.BANNER);
            } else if (adSize.getWidth() == BannerSize.LARGE_BANNER.getWidth() && adSize.getHeight() == BannerSize.LARGE_BANNER.getHeight()) {
                this.bannerView.setBannerSize(BannerSize.LARGE_BANNER);
            } else if (adSize.getWidth() == BannerSize.MEDIUM_RECTANGLE.getWidth() && adSize.getHeight() == BannerSize.MEDIUM_RECTANGLE.getHeight()) {
                this.bannerView.setBannerSize(BannerSize.MEDIUM_RECTANGLE);
            } else {
                throw new IllegalArgumentException("Wrong size");
            }
            this.bannerView.setBannerListener(new BannerListener() { // from class: com.appnext.sdk.adapters.admob.banners.AppnextAdMobBannerAdapter.1
                @Override // com.appnext.banners.BannerListener
                public void onAdLoaded(String str2, AppnextAdCreativeType appnextAdCreativeType) {
                    customEventBannerListener.onAdLoaded(AppnextAdMobBannerAdapter.this.bannerView);
                    super.onAdLoaded(str2, appnextAdCreativeType);
                }

                @Override // com.appnext.banners.BannerListener
                public void onAdClicked() {
                    customEventBannerListener.onAdClicked();
                    super.onAdClicked();
                }

                @Override // com.appnext.banners.BannerListener
                public void onError(AppnextError appnextError) {
                    super.onError(appnextError);
                    String errorMessage = appnextError.getErrorMessage();
                    errorMessage.hashCode();
                    char c2 = 65535;
                    switch (errorMessage.hashCode()) {
                        case -1958363695:
                            if (errorMessage.equals(AppnextError.NO_ADS)) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1477010874:
                            if (errorMessage.equals(AppnextError.CONNECTION_ERROR)) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 350741825:
                            if (errorMessage.equals(AppnextError.TIMEOUT)) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 844170097:
                            if (errorMessage.equals(AppnextError.SLOW_CONNECTION)) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            customEventBannerListener.onAdFailedToLoad(3);
                            return;
                        case 1:
                        case 2:
                        case 3:
                            customEventBannerListener.onAdFailedToLoad(2);
                            return;
                        default:
                            customEventBannerListener.onAdFailedToLoad(0);
                            return;
                    }
                }

                @Override // com.appnext.banners.BannerListener
                public void adImpression() {
                    super.adImpression();
                }
            });
            this.bannerView.loadAd((BannerAdRequest) bundle.getSerializable(AppNextBannerAdRequestKey));
        } catch (Throwable unused) {
        }
    }
}
