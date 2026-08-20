package com.appodeal.ads;

import com.appodeal.ads.networking.LoadingError;
@Deprecated
/* loaded from: classes.dex */
public interface ApdServiceInitializationListener {
    void onInitializationFailed(LoadingError loadingError);

    void onInitializationFinished();
}
