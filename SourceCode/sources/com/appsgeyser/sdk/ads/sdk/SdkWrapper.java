package com.appsgeyser.sdk.ads.sdk;

import android.content.Context;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
abstract class SdkWrapper {
    static final String KEY_APPNEXT = "APPNEXT";
    protected Context context;
    private boolean isActive = false;
    HashMap<String, String> parameters;
    protected AppsgeyserProgressDialog progressDialog;

    /* loaded from: classes2.dex */
    protected enum AdType {
        FULLSCREEN,
        NATIVE
    }

    public abstract void getNativeAd();

    public abstract boolean isAdSupported(AdType adType);

    public abstract void showFsBanner();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addExtras(HashMap<String, String> hashMap) {
        if (this.parameters == null) {
            this.parameters = new HashMap<>();
        }
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            this.parameters.put(entry.getKey(), entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startSession(Context context) {
        this.progressDialog = new AppsgeyserProgressDialog(context);
        if (this.isActive) {
            stopSession();
        }
        this.context = context;
        this.isActive = true;
        InternalEntryPoint.getInstance().getFullScreenBanner(context).close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopSession() {
        this.isActive = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isActive() {
        return this.isActive;
    }
}
