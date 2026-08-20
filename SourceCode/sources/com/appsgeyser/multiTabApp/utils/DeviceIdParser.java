package com.appsgeyser.multiTabApp.utils;

import android.app.Activity;
import android.provider.Settings;
import android.telephony.TelephonyManager;
/* loaded from: classes2.dex */
public class DeviceIdParser {
    public static String getDeviceId(Activity activity) {
        try {
            if (activity.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0) {
                return ((TelephonyManager) activity.getSystemService("phone")).getDeviceId();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getAndroidId(Activity activity) {
        try {
            return Settings.Secure.getString(activity.getContentResolver(), "android_id");
        } catch (Exception unused) {
            return null;
        }
    }
}
