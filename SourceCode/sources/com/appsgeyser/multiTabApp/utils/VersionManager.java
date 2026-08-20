package com.appsgeyser.multiTabApp.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import com.appsgeyser.multiTabApp.Constants;
/* loaded from: classes2.dex */
public class VersionManager {
    private static final String APP_VERSION_ALIAS = "app_version_prefix";
    public static final int DEFAULT_VERSION = -1;

    public static int getPreviousVersion(Context context) {
        try {
            return context.getSharedPreferences(Constants.PREFS_NAME, 0).getInt(APP_VERSION_ALIAS, -1);
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static int getCurrentVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static boolean updateVersion(Context context, int i) {
        try {
            context.getSharedPreferences(Constants.PREFS_NAME, 0).edit().putInt(APP_VERSION_ALIAS, i).apply();
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
