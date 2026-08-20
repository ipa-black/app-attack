package com.ironsource.mediationsdk.integration;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.adcolony.sdk.AdColonyAppOptions;
import com.appodeal.ads.AppodealNetworks;
import com.ironsource.mediationsdk.H;
import com.ironsource.mediationsdk.IntegrationData;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class IntegrationHelper {
    /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0093 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094 A[Catch: Exception -> 0x013a, TryCatch #1 {Exception -> 0x013a, blocks: (B:3:0x0005, B:23:0x0046, B:24:0x005b, B:28:0x0068, B:31:0x0094, B:33:0x009c, B:35:0x00a6, B:38:0x00b1, B:40:0x00e2, B:43:0x010f, B:44:0x0116, B:47:0x0125, B:50:0x012e, B:53:0x0137, B:10:0x0021, B:13:0x002b, B:16:0x0035, B:41:0x00e7), top: B:60:0x0005, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(android.app.Activity r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.integration.IntegrationHelper.a(android.app.Activity, java.lang.String):boolean");
    }

    private static boolean a(Activity activity, String[] strArr) {
        boolean z = true;
        if (strArr == null) {
            return true;
        }
        PackageManager packageManager = activity.getPackageManager();
        Log.i("IntegrationHelper", "*** Services ***");
        for (String str : strArr) {
            try {
            } catch (ClassNotFoundException unused) {
                Log.e("IntegrationHelper", str + " - MISSING");
            }
            if (packageManager.queryIntentServices(new Intent(activity, Class.forName(str)), 65536).size() > 0) {
                Log.i("IntegrationHelper", str + " - VERIFIED");
            } else {
                Log.e("IntegrationHelper", str + " - MISSING");
                z = false;
            }
        }
        return z;
    }

    private static boolean a(Context context, String[] strArr) {
        boolean z;
        String str;
        List<PackageInfo> installedPackages;
        ArrayList arrayList = new ArrayList();
        if (context != null && (installedPackages = context.getPackageManager().getInstalledPackages(8)) != null) {
            for (PackageInfo packageInfo : installedPackages) {
                ProviderInfo[] providerInfoArr = packageInfo.providers;
                if (providerInfoArr != null) {
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        arrayList.add(providerInfo.name);
                    }
                }
            }
        }
        boolean z2 = true;
        if (strArr != null) {
            Log.i("IntegrationHelper", "*** Content Providers ***");
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str2 = strArr[i];
                if (arrayList.contains(str2)) {
                    z = z2;
                    str = "- VERIFIED";
                } else {
                    str = "- MISSING";
                    z = false;
                }
                Log.d("IntegrationHelper", str2 + str);
                i++;
                z2 = z;
            }
        }
        return z2;
    }

    private static boolean a(ArrayList<Pair<String, String>> arrayList) {
        boolean z = true;
        if (arrayList == null) {
            return true;
        }
        Log.i("IntegrationHelper", "*** External Libraries ***");
        Iterator<Pair<String, String>> it = arrayList.iterator();
        while (it.hasNext()) {
            Pair<String, String> next = it.next();
            try {
                Class.forName((String) next.first);
                Log.i("IntegrationHelper", ((String) next.second) + " - VERIFIED");
            } catch (ClassNotFoundException unused) {
                Log.e("IntegrationHelper", ((String) next.second) + " - MISSING");
                z = false;
            }
        }
        return z;
    }

    private static IntegrationData b(Activity activity, String str) {
        String str2;
        try {
            IntegrationData integrationData = (IntegrationData) Class.forName(str).getMethod("getIntegrationData", Activity.class).invoke(null, activity);
            Log.i("IntegrationHelper", "Adapter " + integrationData.version + " - VERIFIED");
            return integrationData;
        } catch (ClassNotFoundException unused) {
            str2 = "Adapter - MISSING";
            Log.e("IntegrationHelper", str2);
            return null;
        } catch (Exception unused2) {
            str2 = "Adapter version - NOT VERIFIED";
            Log.e("IntegrationHelper", str2);
            return null;
        }
    }

    private static boolean b(Activity activity, String[] strArr) {
        boolean z = true;
        if (strArr == null) {
            return true;
        }
        Log.i("IntegrationHelper", "*** Activities ***");
        for (String str : strArr) {
            try {
            } catch (ClassNotFoundException unused) {
                Log.e("IntegrationHelper", str + " - MISSING");
            }
            if (activity.getPackageManager().queryIntentActivities(new Intent(activity, Class.forName(str)), 65536).size() > 0) {
                Log.i("IntegrationHelper", str + " - VERIFIED");
            } else {
                Log.e("IntegrationHelper", str + " - MISSING");
                z = false;
            }
        }
        return z;
    }

    public static void validateIntegration(final Activity activity) {
        String str;
        String str2;
        Log.i("IntegrationHelper", "Verifying Integration:");
        Log.i("IntegrationHelper", "*** Permissions ***");
        PackageManager packageManager = activity.getPackageManager();
        if (packageManager.checkPermission("android.permission.INTERNET", activity.getPackageName()) == 0) {
            Log.i("IntegrationHelper", "android.permission.INTERNET - VERIFIED");
        } else {
            Log.e("IntegrationHelper", "android.permission.INTERNET - MISSING");
        }
        if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", activity.getPackageName()) == 0) {
            Log.i("IntegrationHelper", "android.permission.ACCESS_NETWORK_STATE - VERIFIED");
        } else {
            Log.e("IntegrationHelper", "android.permission.ACCESS_NETWORK_STATE - MISSING");
        }
        String[] strArr = {"AdColony", "AppLovin", "Chartboost", AdColonyAppOptions.FYBER, AdColonyAppOptions.ADMOB, "HyprMX", "InMobi", IronSourceConstants.SUPERSONIC_CONFIG_NAME, "Liftoff", "Maio", "Facebook", "MyTarget", "Pangle", "Smaato", "Tapjoy", "UnityAds", "Vungle", "Yahoo"};
        for (int i = 0; i < 18; i++) {
            String str3 = strArr[i];
            char c2 = 65535;
            if (a(activity, str3)) {
                String lowerCase = str3.toLowerCase(Locale.ENGLISH);
                lowerCase.hashCode();
                switch (lowerCase.hashCode()) {
                    case -1875652737:
                        if (lowerCase.equals("supersonicads")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 92668925:
                        if (lowerCase.equals("admob")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 497130182:
                        if (lowerCase.equals(AppodealNetworks.FACEBOOK)) {
                            c2 = 2;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        str2 = ">>>> IronSource - VERIFIED";
                        break;
                    case 1:
                        str2 = ">>>> Google (AdMob and Ad Manager) - VERIFIED";
                        break;
                    case 2:
                        str2 = ">>>> Meta - VERIFIED";
                        break;
                    default:
                        str2 = ">>>> " + str3 + " - VERIFIED";
                        break;
                }
            } else {
                String lowerCase2 = str3.toLowerCase(Locale.ENGLISH);
                lowerCase2.hashCode();
                switch (lowerCase2.hashCode()) {
                    case -1875652737:
                        if (lowerCase2.equals("supersonicads")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 92668925:
                        if (lowerCase2.equals("admob")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 497130182:
                        if (lowerCase2.equals(AppodealNetworks.FACEBOOK)) {
                            c2 = 2;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        str = ">>>> IronSource - NOT VERIFIED";
                        Log.e("IntegrationHelper", str);
                        break;
                    case 1:
                        str2 = ">>>> Google (AdMob and Ad Manager) - NOT VERIFIED";
                        break;
                    case 2:
                        str2 = ">>>> Meta - NOT VERIFIED";
                        break;
                    default:
                        str = ">>>> " + str3 + " - NOT VERIFIED";
                        Log.e("IntegrationHelper", str);
                        break;
                }
            }
            Log.i("IntegrationHelper", str2);
        }
        new Thread() { // from class: com.ironsource.mediationsdk.integration.IntegrationHelper.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    Log.w("IntegrationHelper", "--------------- Google Play Services --------------");
                    if (!activity.getPackageManager().getApplicationInfo(activity.getPackageName(), 128).metaData.containsKey("com.google.android.gms.version")) {
                        Log.e("IntegrationHelper", "Google Play Services - MISSING");
                        return;
                    }
                    Log.i("IntegrationHelper", "Google Play Services - VERIFIED");
                    H.a();
                    String a2 = H.a(activity);
                    if (TextUtils.isEmpty(a2)) {
                        return;
                    }
                    Log.i("IntegrationHelper", "GAID is: " + a2 + " (use this for test devices)");
                } catch (Exception unused) {
                    Log.e("IntegrationHelper", "Google Play Services - MISSING");
                }
            }
        }.start();
    }
}
