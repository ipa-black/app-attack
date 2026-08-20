package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.AdapterDebugInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAPSDataInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBidderInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.adunit.b.d;
import com.ironsource.mediationsdk.adunit.data.DataKeys;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class N<Listener extends AdapterAdInteractionListener> extends BaseAdInteractionAdapter<N<Listener>, Listener> implements AdapterDebugInterface, AdapterAPSDataInterface, AdapterBaseInterface, AdapterBidderInterface, AdapterConsentInterface, AdapterMetaDataInterface, AdapterSettingsInterface, InterstitialSmashListener, RewardedVideoSmashListener {

    /* renamed from: a  reason: collision with root package name */
    IronSource.AD_UNIT f10776a;

    /* renamed from: b  reason: collision with root package name */
    private AbstractAdapter f10777b;

    /* renamed from: c  reason: collision with root package name */
    private com.ironsource.mediationsdk.adunit.b.d f10778c;

    /* renamed from: d  reason: collision with root package name */
    private NetworkInitializationListener f10779d;

    /* renamed from: e  reason: collision with root package name */
    private AdapterAdListener f10780e;

    public N(AbstractAdapter abstractAdapter, NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
        super(ad_unit, networkSettings);
        this.f10777b = abstractAdapter;
        this.f10776a = ad_unit;
        this.f10778c = new com.ironsource.mediationsdk.adunit.b.d(ad_unit, d.b.PROVIDER, null);
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            this.f10777b.addInterstitialListener(this);
        } else if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.f10777b.addRewardedVideoListener(this);
        } else {
            IronLog.INTERNAL.error(a("ad unit not supported - " + this.f10776a));
        }
    }

    private String a(String str) {
        String ad_unit = this.f10776a.toString();
        return TextUtils.isEmpty(str) ? ad_unit : ad_unit + " - " + str;
    }

    private boolean a(IronSourceError ironSourceError) {
        if (this.f10776a == IronSource.AD_UNIT.INTERSTITIAL) {
            return ironSourceError.getErrorCode() == 1158;
        } else if (this.f10776a == IronSource.AD_UNIT.REWARDED_VIDEO) {
            return ironSourceError.getErrorCode() == 1058;
        } else {
            IronLog.INTERNAL.error(a("ad unit not supported - " + this.f10776a));
            return false;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public final String getAdapterVersion() {
        try {
            return this.f10777b.getVersion();
        } catch (Exception e2) {
            String str = "Exception while calling adapter.getVersion() from " + this.f10777b.getProviderName() + " - " + e2.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str));
            this.f10778c.f10984e.l(str);
            return null;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBidderInterface
    public final Map<String, Object> getBiddingData(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f10776a == IronSource.AD_UNIT.INTERSTITIAL) {
                return this.f10777b.getInterstitialBiddingData(jSONObject);
            }
            if (this.f10776a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                return this.f10777b.getRewardedVideoBiddingData(jSONObject);
            }
            IronLog.INTERNAL.error(a("ad unit not supported - " + this.f10776a));
            return null;
        } catch (Throwable th) {
            String str = "getBiddingData exception - " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str));
            com.ironsource.mediationsdk.adunit.b.d dVar = this.f10778c;
            if (dVar != null) {
                dVar.f10984e.m(str);
                return null;
            }
            return null;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public final LoadWhileShowSupportState getLoadWhileShowSupportedState(NetworkSettings networkSettings) {
        try {
            return this.f10776a == IronSource.AD_UNIT.REWARDED_VIDEO ? this.f10777b.getLoadWhileShowSupportState(networkSettings.getRewardedVideoSettings()) : LoadWhileShowSupportState.NONE;
        } catch (Exception e2) {
            IronLog.INTERNAL.error(a("Exception while calling adapter.getLoadWhileShowSupportedState from " + this.f10777b.getProviderName() + " - " + e2.getLocalizedMessage()));
            return LoadWhileShowSupportState.NONE;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter
    public final /* bridge */ /* synthetic */ AdapterBaseInterface getNetworkAdapter() {
        return this;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public final String getNetworkSDKVersion() {
        try {
            return this.f10777b.getCoreSDKVersion();
        } catch (Exception e2) {
            String str = "Exception while calling adapter.getCoreSDKVersion() from " + this.f10777b.getProviderName() + " - " + e2.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str));
            this.f10778c.f10984e.l(str);
            return null;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public final void init(AdData adData, Context context, NetworkInitializationListener networkInitializationListener) {
        this.f10779d = networkInitializationListener;
        String string = adData.getString(DataKeys.USER_ID);
        try {
            String str = H.a().l;
            if (!TextUtils.isEmpty(str)) {
                this.f10777b.setMediationSegment(str);
            }
            String pluginType = ConfigFile.getConfigFile().getPluginType();
            if (!TextUtils.isEmpty(pluginType)) {
                this.f10777b.setPluginData(pluginType, ConfigFile.getConfigFile().getPluginFrameworkVersion());
            }
        } catch (Throwable th) {
            String str2 = "setCustomParams exception - " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str2));
            com.ironsource.mediationsdk.adunit.b.d dVar = this.f10778c;
            if (dVar != null) {
                dVar.f10984e.m(str2);
            }
        }
        JSONObject a2 = com.ironsource.mediationsdk.c.b.a(adData.getConfiguration());
        try {
            if (this.f10776a != IronSource.AD_UNIT.INTERSTITIAL) {
                if (this.f10776a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                    this.f10777b.initRewardedVideoWithCallback("", string, a2, this);
                    return;
                } else {
                    IronLog.INTERNAL.error("ad unit not supported - " + this.f10776a);
                    return;
                }
            }
            Integer num = adData.getInt("instanceType");
            if (num == null || num.intValue() != 1) {
                this.f10777b.initInterstitialForBidding("", string, a2, this);
            } else {
                this.f10777b.initInterstitial("", string, a2, this);
            }
        } catch (Throwable th2) {
            String str3 = "init failed - " + th2.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str3));
            com.ironsource.mediationsdk.adunit.b.d dVar2 = this.f10778c;
            if (dVar2 != null) {
                dVar2.f10984e.m(str3);
            }
            if (this.f10776a == IronSource.AD_UNIT.INTERSTITIAL) {
                onInterstitialInitFailed(new IronSourceError(IronSourceError.ERROR_IS_INIT_EXCEPTION, str3));
            } else if (this.f10776a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                onRewardedVideoInitFailed(new IronSourceError(IronSourceError.ERROR_RV_INIT_EXCEPTION, str3));
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter
    public final boolean isAdAvailable(AdData adData) {
        JSONObject a2 = com.ironsource.mediationsdk.c.b.a(adData.getConfiguration());
        try {
            if (this.f10776a == IronSource.AD_UNIT.INTERSTITIAL) {
                return this.f10777b.isInterstitialReady(a2);
            }
            if (this.f10776a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                return this.f10777b.isRewardedVideoAvailable(a2);
            }
            IronLog.INTERNAL.error(a("ad unit not supported - " + this.f10776a));
            return false;
        } catch (Throwable th) {
            String str = "isAdAvailable exception - " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str));
            com.ironsource.mediationsdk.adunit.b.d dVar = this.f10778c;
            if (dVar != null) {
                dVar.f10984e.m(str);
                return false;
            }
            return false;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter
    public final /* synthetic */ void loadAd(AdData adData, Activity activity, Object obj) {
        this.f10780e = (AdapterAdInteractionListener) obj;
        JSONObject a2 = com.ironsource.mediationsdk.c.b.a(adData.getConfiguration());
        try {
            if (this.f10776a == IronSource.AD_UNIT.INTERSTITIAL) {
                Integer num = adData.getInt("instanceType");
                if (num == null || num.intValue() != 1) {
                    this.f10777b.loadInterstitialForBidding(a2, this, adData.getServerData());
                } else {
                    this.f10777b.loadInterstitial(a2, this);
                }
            } else if (this.f10776a != IronSource.AD_UNIT.REWARDED_VIDEO) {
                IronLog.INTERNAL.error(a("ad unit not supported - " + this.f10776a));
            } else {
                Integer num2 = adData.getInt("instanceType");
                if (num2 == null || num2.intValue() != 1) {
                    this.f10777b.loadRewardedVideoForBidding(a2, this, adData.getServerData());
                } else {
                    this.f10777b.fetchRewardedVideoForAutomaticLoad(a2, this);
                }
            }
        } catch (Throwable th) {
            String str = "loadAd exception - " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str));
            com.ironsource.mediationsdk.adunit.b.d dVar = this.f10778c;
            if (dVar != null) {
                dVar.f10984e.m(str);
            }
            if (this.f10776a == IronSource.AD_UNIT.INTERSTITIAL) {
                onInterstitialAdLoadFailed(new IronSourceError(510, str));
            } else if (this.f10776a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                onRewardedVideoLoadFailed(new IronSourceError(510, str));
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener != null) {
            adapterAdListener.onAdClicked();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdClosed() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdClosed();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener != null) {
            adapterAdListener.onAdLoadFailed(a(ironSourceError) ? AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL : AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdOpened() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdOpened();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdReady() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener != null) {
            adapterAdListener.onAdLoadSuccess();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdShowFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdShowSucceeded() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdShowSuccess();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdVisible() {
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialInitFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        NetworkInitializationListener networkInitializationListener = this.f10779d;
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialInitSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        NetworkInitializationListener networkInitializationListener = this.f10779d;
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitSuccess();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener != null) {
            adapterAdListener.onAdClicked();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdClosed() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdClosed();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdEnded() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdEnded();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdOpened() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdOpened();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdRewarded() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdRewardListener) {
            ((AdapterAdRewardListener) adapterAdListener).onAdRewarded();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdShowFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdStarted() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdStarted();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdVisible() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener instanceof AdapterAdInteractionListener) {
            ((AdapterAdInteractionListener) adapterAdListener).onAdVisible();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAvailabilityChanged(boolean z) {
        IronLog.INTERNAL.verbose(a("available = " + z));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener != null) {
            if (z) {
                adapterAdListener.onAdLoadSuccess();
                return;
            }
            IronSourceError buildLoadFailedError = ErrorBuilder.buildLoadFailedError(this.f10776a.name(), this.f10777b.getProviderName(), "availability changed to false");
            this.f10780e.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, buildLoadFailedError.getErrorCode(), buildLoadFailedError.getErrorMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoInitFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        NetworkInitializationListener networkInitializationListener = this.f10779d;
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoInitSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        NetworkInitializationListener networkInitializationListener = this.f10779d;
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitSuccess();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoLoadFailed(IronSourceError ironSourceError) {
        AdapterErrorType adapterErrorType;
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        if (this.f10780e != null) {
            if (a(ironSourceError)) {
                adapterErrorType = AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL;
            } else {
                if (this.f10776a != IronSource.AD_UNIT.INTERSTITIAL) {
                    if (this.f10776a != IronSource.AD_UNIT.REWARDED_VIDEO) {
                        IronLog.INTERNAL.error(a("ad unit not supported - " + this.f10776a));
                    } else if (ironSourceError.getErrorCode() == 1057) {
                        adapterErrorType = AdapterErrorType.ADAPTER_ERROR_TYPE_AD_EXPIRED;
                    }
                }
                adapterErrorType = AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
            }
            this.f10780e.onAdLoadFailed(adapterErrorType, ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoLoadSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(a(""));
        AdapterAdListener adapterAdListener = this.f10780e;
        if (adapterAdListener != null) {
            adapterAdListener.onAdLoadSuccess();
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter
    public final void releaseMemory() {
        AbstractAdapter abstractAdapter = this.f10777b;
        if (abstractAdapter != null) {
            try {
                abstractAdapter.releaseMemory(this.f10776a, new JSONObject());
                this.f10777b = null;
            } catch (Exception e2) {
                String str = "Exception while calling adapter.releaseMemory() from " + this.f10777b.getProviderName() + " - " + e2.getLocalizedMessage();
                IronLog.INTERNAL.error(a(str));
                this.f10778c.f10984e.l(str);
            }
        }
        this.f10779d = null;
        this.f10780e = null;
        com.ironsource.mediationsdk.adunit.b.d dVar = this.f10778c;
        if (dVar != null) {
            dVar.a();
            this.f10778c = null;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAPSDataInterface
    public final void setAPSData(IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        AbstractAdapter abstractAdapter = this.f10777b;
        if (abstractAdapter == null || !(abstractAdapter instanceof SetAPSInterface)) {
            return;
        }
        ((SetAPSInterface) abstractAdapter).setAPSData(ad_unit, jSONObject);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.AdapterDebugInterface
    public final void setAdapterDebug(boolean z) {
        AbstractAdapter abstractAdapter = this.f10777b;
        if (abstractAdapter != null) {
            try {
                abstractAdapter.setAdapterDebug(Boolean.valueOf(z));
            } catch (Exception e2) {
                String str = "Exception while calling adapter.setAdapterDebug(adapterDebug) from " + this.f10777b.getProviderName() + " - " + e2.getLocalizedMessage();
                IronLog.INTERNAL.error(a(str));
                this.f10778c.f10984e.l(str);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface
    public final void setConsent(boolean z) {
        AbstractAdapter abstractAdapter = this.f10777b;
        if (abstractAdapter != null) {
            try {
                abstractAdapter.setConsent(z);
            } catch (Exception e2) {
                String str = "Exception while calling adapter.setConsent(consent) from " + this.f10777b.getProviderName() + " - " + e2.getLocalizedMessage();
                IronLog.INTERNAL.error(a(str));
                this.f10778c.f10984e.l(str);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface
    public final void setMetaData(String str, List<String> list) {
        AbstractAdapter abstractAdapter = this.f10777b;
        if (abstractAdapter != null) {
            abstractAdapter.setMetaData(str, list);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter
    public final void showAd(AdData adData, Listener listener) {
        this.f10780e = listener;
        JSONObject a2 = com.ironsource.mediationsdk.c.b.a(adData.getConfiguration());
        try {
            if (this.f10776a == IronSource.AD_UNIT.INTERSTITIAL) {
                this.f10777b.showInterstitial(a2, this);
            } else if (this.f10776a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                this.f10777b.showRewardedVideo(a2, this);
            } else {
                IronLog.INTERNAL.error(a("ad unit not supported - " + this.f10776a));
            }
        } catch (Throwable th) {
            String str = "showAd exception - " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str));
            com.ironsource.mediationsdk.adunit.b.d dVar = this.f10778c;
            if (dVar != null) {
                dVar.f10984e.m(str);
            }
            if (this.f10776a == IronSource.AD_UNIT.INTERSTITIAL) {
                onInterstitialAdShowFailed(new IronSourceError(IronSourceError.ERROR_IS_SHOW_EXCEPTION, str));
            } else if (this.f10776a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                onRewardedVideoAdShowFailed(new IronSourceError(IronSourceError.ERROR_RV_SHOW_EXCEPTION, str));
            }
        }
    }
}
