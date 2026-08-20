package com.appsgeyser.sdk.ads;

import android.app.Activity;
import android.content.Context;
import com.appsgeyser.sdk.configuration.Constants;
/* loaded from: classes2.dex */
public class SimpleFullScreenBannerListener implements IFullScreenBannerListener {
    @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
    public void onLoadStarted() {
    }

    @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
    public void onLoadFinished(FullScreenBanner fullScreenBanner) {
        fullScreenBanner.show();
    }

    @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
    public void onAdFailedToLoad(Context context, String str) {
        if (str.equals(Constants.BannerLoadTags.ON_EXIT) && (context instanceof Activity)) {
            ((Activity) context).finish();
        }
    }

    @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
    public void onAdHided(Context context, String str) {
        if (str.equals(Constants.BannerLoadTags.ON_EXIT) && (context instanceof Activity)) {
            ((Activity) context).finish();
        }
    }
}
