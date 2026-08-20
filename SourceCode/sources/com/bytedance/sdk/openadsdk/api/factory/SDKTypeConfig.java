package com.bytedance.sdk.openadsdk.api.factory;

import android.util.Log;
/* loaded from: classes2.dex */
public class SDKTypeConfig {
    private static ISDKTypeFactory Qhi;

    public static ISDKTypeFactory getSdkTypeFactory() {
        Log.i("SDKTypeConfig", "getSdkTypeFactory: ");
        return Qhi;
    }

    public static void setSdkTypeFactory(ISDKTypeFactory iSDKTypeFactory) {
        Log.i("SDKTypeConfig", "setSdkTypeFactory: ");
        Qhi = iSDKTypeFactory;
    }
}
