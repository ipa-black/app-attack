package com.ironsource.mediationsdk.sdk;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.Date;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class i implements InterstitialListener, RewardedVideoListener, SegmentListener, f {

    /* renamed from: a  reason: collision with root package name */
    public RewardedVideoListener f11336a;

    /* renamed from: b  reason: collision with root package name */
    public InterstitialListener f11337b;

    /* renamed from: c  reason: collision with root package name */
    public OfferwallListener f11338c;

    /* renamed from: d  reason: collision with root package name */
    public SegmentListener f11339d;

    /* renamed from: e  reason: collision with root package name */
    public InterstitialPlacement f11340e = null;

    /* renamed from: f  reason: collision with root package name */
    public String f11341f = null;

    /* renamed from: g  reason: collision with root package name */
    private a f11342g;

    /* renamed from: h  reason: collision with root package name */
    private long f11343h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        Handler f11375a;

        private a() {
        }

        /* synthetic */ a(i iVar, byte b2) {
            this();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Looper.prepare();
            this.f11375a = new Handler();
            Looper.loop();
        }
    }

    public i() {
        a aVar = new a(this, (byte) 0);
        this.f11342g = aVar;
        aVar.start();
        this.f11343h = new Date().getTime();
    }

    private void a(Runnable runnable) {
        Handler handler;
        a aVar = this.f11342g;
        if (aVar == null || (handler = aVar.f11375a) == null) {
            return;
        }
        handler.post(runnable);
    }

    private boolean a(Object obj) {
        return (obj == null || this.f11342g == null) ? false : true;
    }

    public final void a(final IronSourceError ironSourceError, Map<String, Object> map) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoAdShowFailed(" + ironSourceError.toString() + ")", 1);
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_CODE, ironSourceError.getErrorCode());
            mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage());
            if (!TextUtils.isEmpty(this.f11341f)) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.f11341f);
            }
            if (map != null) {
                for (String str : map.keySet()) {
                    mediationAdditionalData.put(str, map.get(str));
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, mediationAdditionalData));
        if (a(this.f11336a)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.21
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11336a.onRewardedVideoAdShowFailed(ironSourceError);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.f
    public final void a(final boolean z, IronSourceError ironSourceError) {
        String str = "onOfferwallAvailable(isAvailable: " + z + ")";
        if (ironSourceError != null) {
            str = str + ", error: " + ironSourceError.getErrorMessage();
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put("status", String.valueOf(z));
            if (ironSourceError != null) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_CODE, ironSourceError.getErrorCode());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(302, mediationAdditionalData));
        if (a(this.f11338c)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.14
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11338c.onOfferwallAvailable(z);
                }
            });
        }
    }

    public final void a(final boolean z, Map<String, Object> map) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAvailabilityChanged(available:" + z + ")", 1);
        long time = new Date().getTime() - this.f11343h;
        this.f11343h = new Date().getTime();
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put("duration", time);
            if (map != null) {
                for (String str : map.keySet()) {
                    mediationAdditionalData.put(str, map.get(str));
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(z ? IronSourceConstants.RV_CALLBACK_AVAILABILITY_TRUE : IronSourceConstants.RV_CALLBACK_AVAILABILITY_FALSE, mediationAdditionalData));
        if (a(this.f11336a)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.16
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11336a.onRewardedVideoAvailabilityChanged(z);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onGetOfferwallCreditsFailed(final IronSourceError ironSourceError) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onGetOfferwallCreditsFailed(" + ironSourceError + ")", 1);
        if (a(this.f11338c)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.11
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11338c.onGetOfferwallCreditsFailed(ironSourceError);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public final void onInterstitialAdClicked() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdClicked()", 1);
        if (a(this.f11337b)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.7
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11337b.onInterstitialAdClicked();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public final void onInterstitialAdClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdClosed()", 1);
        if (a(this.f11337b)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.8
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11337b.onInterstitialAdClosed();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public final void onInterstitialAdLoadFailed(final IronSourceError ironSourceError) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdLoadFailed(" + ironSourceError + ")", 1);
        if (a(this.f11337b)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.3
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11337b.onInterstitialAdLoadFailed(ironSourceError);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public final void onInterstitialAdOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdOpened()", 1);
        if (a(this.f11337b)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.4
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11337b.onInterstitialAdOpened();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public final void onInterstitialAdReady() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdReady()", 1);
        if (a(this.f11337b)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.2
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11337b.onInterstitialAdReady();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public final void onInterstitialAdShowFailed(final IronSourceError ironSourceError) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdShowFailed(" + ironSourceError + ")", 1);
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_CODE, ironSourceError.getErrorCode());
            InterstitialPlacement interstitialPlacement = this.f11340e;
            if (interstitialPlacement != null && !TextUtils.isEmpty(interstitialPlacement.getPlacementName())) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.f11340e.getPlacementName());
            }
            if (ironSourceError.getErrorMessage() != null) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, mediationAdditionalData));
        if (a(this.f11337b)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.6
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11337b.onInterstitialAdShowFailed(ironSourceError);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public final void onInterstitialAdShowSucceeded() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdShowSucceeded()", 1);
        if (a(this.f11337b)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.5
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11337b.onInterstitialAdShowSucceeded();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final boolean onOfferwallAdCredited(int i, int i2, boolean z) {
        OfferwallListener offerwallListener = this.f11338c;
        boolean onOfferwallAdCredited = offerwallListener != null ? offerwallListener.onOfferwallAdCredited(i, i2, z) : false;
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallAdCredited(credits:" + i + ", totalCredits:" + i2 + ", totalCreditsFlag:" + z + "):" + onOfferwallAdCredited, 1);
        return onOfferwallAdCredited;
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onOfferwallAvailable(boolean z) {
        a(z, (IronSourceError) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onOfferwallClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallClosed()", 1);
        if (a(this.f11338c)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.13
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11338c.onOfferwallClosed();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onOfferwallOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallOpened()", 1);
        if (a(this.f11338c)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.9
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11338c.onOfferwallOpened();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public final void onOfferwallShowFailed(final IronSourceError ironSourceError) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallShowFailed(" + ironSourceError + ")", 1);
        if (a(this.f11338c)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.10
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11338c.onOfferwallShowFailed(ironSourceError);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public final void onRewardedVideoAdClicked(final Placement placement) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdClicked(" + placement.getPlacementName() + ")", 1);
        if (a(this.f11336a)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.20
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11336a.onRewardedVideoAdClicked(placement);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public final void onRewardedVideoAdClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdClosed()", 1);
        if (a(this.f11336a)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.15
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11336a.onRewardedVideoAdClosed();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public final void onRewardedVideoAdEnded() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdEnded()", 1);
        if (a(this.f11336a)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.18
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11336a.onRewardedVideoAdEnded();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public final void onRewardedVideoAdOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdOpened()", 1);
        if (a(this.f11336a)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.12
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11336a.onRewardedVideoAdOpened();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public final void onRewardedVideoAdRewarded(final Placement placement) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdRewarded(" + placement.toString() + ")", 1);
        if (a(this.f11336a)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.19
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11336a.onRewardedVideoAdRewarded(placement);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public final void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        a(ironSourceError, (Map<String, Object>) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public final void onRewardedVideoAdStarted() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdStarted()", 1);
        if (a(this.f11336a)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.17
                @Override // java.lang.Runnable
                public final void run() {
                    i.this.f11336a.onRewardedVideoAdStarted();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public final void onRewardedVideoAvailabilityChanged(boolean z) {
        a(z, (Map<String, Object>) null);
    }

    @Override // com.ironsource.mediationsdk.sdk.SegmentListener
    public final void onSegmentReceived(final String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onSegmentReceived(" + str + ")", 1);
        if (a(this.f11339d)) {
            a(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.i.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    i.this.f11339d.onSegmentReceived(str);
                }
            });
        }
    }
}
