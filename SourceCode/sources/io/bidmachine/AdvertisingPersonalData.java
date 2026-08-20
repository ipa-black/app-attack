package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Pair;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class AdvertisingPersonalData {
    private static final String ADVERTISING_CLIENT_CLASS = "com.google.android.gms.ads.identifier.AdvertisingIdClient";
    private static final String DEFAULT_ADVERTISING_ID = "00000000-0000-0000-0000-000000000000";
    private static final String SHARED_PREFERENCES_NAME = "ad_core_preferences";
    private static final String UUID_ID = "uuid";
    private static String deviceAdvertisingId = null;
    private static boolean limitAdTrackingEnabled = false;

    AdvertisingPersonalData() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateInfo(Context context) {
        try {
            Class<?> cls = Class.forName(ADVERTISING_CLIENT_CLASS);
            Object invokeMethodByName = Utils.invokeMethodByName(cls, cls, "getAdvertisingIdInfo", new Pair(Context.class, context));
            if (invokeMethodByName != null) {
                deviceAdvertisingId = (String) Utils.invokeMethodByName(invokeMethodByName, "getId", new Pair[0]);
                Boolean bool = (Boolean) Utils.invokeMethodByName(invokeMethodByName, "isLimitAdTrackingEnabled", new Pair[0]);
                if (bool != null) {
                    limitAdTrackingEnabled = bool.booleanValue();
                }
            }
        } catch (Exception e2) {
            Logger.log(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLimitAdTrackingEnabled() {
        return limitAdTrackingEnabled;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getAdvertisingId(Context context, boolean z) {
        if (z) {
            return "00000000-0000-0000-0000-000000000000";
        }
        String str = deviceAdvertisingId;
        if (str != null) {
            return str;
        }
        String advertisingIdFromSharedPref = getAdvertisingIdFromSharedPref(context);
        return advertisingIdFromSharedPref != null ? advertisingIdFromSharedPref : "00000000-0000-0000-0000-000000000000";
    }

    private static String getAdvertisingIdFromSharedPref(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        if (sharedPreferences.contains("uuid")) {
            return sharedPreferences.getString("uuid", null);
        }
        String uuid = UUID.randomUUID().toString();
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString("uuid", uuid);
        edit.apply();
        return uuid;
    }
}
