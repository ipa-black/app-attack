package com.appnext.sdk.adapters.admob.ads;

import android.content.Context;
import android.os.Bundle;
import com.appnext.ads.fullscreen.RewardedConfig;
import com.appnext.ads.fullscreen.RewardedServerSidePostback;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.callbacks.OnAdClicked;
import com.appnext.core.callbacks.OnAdClosed;
import com.appnext.core.callbacks.OnAdError;
import com.appnext.core.callbacks.OnAdLoaded;
import com.appnext.core.callbacks.OnAdOpened;
import com.appnext.core.callbacks.OnVideoEnded;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import java.io.Serializable;
/* loaded from: classes.dex */
public class AppnextAdMobRewardedVideoAdapter implements MediationRewardedVideoAdAdapter {
    private MediationRewardedVideoAdListener _mediationRewardedVideoAdListener;
    AppnextRewardedVideoAd ad;

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void initialize(Context context, MediationAdRequest mediationAdRequest, String str, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, Bundle bundle, Bundle bundle2) {
        Serializable serializable;
        Serializable serializable2;
        String string;
        this._mediationRewardedVideoAdListener = mediationRewardedVideoAdListener;
        if (bundle != null) {
            try {
                serializable = bundle.getSerializable(AppnextAdMobCustomEvent.AppnextConfigurationExtraKey);
                serializable2 = bundle.getSerializable(AppnextAdMobCustomEvent.AppnextRewardPostbackExtraKey);
                string = bundle.getString(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
            } catch (Throwable th) {
                th.getMessage();
                MediationRewardedVideoAdListener mediationRewardedVideoAdListener2 = this._mediationRewardedVideoAdListener;
                if (mediationRewardedVideoAdListener2 != null) {
                    mediationRewardedVideoAdListener2.onInitializationFailed(this, 0);
                    return;
                }
                return;
            }
        } else {
            serializable2 = null;
            string = str;
            serializable = null;
        }
        if (bundle2 != null) {
            if (bundle2.containsKey(AppnextAdMobCustomEvent.AppnextConfigurationExtraKey)) {
                serializable = bundle2.getSerializable(AppnextAdMobCustomEvent.AppnextConfigurationExtraKey);
            }
            if (bundle2.containsKey(AppnextAdMobCustomEvent.AppnextRewardPostbackExtraKey)) {
                serializable2 = bundle2.getSerializable(AppnextAdMobCustomEvent.AppnextRewardPostbackExtraKey);
            }
            if (bundle2.containsKey(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD)) {
                string = bundle2.getString(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
            }
        }
        if (serializable != null && (serializable instanceof RewardedConfig)) {
            this.ad = new AppnextRewardedVideoAd(context, string, (RewardedConfig) serializable);
        } else {
            this.ad = new AppnextRewardedVideoAd(context, string);
        }
        if (serializable2 != null && (serializable2 instanceof RewardedServerSidePostback)) {
            RewardedServerSidePostback rewardedServerSidePostback = (RewardedServerSidePostback) serializable2;
            this.ad.setRewardedServerSidePostback(rewardedServerSidePostback.getRewardsTransactionId(), rewardedServerSidePostback.getRewardsUserId(), rewardedServerSidePostback.getRewardsRewardTypeCurrency(), rewardedServerSidePostback.getRewardsAmountRewarded(), rewardedServerSidePostback.getRewardsCustomParameter());
        }
        this.ad.setOnAdErrorCallback(new OnAdError() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobRewardedVideoAdapter.1
            @Override // com.appnext.core.callbacks.OnAdError
            public void adError(String str2) {
                if (AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener != null) {
                    AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener.onAdFailedToLoad(AppnextAdMobRewardedVideoAdapter.this, 0);
                }
            }
        });
        this.ad.setOnAdClickedCallback(new OnAdClicked() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobRewardedVideoAdapter.2
            @Override // com.appnext.core.callbacks.OnAdClicked
            public void adClicked() {
                if (AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener != null) {
                    AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener.onAdClicked(AppnextAdMobRewardedVideoAdapter.this);
                }
            }
        });
        this.ad.setOnAdClosedCallback(new OnAdClosed() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobRewardedVideoAdapter.3
            @Override // com.appnext.core.callbacks.OnAdClosed
            public void onAdClosed() {
                if (AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener != null) {
                    AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener.onAdClosed(AppnextAdMobRewardedVideoAdapter.this);
                }
            }
        });
        this.ad.setOnAdLoadedCallback(new OnAdLoaded() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobRewardedVideoAdapter.4
            @Override // com.appnext.core.callbacks.OnAdLoaded
            public void adLoaded(String str2, AppnextAdCreativeType appnextAdCreativeType) {
                if (AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener != null) {
                    AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener.onAdLoaded(AppnextAdMobRewardedVideoAdapter.this);
                }
            }
        });
        this.ad.setOnAdOpenedCallback(new OnAdOpened() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobRewardedVideoAdapter.5
            @Override // com.appnext.core.callbacks.OnAdOpened
            public void adOpened() {
                if (AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener != null) {
                    AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener.onAdOpened(AppnextAdMobRewardedVideoAdapter.this);
                }
            }
        });
        this.ad.setOnVideoEndedCallback(new OnVideoEnded() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobRewardedVideoAdapter.6
            @Override // com.appnext.core.callbacks.OnVideoEnded
            public void videoEnded() {
                if (AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener != null) {
                    AppnextAdMobRewardedVideoAdapter.this._mediationRewardedVideoAdListener.onRewarded(AppnextAdMobRewardedVideoAdapter.this, new RewardItem() { // from class: com.appnext.sdk.adapters.admob.ads.AppnextAdMobRewardedVideoAdapter.6.1
                        public int getAmount() {
                            return 1;
                        }

                        public String getType() {
                            return "";
                        }
                    });
                }
            }
        });
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener3 = this._mediationRewardedVideoAdListener;
        if (mediationRewardedVideoAdListener3 != null) {
            mediationRewardedVideoAdListener3.onInitializationSucceeded(this);
        }
    }

    public void loadAd(MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        Serializable serializable;
        AppnextRewardedVideoAd appnextRewardedVideoAd = this.ad;
        if (appnextRewardedVideoAd != null) {
            appnextRewardedVideoAd.loadAd();
        }
        if (bundle2 != null) {
            serializable = bundle2.getSerializable(AppnextAdMobCustomEvent.AppnextRewardPostbackExtraKey);
        } else {
            serializable = bundle != null ? bundle.getSerializable(AppnextAdMobCustomEvent.AppnextRewardPostbackExtraKey) : null;
        }
        if (serializable == null || !(serializable instanceof RewardedServerSidePostback)) {
            return;
        }
        RewardedServerSidePostback rewardedServerSidePostback = (RewardedServerSidePostback) serializable;
        this.ad.setRewardedServerSidePostback(rewardedServerSidePostback.getRewardsTransactionId(), rewardedServerSidePostback.getRewardsUserId(), rewardedServerSidePostback.getRewardsRewardTypeCurrency(), rewardedServerSidePostback.getRewardsAmountRewarded(), rewardedServerSidePostback.getRewardsCustomParameter());
    }

    public void showVideo() {
        AppnextRewardedVideoAd appnextRewardedVideoAd = this.ad;
        if (appnextRewardedVideoAd != null) {
            appnextRewardedVideoAd.showAd();
        }
    }

    public boolean isInitialized() {
        return this.ad != null;
    }

    /* loaded from: classes.dex */
    private class AppnextRewardedVideoAd extends RewardedVideo {
        protected static final String TID = "321";

        public AppnextRewardedVideoAd(Context context, String str) {
            super(context, str);
        }

        public AppnextRewardedVideoAd(Context context, String str, RewardedConfig rewardedConfig) {
            super(context, str, rewardedConfig);
        }

        @Override // com.appnext.ads.fullscreen.Video, com.appnext.core.Ad
        public String getTID() {
            return TID;
        }
    }
}
