package com.appsgeyser.sdk.ads.fastTrack.adapters.multiAds.fullscreen;

import android.content.Context;
import java.io.Serializable;
/* loaded from: classes2.dex */
public interface MultiAdsFullscreenInterface {

    /* loaded from: classes2.dex */
    public interface FullscreenListener extends Serializable {
        void onFullscreenClicked();

        void onFullscreenClosed();

        void onFullscreenError(String str);

        void onFullscreenLoaded();

        void onFullscreenOpened();
    }

    void initCompleted();

    boolean isFullscreenLoaded();

    void loadFullscreen();

    void onDestroy();

    void onPause();

    void onResume();

    void setListener(FullscreenListener fullscreenListener);

    void showFullscreen(Context context);
}
