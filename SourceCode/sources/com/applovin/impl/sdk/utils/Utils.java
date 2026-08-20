package com.applovin.impl.sdk.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.icu.util.VersionInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.Toast;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.appodeal.ads.AppodealNetworks;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class Utils {
    public static final int BYTES_PER_KB = 1000;
    public static final String KEY_AD_VALUES = "ad_values";
    public static final String MACRO_CLCODE = "{CLCODE}";
    public static final String MACRO_CLICK_X = "{CLICK_X}";
    public static final String MACRO_CLICK_Y = "{CLICK_Y}";
    private static final String MACRO_EVENT_ID = "{EVENT_ID}";
    public static final String MACRO_IS_VIDEO_CLICK = "{IS_VIDEO_CLICK}";
    public static final String MACRO_SCREEN_HEIGHT = "{SCREEN_HEIGHT}";
    public static final String MACRO_SCREEN_WIDTH = "{SCREEN_WIDTH}";
    public static final String PLAY_STORE_PACKAGE_NAME = "com.android.vending";
    public static final String PLAY_STORE_SCHEME = "market";
    private static final String TAG = "Utils";
    public static Boolean isDspDemoApp;
    private static final String[] LONG_TIME_FORMATS = {" second ago", " minute ago", " hour ago", " day ago", " week ago", " month ago"};
    private static final String[] LONG_TIME_FORMATS_PLURAL = {" seconds ago", " minutes ago", " hours ago", " days ago", " weeks ago", " months ago"};
    private static final String[] SHORT_TIME_FORMATS = {"s", com.explorestack.iab.utils.m.o, "h", com.ironsource.sdk.c.d.f11571a, "w", "mth"};
    private static final int[] TIME_MULTIPLIERS = {60, 60, 24, 7, 4, 12};
    private static final DecimalFormat decimalFormat = new DecimalFormat();

    public static void assertBackgroundThread() {
    }

    public static void assertMainThread() {
    }

    public static boolean bitMaskContainsFlag(long j, long j2) {
        return (j & j2) != 0;
    }

    public static List<Uri> checkCachedResourcesExist(boolean z, com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.sdk.n nVar, Context context) {
        if (eVar instanceof com.applovin.impl.b.a) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Uri uri : new ArrayList(eVar.B())) {
            if (!(nVar.ad() != null ? nVar.ad().b(uri.getLastPathSegment(), context) : nVar.ae().b(uri.getLastPathSegment(), context))) {
                nVar.D();
                if (v.a()) {
                    nVar.D().e(TAG, "Cached HTML asset missing: " + uri);
                }
                arrayList.add(uri);
            }
        }
        if (z) {
            Uri h2 = eVar.h();
            if (!(nVar.ad() != null ? nVar.ad().b(h2.getLastPathSegment(), context) : nVar.ae().b(h2.getLastPathSegment(), context))) {
                nVar.D();
                if (v.a()) {
                    nVar.D().e(TAG, "Cached video missing: " + h2);
                }
                arrayList.add(h2);
            }
        }
        return arrayList;
    }

    public static boolean checkClassExistence(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean checkClassesExistence(List<String> list) {
        for (String str : list) {
            if (checkClassExistence(str)) {
                return true;
            }
        }
        return false;
    }

    public static void close(Closeable closeable, com.applovin.impl.sdk.n nVar) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th) {
            if (nVar != null) {
                nVar.D();
                if (v.a()) {
                    nVar.D().b(TAG, "Unable to close stream: " + closeable, th);
                }
            }
        }
    }

    public static int compare(String str, String str2) {
        try {
            int compareTo = VersionInfo.getInstance(StringUtils.toDigitsOnlyVersionString(str)).compareTo(VersionInfo.getInstance(StringUtils.toDigitsOnlyVersionString(str2)));
            return compareTo == 0 ? compareTo : compareTo > 0 ? 1 : -1;
        } catch (Throwable th) {
            v.c(TAG, "Failed to process version string.", th);
            return 0;
        }
    }

    public static void disconnect(HttpURLConnection httpURLConnection, com.applovin.impl.sdk.n nVar) {
        if (httpURLConnection == null) {
            return;
        }
        try {
            httpURLConnection.disconnect();
        } catch (Throwable th) {
            if (nVar != null) {
                nVar.D();
                if (v.a()) {
                    nVar.D().b(TAG, "Unable to disconnect connection: " + httpURLConnection, th);
                }
            }
        }
    }

    public static String encodeUrlMap(Map<String, String> map, boolean z, boolean z2) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            TreeMap treeMap = new TreeMap(new Comparator<String>() { // from class: com.applovin.impl.sdk.utils.Utils.1
                @Override // java.util.Comparator
                /* renamed from: a */
                public int compare(String str, String str2) {
                    return str.compareToIgnoreCase(str2);
                }
            });
            treeMap.putAll(map);
            map = treeMap;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            String value = entry.getValue();
            if (z2 && (value instanceof String)) {
                String str = value;
                if (str.contains("&")) {
                    value = str.replace("&", "%26");
                }
            }
            sb.append((Object) entry.getKey()).append('=').append((Object) value);
        }
        return sb.toString();
    }

    private static long floatToLong(float f2) {
        return Math.round(f2);
    }

    public static String formatDoubleValue(double d2, int i) {
        DecimalFormat decimalFormat2 = decimalFormat;
        decimalFormat2.setMaximumFractionDigits(i);
        return decimalFormat2.format(d2);
    }

    private static List<Class> generateClassesList(List<String> list, com.applovin.impl.sdk.n nVar) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            try {
                arrayList.add(Class.forName(str));
            } catch (ClassNotFoundException unused) {
                nVar.D();
                if (v.a()) {
                    nVar.D().e(TAG, "Failed to create class for name: " + str);
                }
            }
        }
        return arrayList;
    }

    public static String getAdServeId(Object obj) {
        if (obj instanceof com.applovin.impl.mediation.a.a) {
            return ((com.applovin.impl.mediation.a.a) obj).f();
        }
        if (com.applovin.impl.mediation.c.c.a(obj)) {
            return ((com.applovin.impl.sdk.ad.e) obj).N();
        }
        return null;
    }

    public static int getAlwaysFinishActivitiesSetting(Context context) {
        h.b();
        return Settings.System.getInt(context.getContentResolver(), "always_finish_activities", 0);
    }

    public static String getAndroidOSInfo() {
        try {
            return Build.VERSION.RELEASE + " (" + getAndroidSdkCodename() + " - API " + Build.VERSION.SDK_INT + ")";
        } catch (Throwable th) {
            v.c(TAG, "Unable to get Android OS info", th);
            return "";
        }
    }

    public static String getAndroidSdkCodename() {
        Field[] fields;
        try {
            for (Field field : Build.VERSION_CODES.class.getFields()) {
                if (field.getInt(null) == Build.VERSION.SDK_INT) {
                    return field.getName();
                }
            }
            return "";
        } catch (Throwable th) {
            v.c(TAG, "Unable to get Android SDK codename", th);
            return "";
        }
    }

    public static boolean getBooleanForProbability(int i) {
        return i > 0 && i <= 100 && ((int) (Math.random() * 100.0d)) + 1 <= i;
    }

    public static int getExoPlayerVersionCode() {
        return 2015001;
    }

    public static Field getField(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Class superclass = cls.getSuperclass();
            if (superclass == null) {
                return null;
            }
            return getField(superclass, str);
        }
    }

    public static String getFileName(Uri uri) {
        return TextUtils.join("_", uri.getPathSegments());
    }

    public static Map<String, String> getMetaData(AppLovinSdkSettings appLovinSdkSettings) {
        try {
            Field field = getField(appLovinSdkSettings.getClass(), "metaData");
            if (field != null) {
                field.setAccessible(true);
            }
            return (Map) field.get(appLovinSdkSettings);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static List<com.applovin.impl.sdk.d.a> getPostbacks(String str, JSONObject jSONObject, String str2, String str3, com.applovin.impl.sdk.n nVar) {
        return getPostbacks(str, jSONObject, str2, (Map<String, String>) null, str3, nVar);
    }

    public static List<com.applovin.impl.sdk.d.a> getPostbacks(String str, JSONObject jSONObject, String str2, String str3, Map<String, String> map, com.applovin.impl.sdk.n nVar) {
        return getPostbacks(str, jSONObject, str2, Collections.emptyMap(), str3, map, false, nVar);
    }

    public static List<com.applovin.impl.sdk.d.a> getPostbacks(String str, JSONObject jSONObject, String str2, Map<String, String> map, String str3, com.applovin.impl.sdk.n nVar) {
        return getPostbacks(str, jSONObject, str2, map, str3, null, false, nVar);
    }

    public static List<com.applovin.impl.sdk.d.a> getPostbacks(String str, JSONObject jSONObject, String str2, Map<String, String> map, String str3, Map<String, String> map2, boolean z, com.applovin.impl.sdk.n nVar) {
        if (map == null) {
            map = CollectionUtils.map(1);
        }
        Map<String, String> map3 = map;
        map3.put(MACRO_CLCODE, str2);
        return getPostbacks(str, jSONObject, map3, str3, map2, z, nVar);
    }

    public static List<com.applovin.impl.sdk.d.a> getPostbacks(String str, JSONObject jSONObject, Map<String, String> map, String str2, com.applovin.impl.sdk.n nVar) {
        return getPostbacks(str, jSONObject, map, str2, (Map<String, String>) null, nVar);
    }

    public static List<com.applovin.impl.sdk.d.a> getPostbacks(String str, JSONObject jSONObject, Map<String, String> map, String str2, Map<String, String> map2, com.applovin.impl.sdk.n nVar) {
        return getPostbacks(str, jSONObject, map, str2, map2, false, nVar);
    }

    public static List<com.applovin.impl.sdk.d.a> getPostbacks(String str, JSONObject jSONObject, Map<String, String> map, String str2, Map<String, String> map2, boolean z, com.applovin.impl.sdk.n nVar) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, str, new JSONObject());
        ArrayList arrayList = new ArrayList(jSONObject2.length() + 1);
        if (StringUtils.isValidString(str2)) {
            arrayList.add(new com.applovin.impl.sdk.d.a(str2, null, map2, z));
        }
        if (jSONObject2.length() > 0) {
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                try {
                    String next = keys.next();
                    if (!TextUtils.isEmpty(next)) {
                        String optString = jSONObject2.optString(next);
                        String replace = StringUtils.replace(next, map);
                        if (!TextUtils.isEmpty(optString)) {
                            optString = StringUtils.replace(optString, map);
                        }
                        arrayList.add(new com.applovin.impl.sdk.d.a(replace, optString, map2, z));
                    }
                } catch (Throwable th) {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().b(TAG, "Failed to create and add postback url.", th);
                    }
                }
            }
        }
        return arrayList;
    }

    public static String getPrettyDate(long j, boolean z) {
        String[] strArr = z ? LONG_TIME_FORMATS : SHORT_TIME_FORMATS;
        String[] strArr2 = z ? LONG_TIME_FORMATS_PLURAL : SHORT_TIME_FORMATS;
        long currentTimeMillis = (System.currentTimeMillis() - j) / 1000;
        for (int i = 0; i < strArr.length; i++) {
            int i2 = TIME_MULTIPLIERS[i];
            if (currentTimeMillis < i2) {
                return currentTimeMillis <= 0 ? z ? "just now" : "now" : currentTimeMillis == 1 ? String.format("%d%s", Long.valueOf(currentTimeMillis), strArr[i]) : String.format("%d%s", Long.valueOf(currentTimeMillis), strArr2[i]);
            }
            currentTimeMillis /= i2;
        }
        return z ? "just now" : "now";
    }

    public static View getRootView(View view) {
        View rootView;
        if (view == null || (rootView = view.getRootView()) == null) {
            return null;
        }
        View findViewById = rootView.findViewById(16908290);
        return findViewById != null ? findViewById : rootView;
    }

    public static int getRotation(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return 0;
        }
        return windowManager.getDefaultDisplay().getRotation();
    }

    public static long getServerAdjustedUnixTimestampMillis(com.applovin.impl.sdk.n nVar) {
        long longValue = ((Long) nVar.a(com.applovin.impl.sdk.c.b.eC)).longValue();
        long longValue2 = ((Long) nVar.a(com.applovin.impl.sdk.c.b.eD)).longValue();
        long currentTimeMillis = System.currentTimeMillis();
        return (longValue <= 0 || longValue2 <= 0) ? currentTimeMillis : currentTimeMillis + (longValue - longValue2);
    }

    public static String getString(Class cls, String str) {
        try {
            Field field = getField(cls, str);
            field.setAccessible(true);
            return (String) field.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int getVideoCompletionPercent(JSONObject jSONObject) {
        int i = JsonUtils.getInt(jSONObject, "video_completion_percent", -1);
        if (i < 0 || i > 100) {
            return 95;
        }
        return i;
    }

    public static com.applovin.impl.sdk.ad.d getZone(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        return com.applovin.impl.sdk.ad.d.a(AppLovinAdSize.fromString(JsonUtils.getString(jSONObject, "ad_size", null)), AppLovinAdType.fromString(JsonUtils.getString(jSONObject, "ad_type", null)), JsonUtils.getString(jSONObject, "zone_id", null));
    }

    public static byte[] gzip(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static boolean hasAndroidCoreJsonLibrary(com.applovin.impl.sdk.n nVar) {
        if (h.c()) {
            try {
                JSONObject.wrap(JSONObject.NULL);
                return true;
            } catch (Throwable th) {
                nVar.D();
                if (v.a()) {
                    nVar.D().a(TAG, "Failed to wrap JSONObject with exception", th);
                    return false;
                }
                return false;
            }
        }
        return true;
    }

    public static boolean isAppLovinTestEnvironment(Context context) {
        return e.a(context).a("applovin.sdk.is_test_environment");
    }

    public static boolean isBML(AppLovinAdSize appLovinAdSize) {
        return appLovinAdSize == AppLovinAdSize.BANNER || appLovinAdSize == AppLovinAdSize.MREC || appLovinAdSize == AppLovinAdSize.LEADER || appLovinAdSize == AppLovinAdSize.CROSS_PROMO;
    }

    public static boolean isCurrentProcessInForeground() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        try {
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
        } catch (Throwable th) {
            v.c(TAG, "Exception thrown while getting memory state.", th);
        }
        return runningAppProcessInfo.importance == 100 || runningAppProcessInfo.importance == 200;
    }

    public static boolean isDeepLinkPlusUrl(Uri uri) {
        return uri != null && AppodealNetworks.APPLOVIN.equalsIgnoreCase(uri.getScheme()) && "com.applovin.sdk".equalsIgnoreCase(uri.getHost()) && "/adservice/deeplink".equals(uri.getPath());
    }

    public static boolean isDomainWhitelisted(String str, List<String> list) {
        for (String str2 : list) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isDspDemoApp(Context context) {
        if (isDspDemoApp == null) {
            isDspDemoApp = Boolean.valueOf("com.applovin.apps.dspdemo".equals(context.getPackageName()));
        }
        return isDspDemoApp.booleanValue();
    }

    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean isMemberOfPackageNameList(List<String> list) {
        Context Q = com.applovin.impl.sdk.n.Q();
        if (Q == null) {
            v.i(TAG, "Failed to check whether or not app is member of package names");
            return false;
        }
        return list.contains(Q.getPackageName());
    }

    public static boolean isProguardRulesOmitted() {
        try {
            Class.forName("com.applovin.sdk.AppLovinSdk");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        }
    }

    public static boolean isPubInDebugMode(Context context, com.applovin.impl.sdk.n nVar) {
        String str = nVar.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.RUN_IN_RELEASE_MODE);
        return ((StringUtils.isValidString(str) && Boolean.parseBoolean(str)) || (context.getApplicationInfo().flags & 2) == 0) ? false : true;
    }

    public static boolean isTestApp(Context context) {
        String packageName = context.getPackageName();
        return "com.revolverolver.fliptrickster".equals(packageName) || "com.mindstormstudios.idlemakeover".equals(packageName);
    }

    public static boolean isUserAgentCollectionEnabled(com.applovin.impl.sdk.n nVar) {
        String str = nVar.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.USER_AGENT_COLLECTION_ENABLED);
        if (StringUtils.isValidString(str)) {
            return Boolean.parseBoolean(str);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000a A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:2:0x0000, B:3:0x0004, B:5:0x000a, B:7:0x001c, B:9:0x0024), top: B:17:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isVPNConnected() {
        /*
            java.util.Enumeration r0 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: java.lang.Throwable -> L2e
        L4:
            boolean r1 = r0.hasMoreElements()     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L36
            java.lang.Object r1 = r0.nextElement()     // Catch: java.lang.Throwable -> L2e
            java.net.NetworkInterface r1 = (java.net.NetworkInterface) r1     // Catch: java.lang.Throwable -> L2e
            java.lang.String r1 = r1.getDisplayName()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r2 = "tun"
            boolean r2 = r1.contains(r2)     // Catch: java.lang.Throwable -> L2e
            if (r2 != 0) goto L2c
            java.lang.String r2 = "ppp"
            boolean r2 = r1.contains(r2)     // Catch: java.lang.Throwable -> L2e
            if (r2 != 0) goto L2c
            java.lang.String r2 = "ipsec"
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Throwable -> L2e
            if (r1 == 0) goto L4
        L2c:
            r0 = 1
            return r0
        L2e:
            r0 = move-exception
            java.lang.String r1 = "Utils"
            java.lang.String r2 = "Unable to check Network Interfaces"
            com.applovin.impl.sdk.v.c(r1, r2, r0)
        L36:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.utils.Utils.isVPNConnected():boolean");
    }

    public static boolean isVerboseLoggingConfigured() {
        Context Q = com.applovin.impl.sdk.n.Q();
        if (Q != null) {
            return e.a(Q).a("applovin.sdk.verbose_logging");
        }
        return false;
    }

    public static boolean isVerboseLoggingEnabled(Context context) {
        if (context == null) {
            context = com.applovin.impl.sdk.n.Q();
        }
        if (context != null) {
            return e.a(context).a("applovin.sdk.verbose_logging", false);
        }
        return false;
    }

    public static boolean isVideoMutedInitially(com.applovin.impl.sdk.n nVar) {
        return ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.cC)).booleanValue() ? nVar.q().isMuted() : ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.cA)).booleanValue();
    }

    public static boolean isViewInChildView(View view, View view2) {
        if (view == view2) {
            return true;
        }
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                if (isViewInChildView(view, viewGroup.getChildAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isViewInTopActivity(View view, Activity activity) {
        View rootView;
        if (activity != null && view != null) {
            Window window = activity.getWindow();
            if (window != null) {
                rootView = window.getDecorView();
            } else {
                View findViewById = activity.findViewById(16908290);
                if (findViewById != null) {
                    rootView = findViewById.getRootView();
                }
            }
            return isViewInChildView(view, rootView);
        }
        return false;
    }

    public static int kilobytesToByes(int i) {
        return i * 1000;
    }

    public static void logJava8MethodReference() {
        v.f("AppLovinSdk", "Java version 8 supported.");
    }

    public static void maybeHandleNoFillResponseForPublisher(String str, MaxAdFormat maxAdFormat, JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        if (jSONObject.has("no_fill_reason")) {
            String str2 = "\n**************************************************\nNO FILL received:\n..ID: \"" + str + "\"\n..FORMAT: \"" + (maxAdFormat != null ? maxAdFormat.getLabel() : "None") + "\"\n..SDK KEY: \"" + nVar.C() + "\"\n..PACKAGE NAME: \"" + nVar.P().getPackageName() + "\"\n..Reason: " + JsonUtils.getObject(jSONObject, "no_fill_reason", new Object()) + "\n**************************************************\n";
            nVar.D();
            if (v.a()) {
                nVar.D().e("AppLovinSdk", str2);
            }
        }
    }

    public static void maybeLogCustomDataSizeLimit(String str, String str2) {
        if (str == null || str.length() <= kilobytesToByes(8)) {
            return;
        }
        v.h(str2, "Provided custom data parameter longer than supported (" + str.length() + " bytes, " + kilobytesToByes(8) + " maximum)");
    }

    public static AppLovinAd maybeRetrieveNonDummyAd(AppLovinAd appLovinAd, com.applovin.impl.sdk.n nVar) {
        if (appLovinAd instanceof com.applovin.impl.sdk.ad.f) {
            com.applovin.impl.sdk.ad.f fVar = (com.applovin.impl.sdk.ad.f) appLovinAd;
            AppLovinAd dequeueAd = nVar.v().dequeueAd(fVar.getAdZone());
            nVar.D();
            if (v.a()) {
                nVar.D().b(TAG, "Dequeued ad for dummy ad: " + dequeueAd);
            }
            if (dequeueAd != null) {
                fVar.a(dequeueAd);
                ((AppLovinAdImpl) dequeueAd).setDummyAd(fVar);
                return dequeueAd;
            }
            return fVar.a();
        }
        return appLovinAd;
    }

    public static double millisToSeconds(long j) {
        return j / 1000.0d;
    }

    public static boolean objectIsOfType(Object obj, List<String> list, com.applovin.impl.sdk.n nVar) {
        if (list == null) {
            return false;
        }
        for (Class cls : generateClassesList(list, nVar)) {
            if (cls.isInstance(obj)) {
                if (!(obj instanceof Map)) {
                    if (obj instanceof List) {
                        for (Object obj2 : (List) obj) {
                            if (!objectIsOfType(obj2, list, nVar)) {
                                return false;
                            }
                        }
                        return true;
                    }
                    return true;
                }
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    if (!(entry.getKey() instanceof String)) {
                        nVar.D();
                        if (v.a()) {
                            nVar.D().b(TAG, "Invalid key type used. Map keys should be of type String.");
                        }
                        return false;
                    } else if (!objectIsOfType(entry.getValue(), list, nVar)) {
                        return false;
                    }
                }
                return true;
            }
        }
        nVar.D();
        if (v.a()) {
            nVar.D().b(TAG, "Object '" + obj + "' does not match any of the required types '" + list + "'.");
        }
        return false;
    }

    public static boolean openUri(Context context, Uri uri, com.applovin.impl.sdk.n nVar) {
        boolean z = false;
        if (uri == null) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            if (PLAY_STORE_SCHEME.equals(intent.getScheme())) {
                intent.setPackage("com.android.vending");
            }
            nVar.ag().pauseForClick();
            context.startActivity(intent);
            z = true;
        } catch (Throwable th) {
            nVar.D();
            if (v.a()) {
                nVar.D().b(TAG, "Unable to open \"" + uri + "\".", th);
            }
        }
        if (!z) {
            nVar.ag().resumeForClick();
        }
        return z;
    }

    public static long parseColor(String str) {
        if (StringUtils.isValidString(str)) {
            try {
                return Color.parseColor(str);
            } catch (Throwable unused) {
                return Long.MAX_VALUE;
            }
        }
        return Long.MAX_VALUE;
    }

    public static void putObjectForStringIfValid(String str, String str2, Map map) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    public static void renameKeyInObjectMap(String str, String str2, Map<String, Object> map) {
        if (map.containsKey(str)) {
            map.put(str2, map.get(str));
            map.remove(str);
        }
    }

    public static String retrieveLauncherActivityFullyQualifiedName(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.isEmpty()) {
            return null;
        }
        return queryIntentActivities.get(0).activityInfo.name;
    }

    public static Activity retrieveParentActivity(View view, com.applovin.impl.sdk.n nVar) {
        if (view == null) {
            return null;
        }
        int i = 0;
        while (i < 1000) {
            i++;
            try {
                Context context = view.getContext();
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } catch (Throwable th) {
                nVar.D();
                if (v.a()) {
                    nVar.D().b(TAG, "Encountered error while retrieving activity from view", th);
                }
            }
        }
        return null;
    }

    public static Object sanitizeSuperProperty(Object obj, com.applovin.impl.sdk.n nVar) {
        int intValue;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            Map map2 = CollectionUtils.map(map.size());
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                map2.put(key instanceof String ? (String) key : String.valueOf(key), sanitizeSuperProperty(entry.getValue(), nVar));
            }
            return map2;
        } else if (obj instanceof List) {
            List<Object> list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            for (Object obj2 : list) {
                arrayList.add(sanitizeSuperProperty(obj2, nVar));
            }
            return arrayList;
        } else if (obj instanceof Date) {
            return String.valueOf(((Date) obj).getTime());
        } else {
            String valueOf = String.valueOf(obj);
            if (obj instanceof String) {
                intValue = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.bo)).intValue();
                if (intValue <= 0 || valueOf.length() <= intValue) {
                    return valueOf;
                }
            } else if (!(obj instanceof Uri) || (intValue = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.bp)).intValue()) <= 0 || valueOf.length() <= intValue) {
                return valueOf;
            }
            return valueOf.substring(0, intValue);
        }
    }

    public static float secondsToMillis(float f2) {
        return f2 * 1000.0f;
    }

    public static long secondsToMillisLong(float f2) {
        return floatToLong(secondsToMillis(f2));
    }

    public static void setImageUrl(final String str, final ImageView imageView, final com.applovin.impl.sdk.n nVar) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        nVar.D();
        if (v.a()) {
            nVar.D().b(TAG, "Fetching image: " + str + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        nVar.V().c().execute(new Runnable() { // from class: com.applovin.impl.sdk.utils.Utils.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    InputStream openStream = new URL(str).openStream();
                    final Bitmap decodeStream = BitmapFactory.decodeStream(openStream);
                    AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.Utils.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            nVar.D();
                            if (v.a()) {
                                nVar.D().b(Utils.TAG, "Image fetched");
                            }
                            imageView.setImageDrawable(new BitmapDrawable(nVar.P().getResources(), decodeStream));
                        }
                    });
                    Utils.close(openStream, nVar);
                } catch (Throwable th) {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().b(Utils.TAG, "Failed to fetch image: " + str, th);
                    }
                }
            }
        });
    }

    public static String shortenKey(String str) {
        return (str == null || str.length() <= 4) ? "NOKEY" : str.substring(str.length() - 4);
    }

    public static void showAlert(MaxError maxError, String str, Context context) {
        StringBuilder sb = new StringBuilder();
        if (maxError.getCode() == -5001) {
            for (MaxNetworkResponseInfo maxNetworkResponseInfo : maxError.getWaterfall().getNetworkResponses()) {
                MaxError error = maxNetworkResponseInfo.getError();
                String name = maxNetworkResponseInfo.getMediatedNetwork().getName();
                sb.append("\nFailed to load " + str + " from " + name + ":\n");
                sb.append("\nMAX Error " + error.getCode() + ": " + error.getMessage() + "\n");
                sb.append("\n" + name + " Error " + error.getMediatedNetworkErrorCode() + ": " + error.getMediatedNetworkErrorMessage() + "\n\n");
            }
        } else {
            sb.append("Failed to load " + str + " with error " + maxError.getCode() + ": " + maxError.getMessage());
        }
        showAlert("", sb.toString(), context);
    }

    public static void showAlert(String str, String str2, Context context) {
        new AlertDialog.Builder(context).setTitle(str).setMessage(str2).setNegativeButton(17039370, (DialogInterface.OnClickListener) null).create().show();
    }

    public static void showToast(final String str, final Context context) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.Utils.2
            @Override // java.lang.Runnable
            public void run() {
                Toast makeText = Toast.makeText(context, str, 0);
                makeText.setMargin(0.0f, 0.1f);
                makeText.show();
            }
        });
    }

    public static void showToast(String str, MaxAd maxAd, Context context) {
        Toast.makeText(context, maxAd.getFormat().getLabel() + ": " + str, 1).show();
    }

    public static Map<String, String> stringifyObjectMap(Map<String, Object> map) {
        Map<String, String> map2 = CollectionUtils.map();
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                map2.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        return map2;
    }

    public static Map<String, String> toUrlSafeMap(Map<String, String> map, com.applovin.impl.sdk.n nVar) {
        Map<String, String> map2 = CollectionUtils.map(map);
        for (String str : map2.keySet()) {
            String str2 = map2.get(str);
            if (str2 != null) {
                map2.put(str, StringUtils.encodeUriString(str2, nVar));
            }
        }
        return map2;
    }

    public static int toVersionCode(String str) {
        String[] split;
        int i = 0;
        for (String str2 : str.replaceAll("-beta", ".").split("\\.")) {
            if (str2.length() > 2) {
                v.i(TAG, "Version number components cannot be longer than two digits -> " + str);
                return i;
            }
            i = (i * 100) + Integer.parseInt(str2);
        }
        return !str.contains("-beta") ? (i * 100) + 99 : i;
    }

    public static double tryParseDouble(String str, double d2) {
        try {
            return Double.parseDouble(str);
        } catch (Throwable th) {
            v.c(TAG, "Failed to parse double from String: " + str, th);
            return d2;
        }
    }

    public static WebView tryToCreateWebView(Context context, String str) {
        try {
            return new WebView(context);
        } catch (Throwable th) {
            v.c(TAG, "Failed to initialize WebView for " + str + ".", th);
            return null;
        }
    }

    public static String urlStringWithoutQueryParameters(String str) {
        Uri parse = Uri.parse(str);
        return new Uri.Builder().scheme(parse.getScheme()).authority(parse.getAuthority()).path(parse.getPath()).build().toString();
    }

    public static void validateAdSdkKey(AppLovinAd appLovinAd, com.applovin.impl.sdk.n nVar) {
        if (appLovinAd instanceof AppLovinAdBase) {
            String C = nVar.C();
            String C2 = ((AppLovinAdBase) appLovinAd).getSdk().C();
            if (C.equals(C2)) {
                return;
            }
            v.i("AppLovinAd", "Ad was loaded from sdk with key: " + C2 + ", but is being rendered from sdk with key: " + C);
            nVar.W().a(com.applovin.impl.sdk.d.f.n);
        }
    }
}
