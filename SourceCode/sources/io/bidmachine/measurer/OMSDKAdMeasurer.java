package io.bidmachine.measurer;

import android.view.View;
import android.view.ViewGroup;
import com.explorestack.iab.measurer.AdMeasurer;
import com.iab.omid.library.appodeal.adsession.AdEvents;
import com.iab.omid.library.appodeal.adsession.AdSession;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public abstract class OMSDKAdMeasurer<AdView extends View> implements AdMeasurer<AdView> {
    private static final String TAG = "AdMeasurer";
    private AdEvents adEvents;
    private AdSession adSession;
    private WeakReference<View> adViewWeak;

    protected abstract void onAdLoaded(AdEvents adEvents) throws Throwable;

    @Override // com.explorestack.iab.measurer.AdMeasurer
    public void registerAdView(AdView adview) {
    }

    @Override // com.explorestack.iab.measurer.AdMeasurer
    public void registerAdContainer(final ViewGroup viewGroup) {
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.measurer.OMSDKAdMeasurer.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (OMSDKAdMeasurer.this.adSession != null) {
                        OMSDKAdMeasurer oMSDKAdMeasurer = OMSDKAdMeasurer.this;
                        oMSDKAdMeasurer.registerAdView(oMSDKAdMeasurer.adSession, viewGroup);
                    } else {
                        OMSDKAdMeasurer.this.adViewWeak = new WeakReference(viewGroup);
                    }
                } catch (Throwable th) {
                    Logger.log(th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isSessionPrepared() {
        return this.adSession != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void prepareAdSession(AdSession adSession) {
        try {
            this.adSession = adSession;
            this.adEvents = AdEvents.createAdEvents(adSession);
            registerViews(adSession);
            adSession.start();
            onAdLoaded(this.adEvents);
            log("prepareAdSession");
        } catch (Throwable th) {
            Logger.log(th);
        }
    }

    private void registerViews(AdSession adSession) throws Throwable {
        WeakReference<View> weakReference = this.adViewWeak;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            registerAdView(adSession, view);
        }
        this.adViewWeak = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerAdView(AdSession adSession, View view) throws Throwable {
        adSession.registerAdView(view);
        log("registerAdView");
    }

    public void onAdShown() {
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.measurer.OMSDKAdMeasurer.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (OMSDKAdMeasurer.this.adEvents != null) {
                        OMSDKAdMeasurer.this.adEvents.impressionOccurred();
                    }
                    OMSDKAdMeasurer.this.log("onAdShown");
                } catch (Throwable th) {
                    Logger.log(th);
                }
            }
        });
    }

    public void destroy() {
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.measurer.OMSDKAdMeasurer.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    OMSDKAdMeasurer.this.adEvents = null;
                    if (OMSDKAdMeasurer.this.adSession != null) {
                        OMSDKAdMeasurer.this.adSession.finish();
                    }
                    OMSDKAdMeasurer.this.log("destroy");
                } catch (Throwable th) {
                    Logger.log(th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void log(String str) {
        Logger.log(TAG, str);
    }
}
