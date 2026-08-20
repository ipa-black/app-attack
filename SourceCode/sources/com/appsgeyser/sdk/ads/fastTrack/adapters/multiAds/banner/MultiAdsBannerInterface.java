package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.banner;

import android.view.ViewGroup;
import java.io.Serializable;
/* loaded from: classes2.dex */
public interface MultiAdsBannerInterface {

    /* loaded from: classes2.dex */
    public interface BannerListener extends Serializable {
        void onBannerClicked();

        void onBannerError(String str);

        void onBannerLoaded();
    }

    void loadBanner(ViewGroup viewGroup);

    void onDestroy();

    void onPause();

    void onResume();

    void setListener(BannerListener bannerListener);
}
