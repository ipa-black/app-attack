package com.appsgeyser.sdk.ads;

import android.content.Context;
/* loaded from: classes2.dex */
public interface IFullScreenBannerListener {
    void onAdFailedToLoad(Context context, String str);

    void onAdHided(Context context, String str);

    void onLoadFinished(FullScreenBanner fullScreenBanner);

    void onLoadStarted();
}
