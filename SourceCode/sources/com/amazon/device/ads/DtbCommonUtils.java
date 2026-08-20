package com.amazon.device.ads;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Looper;
import com.applovin.sdk.AppLovinMediationProvider;
import com.appodeal.ads.AppodealNetworks;
import com.google.android.exoplayer2.C;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URI;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Marker;
/* loaded from: classes.dex */
public class DtbCommonUtils {
    private static String sdkFlavor;

    /* loaded from: classes.dex */
    static class APIVersion {
        public int majorVersion = 0;
        public int minorVersion = 0;
    }

    private DtbCommonUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isClassAvailable(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getURLEncodedString(String str) {
        if (isNullOrEmpty(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str, C.UTF8_NAME).replace(Marker.ANY_NON_NULL_MARKER, "%20").replace(Marker.ANY_MARKER, "%2A").replace("%7E", "~");
        } catch (UnsupportedEncodingException unused) {
            DtbLog.debugError("Unable to url encode :" + str);
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSDKMRAIDVersion() {
        String sDKFlavor = getSDKFlavor();
        if (sDKFlavor == null) {
            return "aps-android";
        }
        return "aps-android-" + sDKFlavor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSDKVersion() {
        String sDKFlavor = getSDKFlavor();
        if (sDKFlavor == null) {
            return "aps-android-9.5.4";
        }
        return "aps-android-9.5.4-" + sDKFlavor;
    }

    static String getSDKFlavor() {
        String[] strArr;
        String str = sdkFlavor;
        if (str != null) {
            return str;
        }
        for (String str2 : AdRegistration.serverlessMarkers) {
            try {
                Class.forName(str2);
                if (str2.contains("admob")) {
                    sdkFlavor = "admob";
                } else if (str2.contains(AppLovinMediationProvider.MOPUB)) {
                    sdkFlavor = AppLovinMediationProvider.MOPUB;
                } else if (str2.contains(AppodealNetworks.APPLOVIN)) {
                    sdkFlavor = "MAX";
                }
                Map<String, String> customDictionary = AdRegistration.getCustomDictionary();
                break;
            } catch (Exception unused) {
            }
        }
        Map<String, String> customDictionary2 = AdRegistration.getCustomDictionary();
        if (!isNullOrEmpty(customDictionary2)) {
            String str3 = customDictionary2.get("mediationName");
            if (!isNullOrEmpty(str3)) {
                sdkFlavor = str3;
            }
        }
        return sdkFlavor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isOnMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int parseInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            DtbLog.debugError("Exception parsing the integer from string:" + str);
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle getApplicationBundle() throws PackageManager.NameNotFoundException {
        if (AdRegistration.getContext() == null) {
            throw new IllegalStateException("Application Context can't be null");
        }
        return AdRegistration.getContext().getPackageManager().getApplicationInfo(AdRegistration.getContext().getPackageName(), 128).metaData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InputStream getResourceAsStream(String str) {
        return DtbCommonUtils.class.getResourceAsStream(str);
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.equals("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNullOrEmpty(Map map) {
        return map == null || map.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNullOrEmpty(List list) {
        return list == null || list.size() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNullOrWhiteSpace(String str) {
        return isNullOrEmpty(str) || str.trim().equals("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getMilliSeconds(String str) {
        return Long.parseLong(str) * 1000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isActivityDestroyed(Activity activity) {
        return activity.isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getParamsAsJsonString(Map<String, Object> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            jSONObject.put(str, map.get(str));
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String exceptionToString(Exception exc) {
        String localizedMessage = exc.getLocalizedMessage();
        return localizedMessage != null ? "(" + localizedMessage + ")" : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getStringFieldValue(String str, String str2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            if (!declaredField.isAccessible()) {
                DtbLog.debug("Field:" + str2 + " is not accessable");
                return null;
            }
            return (String) declaredField.get(null);
        } catch (ClassNotFoundException unused) {
            DtbLog.debug("Class not found:" + str);
            return null;
        } catch (IllegalAccessException e2) {
            DtbLog.debug("Illegal Access exception:" + e2.getMessage());
            return null;
        } catch (IllegalArgumentException e3) {
            DtbLog.debug("Illegal Argument exception:" + e3.getMessage());
            return null;
        } catch (NoSuchFieldException unused2) {
            DtbLog.debug("Field:" + str2 + " does not exist");
            return null;
        } catch (SecurityException unused3) {
            DtbLog.debug("Field:" + str2 + " is not accessable");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Integer getIntegerFieldValue(String str, String str2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            if (!declaredField.isAccessible()) {
                DtbLog.debug("Field:" + str2 + " is not accessable");
                return null;
            }
            return (Integer) declaredField.get(null);
        } catch (ClassNotFoundException unused) {
            DtbLog.debug("Class notFound:" + str);
            return null;
        } catch (IllegalAccessException e2) {
            DtbLog.debug("Illegal Access exception:" + e2.getMessage());
            return null;
        } catch (IllegalArgumentException e3) {
            DtbLog.debug("Illegal Argument exception:" + e3.getMessage());
            return null;
        } catch (NoSuchFieldException unused2) {
            DtbLog.debug("Field:" + str2 + " does not exist");
            return null;
        } catch (SecurityException unused3) {
            DtbLog.debug("Field:" + str2 + " is not accessable");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static APIVersion getAPIVersion(String str) {
        String str2;
        APIVersion aPIVersion = new APIVersion();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            String nextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : str;
            if (!stringTokenizer.hasMoreTokens()) {
                str2 = "0";
            } else {
                str2 = stringTokenizer.nextToken();
            }
            try {
                aPIVersion.majorVersion = Integer.parseInt(nextToken);
                aPIVersion.minorVersion = Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
                DtbLog.warn("Invalid API version:" + str);
            }
        }
        return aPIVersion;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNetworkConnected() {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        if (AdRegistration.getContext().checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
            ConnectivityManager connectivityManager = (ConnectivityManager) AdRegistration.getContext().getSystemService("connectivity");
            if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return false;
            }
            return networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(1);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getHostNameFromUrl(String str) {
        if (!str.startsWith("https://") && !str.startsWith("http://")) {
            str = "https://" + str;
        }
        try {
            return new URI(str).getHost();
        } catch (Exception unused) {
            DtbLog.error(String.format("The url %s that is passed for parsing is invalid. Please check the URL", new Object[0]));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBAdRequest createAutoRefreshAdLoader(DTBAdRequest dTBAdRequest) {
        DTBAdRequest dTBAdRequest2 = new DTBAdRequest();
        if (!isNullOrEmpty(dTBAdRequest.getAdSizes())) {
            dTBAdRequest2.setAdSizes(dTBAdRequest.getAdSizes());
        }
        if (!isNullOrEmpty(dTBAdRequest.getSlotGroupName())) {
            dTBAdRequest2.setSlotGroup(dTBAdRequest.getSlotGroupName());
        }
        if (!isNullOrEmpty(dTBAdRequest.getCustomTargets())) {
            dTBAdRequest2.setCustomTargets(dTBAdRequest.getCustomTargets());
        }
        dTBAdRequest2.setRefreshFlag(true);
        return dTBAdRequest2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle initializeEmptyBundle() {
        return new Bundle();
    }
}
