package com.appodeal.ads.unified;

import com.appodeal.ads.Native;
/* loaded from: classes2.dex */
public interface UnifiedNativeParams extends UnifiedAdParams {
    int getAdCountToLoad();

    Native.MediaAssetType getMediaAssetType();

    Native.NativeAdType getNativeAdType();
}
