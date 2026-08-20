package com.appsgeyser.multiTabApp;

import androidx.multidex.MultiDexApplication;
import com.appsgeyser.sdk.AppsgeyserSDK;
/* loaded from: classes2.dex */
public class AppsgeyserApplication extends MultiDexApplication {
    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        AppsgeyserSDK.setApplicationInstance(this);
    }
}
