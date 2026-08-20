package com.appodeal.ads.unified.tasks;

import com.appodeal.ads.networking.LoadingError;
/* loaded from: classes2.dex */
public interface AdParamsProcessorCallback<ResponseType> {
    void onProcessFail(LoadingError loadingError);

    void onProcessSuccess(ResponseType responsetype);
}
