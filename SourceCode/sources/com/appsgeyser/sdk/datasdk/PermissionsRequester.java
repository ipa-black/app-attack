package com.appsgeyser.sdk.datasdk;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public class PermissionsRequester {
    private static final String TAG = "PermissionsTag";
    private static final String[] oneAudiencePermissions = {"android.permission.GET_ACCOUNTS"};
    private static final String[] predicioPermissions = {"android.permission.ACCESS_FINE_LOCATION"};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isPermissionsRequired(ConfigPhp configPhp, Context context) {
        HashSet hashSet = new HashSet();
        PackageManager packageManager = context.getPackageManager();
        for (String str : getPermissionRequiredFromConfig(configPhp)) {
            if (packageManager.checkPermission(str, context.getPackageName()) != 0) {
                hashSet.add(str);
            }
        }
        return hashSet.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void requestAllActiveByDefaultPermissions(Activity activity, ConfigPhp configPhp, int i) {
        String[] needRequestPermissions = getNeedRequestPermissions(activity, new HashSet());
        if (needRequestPermissions != null) {
            activity.requestPermissions(needRequestPermissions, i);
        } else {
            activity.onRequestPermissionsResult(78, new String[0], new int[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void requestAllActivePermissions(Activity activity, ConfigPhp configPhp, int i) {
        String[] needRequestPermissions = getNeedRequestPermissions(activity, getPermissionRequiredFromConfig(configPhp));
        if (needRequestPermissions != null) {
            activity.requestPermissions(needRequestPermissions, i);
        } else {
            activity.onRequestPermissionsResult(78, new String[0], new int[0]);
        }
    }

    private static String[] getNeedRequestPermissions(Activity activity, Set<String> set) {
        HashSet hashSet = new HashSet();
        for (String str : set) {
            if (ContextCompat.checkSelfPermission(activity, str) != 0) {
                hashSet.add(str);
            }
        }
        if (hashSet.size() > 0) {
            return (String[]) hashSet.toArray(new String[hashSet.size()]);
        }
        return null;
    }

    private static Set<String> getPermissionRequiredFromConfig(ConfigPhp configPhp) {
        return new HashSet();
    }

    public static void requestNotificationPermissions(final Activity activity, int i) {
        if (Build.VERSION.SDK_INT >= 33 && ((((new Date().getTime() - new PreferencesCoder(activity).getPrefLong(Constants.PREFS_NOTIFICATION_PERM_REQUEST_DATE, 0L)) / 1000.0d) / 60.0d) / 60.0d) / 24.0d > 3.0d) {
            final HashSet hashSet = new HashSet();
            hashSet.add("android.permission.POST_NOTIFICATIONS");
            hashSet.forEach(new Consumer() { // from class: com.appsgeyser.sdk.datasdk.PermissionsRequester$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PermissionsRequester.lambda$requestNotificationPermissions$0(activity, hashSet, (String) obj);
                }
            });
            if (hashSet.size() == 0) {
                return;
            }
            delayedAskPermission(hashSet, activity, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$requestNotificationPermissions$0(Activity activity, HashSet hashSet, String str) {
        if (isPermissionGranted(str, activity)) {
            hashSet.remove(str);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.appsgeyser.sdk.datasdk.PermissionsRequester$1] */
    private static void delayedAskPermission(final HashSet<String> hashSet, final Activity activity, final int i) {
        new Thread() { // from class: com.appsgeyser.sdk.datasdk.PermissionsRequester.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(10000L);
                    while (InternalEntryPoint.getInstance().getAppState() == InternalEntryPoint.AppState.ON_PAUSE) {
                        Thread.sleep(500L);
                    }
                    activity.requestPermissions((String[]) hashSet.toArray(new String[0]), i);
                    new PreferencesCoder(activity).savePrefLong(Constants.PREFS_NOTIFICATION_PERM_REQUEST_DATE, new Date().getTime());
                } catch (InterruptedException e2) {
                    Log.d(PermissionsRequester.TAG, "Permission thread sleep exception:", e2);
                }
            }
        }.start();
    }

    private static boolean isPermissionGranted(String str, Context context) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
