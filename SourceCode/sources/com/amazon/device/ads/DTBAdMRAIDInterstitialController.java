package com.amazon.device.ads;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import java.util.Map;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DTBAdMRAIDInterstitialController extends DTBAdMRAIDController implements DTBAdViewDisplayListener {
    DTBAdInterstitialListener interstitialListener;
    boolean pageDisplayed;
    boolean pageLoaded;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTBAdMRAIDInterstitialController(DTBAdView dTBAdView, DTBAdInterstitialListener dTBAdInterstitialListener) {
        super(dTBAdView);
        this.pageLoaded = false;
        this.pageDisplayed = false;
        this.interstitialListener = dTBAdInterstitialListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTBAdInterstitialListener getInterstitialListener() {
        return this.interstitialListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInterstitialListener(DTBAdInterstitialListener dTBAdInterstitialListener) {
        this.interstitialListener = dTBAdInterstitialListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onPageLoad() {
        this.pageLoaded = true;
        try {
            initializeOnLoadAndDisplay();
            DTBAdInterstitialListener dTBAdInterstitialListener = this.interstitialListener;
            if (dTBAdInterstitialListener != null) {
                dTBAdInterstitialListener.onAdLoaded(this.adView);
            }
            if (DTBMetricsConfiguration.getInstance().isFeatureEnabled("additional_webview_metric")) {
                StringBuilder sb = new StringBuilder("Creative Rendering finish");
                if (!DtbCommonUtils.isNullOrEmpty(getAdView().getBidId())) {
                    sb = sb.append(String.format(" interstitialCreativeBidId = %s", getAdView().getBidId()));
                }
                APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.LOG, sb.toString());
            }
        } catch (JSONException e2) {
            DtbLog.error("Error:" + e2.getMessage());
        }
    }

    void initializeOnLoadAndDisplay() throws JSONException {
        if (this.pageLoaded && this.pageDisplayed) {
            prepareMraid();
        } else {
            createLoadReport();
        }
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    protected String getPlacementType() {
        return "interstitial";
    }

    @Override // com.amazon.device.ads.DTBAdViewDisplayListener
    public void onInitialDisplay() {
        this.pageDisplayed = true;
        try {
            initializeOnLoadAndDisplay();
        } catch (JSONException e2) {
            DtbLog.error("JSON exception:" + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onMRAIDClose() {
        executeClose("close");
    }

    private void executeClose(String str) {
        if (getDtbOmSdkSessionManager() != null) {
            getDtbOmSdkSessionManager().stopOmAdSession();
        }
        commandCompleted(str);
        setState(MraidStateType.HIDDEN);
        fireViewableChange(false);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDInterstitialController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDInterstitialController.this.m55xb0f4179();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cleanOnCloseHandler */
    public void m55xb0f4179() {
        try {
            if (this.adView != null) {
                this.adView.setWebViewClient(null);
                this.adView.removeAllViews();
                this.adView.cleanup();
                DTBAdInterstitialListener dTBAdInterstitialListener = this.interstitialListener;
                if (dTBAdInterstitialListener != null) {
                    dTBAdInterstitialListener.onAdClosed(this.adView);
                }
            }
            Activity currentActivity = ActivityMonitor.getInstance().getCurrentActivity();
            if (this.useCustomClose && !currentActivity.isFinishing() && (currentActivity instanceof DTBInterstitialActivity)) {
                DTBInterstitialActivity dTBInterstitialActivity = (DTBInterstitialActivity) currentActivity;
                dTBInterstitialActivity.cleanup();
                dTBInterstitialActivity.finish();
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Failed to execute cleanOnCloseHandler method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.LOG, "Failed to execute cleanOnCloseHandler method", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onMRAIDUnload() {
        executeClose("unload");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onResize(Map<String, Object> map) {
        fireErrorEvent("resize", "invalid placement type");
        commandCompleted("resize");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void expand(Map<String, Object> map) {
        fireErrorEvent("expand", "invalid placement type for interstitial ");
        commandCompleted("expand");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onAdOpened(DTBAdView dTBAdView) {
        DTBAdInterstitialListener dTBAdInterstitialListener = this.interstitialListener;
        if (dTBAdInterstitialListener != null) {
            dTBAdInterstitialListener.onAdOpen(this.adView);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onAdClicked() {
        if (this.interstitialListener != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDInterstitialController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDInterstitialController.this.m56xf2589090();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onAdClicked$1$com-amazon-device-ads-DTBAdMRAIDInterstitialController  reason: not valid java name */
    public /* synthetic */ void m56xf2589090() {
        this.interstitialListener.onAdClicked(this.adView);
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    void passLoadError() {
        this.interstitialListener.onAdFailed(this.adView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onAdLeftApplication() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDInterstitialController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDInterstitialController.this.m57xc9e0140d();
            }
        });
        ActivityMonitor.getInstance().setActivityListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onAdLeftApplication$2$com-amazon-device-ads-DTBAdMRAIDInterstitialController  reason: not valid java name */
    public /* synthetic */ void m57xc9e0140d() {
        this.interstitialListener.onAdLeftApplication(this.adView);
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    public void onActivityResumed(Activity activity) {
        ActivityMonitor.getInstance().setActivityListener(null);
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    public void onActivityDestroyed(Activity activity) {
        if (getDtbOmSdkSessionManager() != null) {
            getDtbOmSdkSessionManager().stopOmAdSession();
        }
        ActivityMonitor.getInstance().setActivityListener(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void impressionFired() {
        this.interstitialListener.onImpressionFired(this.adView);
        super.impressionFired();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onVideoCompleted() {
        this.interstitialListener.onVideoCompleted(this.adView);
    }
}
