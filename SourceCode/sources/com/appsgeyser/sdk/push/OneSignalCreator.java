package com.appsgeyser.sdk.push;

import android.content.Context;
import android.util.Log;
import com.onesignal.OneSignal;
/* loaded from: classes2.dex */
public class OneSignalCreator {
    private static final String TAG = "OneSignalCreator";

    public static void init(Context context, String str, boolean z) {
        Log.w("TEST_TAG", "OnesignalCreator.init,  oneSignalAppId = " + str + "; isPushNotificationsActive = " + z);
        Log.d(TAG, "OneSignalCreator.init()");
        if (str == null || str.isEmpty()) {
            return;
        }
        Log.d(TAG, "oneSignalAppId : " + str);
        OneSignal.initWithContext(context.getApplicationContext());
        OneSignal.setAppId(str);
        if (z) {
            OneSignal.disablePush(false);
            return;
        }
        Log.d(TAG, "disable onesignal push notifications");
        OneSignal.disablePush(true);
    }
}
