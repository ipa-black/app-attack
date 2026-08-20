package com.onesignal;
/* loaded from: classes3.dex */
public interface OneSignalApiResponseHandler {
    void onFailure(int i, String str, Throwable th);

    void onSuccess(String str);
}
