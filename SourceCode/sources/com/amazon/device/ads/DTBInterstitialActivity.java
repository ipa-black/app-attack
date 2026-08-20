package com.amazon.device.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.content.res.AppCompatResources;
import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import com.iab.omid.library.amazon.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class DTBInterstitialActivity extends Activity implements DTBMRAIDCloseButtonListener {
    private static final String LOG_TAG = "DTBInterstitialActivity";
    WeakReference<DTBAdView> adView;
    private int dtbAdInterstitialID;
    DTBAdInterstitial interstitial;

    DTBAdView getAdView() {
        WeakReference<DTBAdView> weakReference = this.adView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            setContentView(R.layout.mdtb_interstitial_ad);
            if (getIntent() != null) {
                int intExtra = getIntent().getIntExtra("INTERSTITIAL_CACHE_KEY", 0);
                this.dtbAdInterstitialID = intExtra;
                this.interstitial = DTBAdInterstitial.getFromCache(intExtra);
            }
            if (this.interstitial == null) {
                APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.LOG, "DTBInterstitialActivity is invoked with the cache data null");
                finish();
                return;
            }
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.inter_container);
            this.adView = new WeakReference<>(this.interstitial.getAdView());
            getAdView().setScrollEnabled(false);
            ViewParent parent = getAdView().getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(getAdView());
            }
            LinearLayout linearLayout = (LinearLayout) findViewById(R.id.mraid_close_indicator);
            relativeLayout.addView(getAdView(), -1, -1);
            DTBAdMRAIDController controller = getAdView().getController();
            controller.setCustomButtonListener(this);
            if (controller.getDtbOmSdkSessionManager() != null) {
                controller.getDtbOmSdkSessionManager().addFriendlyObstruction(linearLayout.findViewById(R.id.mraid_close_indicator), FriendlyObstructionPurpose.CLOSE_AD);
            }
            linearLayout.setVisibility(getUseCustomClose() ? 4 : 0);
            linearLayout.bringToFront();
            linearLayout.setBackgroundColor(0);
            linearLayout.setOrientation(1);
            ImageView imageView = new ImageView(getAdView().getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DTBAdUtil.sizeToDevicePixels(24), DTBAdUtil.sizeToDevicePixels(24));
            layoutParams.setMargins(DTBAdUtil.sizeToDevicePixels(14), DTBAdUtil.sizeToDevicePixels(14), 0, 0);
            imageView.setImageDrawable(AppCompatResources.getDrawable(this, R.drawable.mraid_close));
            linearLayout.addView(imageView, layoutParams);
            linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads.DTBInterstitialActivity.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        DTBInterstitialActivity dTBInterstitialActivity = DTBInterstitialActivity.this;
                        dTBInterstitialActivity.cleanAndFinishAdView(dTBInterstitialActivity.getAdView());
                        return true;
                    }
                    return false;
                }
            });
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to create DTBInterstitial Activity");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to create DTBInterstitial Activity", e2);
            finish();
        }
    }

    protected boolean getUseCustomClose() {
        if (!isViewAndControllerNotNull(getAdView())) {
            DtbLog.info(LOG_TAG, new StringBuilder("Failed to get use custom close , due to ").append(this.interstitial).toString() == null ? "null DTBInterstitial instance" : "null AdView/Controller instance");
            return false;
        }
        return getAdView().getController().useCustomClose;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.inter_container);
            if (relativeLayout != null) {
                relativeLayout.removeView(getAdView());
            }
            if (getAdView() != null) {
                getAdView().evaluateJavascript("window.mraid.close();", null);
                cleanup();
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Failed to remove DTBAdView on Activity Destroy");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Failed to remove DTBAdView on Activity Destroy", e2);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            if (getUseCustomClose()) {
                return;
            }
            cleanAndFinishAdView(getAdView());
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute onBackPressed method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute onBackPressed method", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cleanup() {
        DTBAdInterstitial.removeFromCache(this.dtbAdInterstitialID);
        WeakReference<DTBAdView> weakReference = this.adView;
        if (weakReference != null) {
            weakReference.clear();
            this.adView = null;
        }
    }

    @Override // com.amazon.device.ads.DTBMRAIDCloseButtonListener
    public void useCustomButtonUpdated() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBInterstitialActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DTBInterstitialActivity.this.m65xafc044cc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$useCustomButtonUpdated$0$com-amazon-device-ads-DTBInterstitialActivity  reason: not valid java name */
    public /* synthetic */ void m65xafc044cc() {
        findViewById(R.id.mraid_close_indicator).setVisibility(getUseCustomClose() ? 4 : 0);
    }

    boolean isViewAndControllerNotNull(DTBAdView dTBAdView) {
        return (dTBAdView == null || dTBAdView.getController() == null) ? false : true;
    }

    void cleanAndFinishAdView(DTBAdView dTBAdView) {
        if (isViewAndControllerNotNull(dTBAdView)) {
            dTBAdView.evaluateJavascript("window.mraid.close();", null);
            cleanup();
            finish();
        }
    }
}
