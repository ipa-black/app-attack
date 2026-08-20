package com.appnext.sdk.adapters.admob.ads;

import android.content.Context;
import android.os.Bundle;
import com.appnext.ads.fullscreen.FullScreenVideo;
import com.appnext.ads.fullscreen.FullscreenConfig;
import com.appnext.core.Ad;
import java.io.Serializable;
/* loaded from: classes.dex */
public class AppnextAdMobCustomEventFullScreenVideo extends AppnextAdMobCustomEvent {

    /* loaded from: classes.dex */
    private class CustomEventFullScreenVideoAd extends FullScreenVideo {
        protected static final String TID = "321";

        public CustomEventFullScreenVideoAd(Context context, String str) {
            super(context, str);
        }

        public CustomEventFullScreenVideoAd(Context context, String str, FullscreenConfig fullscreenConfig) {
            super(context, str, fullscreenConfig);
        }

        @Override // com.appnext.ads.fullscreen.Video, com.appnext.core.Ad
        public String getTID() {
            return TID;
        }
    }

    @Override // com.appnext.sdk.adapters.admob.ads.AppnextAdMobCustomEvent
    protected Ad createAd(Context context, String str, Bundle bundle) {
        Serializable serializable;
        if (bundle != null) {
            try {
                serializable = bundle.getSerializable(AppnextAdMobCustomEvent.AppnextConfigurationExtraKey);
            } catch (Throwable th) {
                this.mListener.onAdFailedToLoad(0);
                th.getMessage();
                return null;
            }
        } else {
            serializable = null;
        }
        if (serializable != null && (serializable instanceof FullscreenConfig)) {
            return new CustomEventFullScreenVideoAd(context, str, (FullscreenConfig) serializable);
        }
        return new CustomEventFullScreenVideoAd(context, str);
    }
}
