package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.common.ArbitrageLoadingLayout;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import org.apache.commons.lang.time.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ToolUtils.java */
/* loaded from: classes2.dex */
public class js {
    private static final HashSet<String> Gm;
    public static Integer Qhi;
    private static final ExecutorService cJ = Executors.newSingleThreadExecutor();
    private static volatile boolean ac = false;
    private static final AtomicInteger CJ = new AtomicInteger(0);
    private static volatile String fl = "";
    private static final ReentrantLock Tgh = new ReentrantLock();
    private static String ROR = null;
    private static String Sf = null;
    private static String hm = null;
    private static final HashSet<String> WAv = new HashSet<>(Arrays.asList("Asia/Shanghai", "Asia/Urumqi", "Asia/Chongqing", "Asia/Harbin", "Asia/Kashgar"));

    public static boolean CJ(int i) {
        return i == 4;
    }

    public static void Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar, View view) {
    }

    public static int ROR(int i) {
        if (i != 1) {
            if (i != 4) {
                if (i != 5) {
                    if (i != 6) {
                        return i;
                    }
                    return 5;
                }
                return 4;
            }
            return 1;
        }
        return 0;
    }

    public static boolean Tgh(int i) {
        return i == 6;
    }

    public static boolean fl(int i) {
        return i == 5;
    }

    static /* synthetic */ String qMt() {
        return bxS();
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        Gm = hashSet;
        hashSet.addAll(Arrays.asList("America/Eirunepe", "America/Rio_Branco", "America/Boa_Vista", "America/Campo_Grande", "America/Cuiaba", "America/Manaus", "America/Porto_Velho", "America/Araguaina", "America/Bahia", "America/Belem", "America/Fortaleza", "America/Maceio", "America/Recife", "America/Santarem", "America/Sao_Paulo", "America/Noronha"));
        Qhi = null;
    }

    public static Intent Qhi(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (!launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(268435456);
        return launchIntentForPackage;
    }

    public static boolean cJ(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0) != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean Qhi(Context context, Intent intent) {
        return ac(context, intent) > 0;
    }

    public static cJ cJ(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
        if (queryIntentActivities == null || queryIntentActivities.isEmpty()) {
            return new cJ(null, 0);
        }
        ActivityInfo activityInfo = queryIntentActivities.get(0).activityInfo;
        if (activityInfo != null && !TextUtils.isEmpty(activityInfo.packageName) && !TextUtils.isEmpty(activityInfo.name)) {
            return new cJ(new ComponentName(activityInfo.packageName, activityInfo.name), queryIntentActivities.size());
        }
        return new cJ(null, queryIntentActivities.size());
    }

    /* compiled from: ToolUtils.java */
    /* loaded from: classes2.dex */
    public static class cJ {
        public final ComponentName Qhi;
        public final int cJ;

        public cJ(ComponentName componentName, int i) {
            this.Qhi = componentName;
            this.cJ = i;
        }
    }

    public static int ac(Context context, Intent intent) {
        if (intent == null) {
            return 0;
        }
        try {
            return context.getPackageManager().queryIntentActivities(intent, 65536).size();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static boolean Qhi() {
        return (com.bytedance.sdk.openadsdk.core.pA.Qhi() == null || com.bytedance.sdk.openadsdk.core.pA.Qhi().CJ()) ? false : true;
    }

    public static boolean ac(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + Uri.encode(str)));
                if (!(context instanceof Activity)) {
                    intent.setFlags(268435456);
                }
                com.bytedance.sdk.component.utils.cJ.Qhi(context, intent, null);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static String Qhi(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 7) {
                                return null;
                            }
                            return "rewarded_video";
                        }
                        return "fullscreen_interstitial_ad";
                    }
                    return "open_ad";
                }
                return "interaction";
            }
            return "banner_ad";
        }
        return "embeded_ad";
    }

    public static String cJ(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i == 7) {
                                return "rewarded_video_landingpage";
                            }
                            return "unknow";
                        }
                        return "fullscreen_interstitial_ad";
                    }
                    return "splash_ad_landingpage";
                }
                return "interaction_landingpage";
            }
            return "banner_ad_landingpage";
        }
        return "embeded_ad_landingpage";
    }

    public static String Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        if (tPVar == null) {
            return null;
        }
        try {
            return ac(tPVar.sqa());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int Qhi(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1695837674:
                if (str.equals("banner_ad")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1364000502:
                if (str.equals("rewarded_video")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1263194568:
                if (str.equals("open_ad")) {
                    c2 = 2;
                    break;
                }
                break;
            case -764631662:
                if (str.equals("fullscreen_interstitial_ad")) {
                    c2 = 3;
                    break;
                }
                break;
            case 564365438:
                if (str.equals("cache_splash_ad")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1844104722:
                if (str.equals("interaction")) {
                    c2 = 5;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 2;
            case 1:
                return 7;
            case 2:
            case 4:
                return 4;
            case 3:
                return 5;
            case 5:
                return 3;
            default:
                return 1;
        }
    }

    public static String ac(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i == 3 || i == 4) {
                    return "open_ad";
                }
                if (i != 7) {
                    if (i == 8) {
                        return "fullscreen_interstitial_ad";
                    }
                    return "embeded_ad";
                }
                return "rewarded_video";
            }
            return "interaction";
        }
        return "banner_ad";
    }

    public static String cJ() {
        String cJ2;
        String str = "unKnow";
        com.bytedance.sdk.openadsdk.multipro.ac.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
        try {
            cJ2 = com.bytedance.sdk.openadsdk.multipro.cJ.ac() ? com.bytedance.sdk.openadsdk.multipro.CJ.cJ.cJ("sp_multi_ua_data", "android_system_ua", "unKnow") : com.bytedance.sdk.openadsdk.core.ac.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()).cJ("android_system_ua", "unKnow");
        } catch (Exception unused) {
        }
        if (cJ2 == null || "unKnow".equals(cJ2)) {
            FutureTask futureTask = new FutureTask(new Qhi(2));
            cJ.execute(futureTask);
            str = (String) futureTask.get(500L, TimeUnit.MILLISECONDS);
            com.bytedance.sdk.component.utils.ABk.Qhi("getUA", " getAndroidSystemUA userAgent".concat(String.valueOf(str)));
            return str;
        }
        return cJ2;
    }

    public static String ac() {
        if (!TextUtils.isEmpty(fl)) {
            return fl;
        }
        com.bytedance.sdk.openadsdk.multipro.ac.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
        String Qhi2 = com.bytedance.sdk.openadsdk.core.hm.Qhi("sdk_local_web_ua", (long) Constants.MILLIS_IN_DAY);
        fl = Qhi2;
        if (TextUtils.isEmpty(Qhi2)) {
            ReentrantLock reentrantLock = Tgh;
            try {
                if (reentrantLock.tryLock()) {
                    try {
                        if (TextUtils.isEmpty(fl)) {
                            fl = WebSettings.getDefaultUserAgent(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
                        }
                        com.bytedance.sdk.openadsdk.core.hm.Qhi("sdk_local_web_ua", fl);
                        reentrantLock.unlock();
                    } catch (Exception e2) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", "", e2);
                        return fl;
                    } catch (NoClassDefFoundError e3) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", "", e3);
                        return fl;
                    }
                }
            } finally {
                Tgh.unlock();
            }
        }
        return fl;
    }

    /* compiled from: ToolUtils.java */
    /* renamed from: com.bytedance.sdk.openadsdk.utils.js$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (TextUtils.isEmpty(js.fl)) {
                    SSWebView sSWebView = new SSWebView(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
                    sSWebView.setWebViewClient(new SSWebView.Qhi());
                    String unused = js.fl = sSWebView.getUserAgentString();
                }
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", "", e2);
            } catch (NoClassDefFoundError e3) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", "", e3);
            }
        }
    }

    private static String bxS() {
        try {
            WebView webView = new WebView(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
            webView.setWebViewClient(new SSWebView.Qhi());
            String userAgentString = webView.getSettings().getUserAgentString();
            if (userAgentString != null && !"unKnow".equals(userAgentString)) {
                if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                    com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_ua_data", "webview_ua", userAgentString);
                } else {
                    com.bytedance.sdk.openadsdk.core.ac.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()).Qhi("webview_ua", userAgentString);
                }
            }
            return userAgentString;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("getUA", "e:" + th.getMessage());
            return "unKnow";
        }
    }

    /* compiled from: ToolUtils.java */
    /* loaded from: classes2.dex */
    public static class Qhi implements Callable<String> {
        private final int Qhi;

        Qhi(int i) {
            this.Qhi = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: Qhi */
        public synchronized String call() throws Exception {
            String str;
            str = "unKnow";
            int i = this.Qhi;
            if (i == 1) {
                str = ac();
            } else if (i == 2) {
                str = cJ();
            }
            return str;
        }

        private String cJ() {
            String str;
            Throwable th;
            try {
                str = System.getProperty("http.agent");
                if (str != null) {
                    try {
                        if (!"unKnow".equals(str)) {
                            if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                                com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_ua_data", "android_system_ua", str);
                            } else {
                                com.bytedance.sdk.openadsdk.core.ac.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()).Qhi("android_system_ua", str);
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        com.bytedance.sdk.component.utils.ABk.Qhi("getUA", "e:" + th.getMessage());
                        return str;
                    }
                }
            } catch (Throwable th3) {
                str = "unKnow";
                th = th3;
            }
            return str;
        }

        private synchronized String ac() {
            final String[] strArr;
            strArr = new String[]{"unKnow"};
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.js.Qhi.1
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = js.qMt();
                    String str = strArr[0];
                    countDownLatch.countDown();
                }
            });
            try {
                countDownLatch.await(2L, TimeUnit.SECONDS);
            } catch (InterruptedException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", e2.getMessage());
            }
            return strArr[0];
        }
    }

    public static String CJ() {
        return bxS.Qhi();
    }

    public static synchronized String fl() {
        String str;
        Context Qhi2;
        synchronized (js.class) {
            if (TextUtils.isEmpty(ROR) && (Qhi2 = com.bytedance.sdk.openadsdk.core.HzH.Qhi()) != null) {
                ROR = Qhi2.getPackageName();
            }
            str = ROR;
        }
        return str;
    }

    public static synchronized String Tgh() {
        String str;
        synchronized (js.class) {
            if (TextUtils.isEmpty(Sf) && com.bytedance.sdk.openadsdk.core.HzH.Qhi() != null) {
                PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.HzH.Qhi().getPackageManager().getPackageInfo(fl(), 0);
                Sf = String.valueOf(packageInfo.versionCode);
                hm = packageInfo.versionName;
            }
            str = Sf;
        }
        return str;
    }

    public static synchronized String ROR() {
        String str;
        synchronized (js.class) {
            if (TextUtils.isEmpty(hm) && com.bytedance.sdk.openadsdk.core.HzH.Qhi() != null) {
                PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.HzH.Qhi().getPackageManager().getPackageInfo(fl(), 0);
                Sf = String.valueOf(packageInfo.versionCode);
                hm = packageInfo.versionName;
            }
            str = hm;
        }
        return str;
    }

    public static String Qhi(Context context) {
        String cJ2 = com.bytedance.sdk.openadsdk.core.ac.Qhi(context).cJ("total_memory", (String) null);
        if (cJ2 == null || cJ(cJ2) <= 0) {
            cJ2 = ac("MemTotal");
            if (cJ(cJ2) <= 0) {
                cJ2 = Sf();
            }
            com.bytedance.sdk.openadsdk.core.ac.Qhi(context).Qhi("total_memory", cJ2);
        }
        return cJ2;
    }

    public static long cJ(String str) {
        try {
            return Long.parseLong(str);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String Sf() {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) com.bytedance.sdk.openadsdk.core.HzH.Qhi().getSystemService("activity")).getMemoryInfo(memoryInfo);
            if (memoryInfo.totalMem > 0) {
                return String.valueOf(memoryInfo.totalMem / 1024);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String cJ(Context context) {
        return com.bytedance.sdk.openadsdk.core.ac.Qhi(context).cJ("total_memory", "0");
    }

    public static String hm() {
        return ac("MemTotal");
    }

    public static String ac(String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        String readLine;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 4096);
                do {
                    try {
                        readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", th.getMessage());
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception unused) {
                                }
                            }
                            return null;
                        } finally {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused2) {
                                }
                            }
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception unused3) {
                                }
                            }
                        }
                    }
                } while (!readLine.contains(str));
                if (readLine == null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused4) {
                    }
                    try {
                        fileReader.close();
                    } catch (Exception unused5) {
                    }
                    return null;
                }
                String str2 = readLine.split("\\s+")[1];
                try {
                    bufferedReader.close();
                } catch (Exception unused6) {
                }
                try {
                    fileReader.close();
                } catch (Exception unused7) {
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
            bufferedReader = null;
        }
    }

    public static long ac(Context context) {
        return com.bytedance.sdk.openadsdk.core.ac.Qhi(context).cJ("total_internal_storage", 0L).longValue();
    }

    public static long WAv() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static long CJ(Context context) {
        return com.bytedance.sdk.openadsdk.core.ac.Qhi(context).cJ("free_internal_storage", 0L).longValue();
    }

    public static long fl(Context context) {
        return com.bytedance.sdk.openadsdk.core.ac.Qhi(context).cJ("total_sdcard_storage", 0L).longValue();
    }

    public static long Gm() {
        try {
            if (Dww()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                return statFs.getBlockCount() * statFs.getBlockSize();
            }
            return 0L;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", th.getMessage());
            return 0L;
        }
    }

    private static boolean Dww() {
        try {
            return "mounted".equals(Environment.getExternalStorageState());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int Tgh(Context context) {
        return com.bytedance.sdk.openadsdk.core.ac.Qhi(context).cJ("is_root", -1);
    }

    public static boolean zc() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String CJ(String str) {
        return Qhi(str, false);
    }

    public static String Qhi(String str, boolean z) {
        String str2;
        String Jma = com.bytedance.sdk.openadsdk.core.HzH.CJ().Jma();
        if (TextUtils.isEmpty(Jma)) {
            int hpZ = hpZ();
            if (hpZ == 1) {
                str2 = "https://pangolin16.sgsnssdk.com" + str;
            } else if (hpZ == 2) {
                str2 = "https://pangolin16.sgsnssdk.com" + str;
            } else {
                str2 = "https://pangolin16.isnssdk.com" + str;
            }
            if (!z) {
                return lB.Qhi(str2);
            }
            return zc(str2);
        }
        String str3 = "https://" + Jma + str;
        if (lB.Qhi() && !z) {
            str3 = lB.Qhi(str3);
        }
        return z ? zc(str3) : str3;
    }

    private static String zc(String str) {
        try {
            return Uri.parse(str).buildUpon().appendQueryParameter("aid", "1371").appendQueryParameter("device_platform", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID).appendQueryParameter("version_code", Tgh()).toString();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", e2.getMessage());
            return str;
        }
    }

    public static String fl(String str) {
        if (TextUtils.isEmpty(str)) {
            str = com.bytedance.sdk.openadsdk.core.HzH.CJ().js();
        }
        if (!TextUtils.isEmpty(str)) {
            return !str.startsWith("http") ? "https://".concat(String.valueOf(str)) : str;
        } else if (hpZ() == 2) {
            return "https://log.sgsnssdk.com/service/2/app_log/";
        } else {
            return "https://log-mva.isnssdk.com/service/2/app_log/";
        }
    }

    public static String ABk() {
        return String.format("https://%s", "log.byteoversea.com/service/2/app_log_test/");
    }

    public static String iMK() {
        int hpZ = hpZ();
        if (hpZ == 1 || hpZ == 2) {
            return "https://sf16-static.i18n-pglstatp.com/obj/ad-pattern-sg/renderer/package_sg.json";
        }
        return "https://sf16-static.i18n-pglstatp.com/obj/ad-pattern-va/renderer/package_va.json";
    }

    public static String pA() {
        try {
            return TimeZone.getDefault().getID();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", e2.toString());
            return "";
        }
    }

    public static int hpZ() {
        try {
            String id = TimeZone.getDefault().getID();
            if (WAv.contains(id)) {
                return 2;
            }
            if (id == null || !id.startsWith("Asia/")) {
                if (id == null || !id.startsWith("Europe/")) {
                    if (id != null && id.startsWith("America/")) {
                        if (!Gm.contains(id)) {
                            return 5;
                        }
                    }
                    return 3;
                }
                return 4;
            }
            return 2;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", th.toString());
            return 0;
        }
    }

    public static String ROR(Context context) {
        try {
            return context.getResources().getConfiguration().getLocales().get(0).getLanguage();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", e2.toString());
            return "";
        }
    }

    public static int HzH() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / DateUtils.MILLIS_IN_HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    public static String kYc() {
        int i = -HzH();
        if (i >= 0) {
            return "Etc/GMT+".concat(String.valueOf(i));
        }
        return "Etc/GMT".concat(String.valueOf(i));
    }

    public static JSONObject Qhi(boolean z, com.bytedance.sdk.openadsdk.core.model.tP tPVar, long j, long j2, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("creative_id", tPVar.HLI());
            jSONObject.put("load_time", j);
            com.bykv.vk.openvk.component.video.api.ac.cJ FQ = tPVar.FQ();
            if (FQ != null) {
                jSONObject.put("video_size", FQ.fl());
                jSONObject.put("video_resolution", FQ.hm());
            }
            if (!z) {
                jSONObject.put("error_code", j2);
                if (TextUtils.isEmpty(str)) {
                    str = "unknown";
                }
                jSONObject.put("error_message", str);
            }
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", "getVideoDownload json error", e2);
        }
        return jSONObject;
    }

    public static JSONObject Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar, long j, com.bykv.vk.openvk.component.video.api.Qhi qhi) {
        if (tPVar == null) {
            return new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("creative_id", tPVar.HLI());
            jSONObject.put("buffers_time", j);
            com.bykv.vk.openvk.component.video.api.ac.cJ FQ = tPVar.FQ();
            if (FQ != null) {
                jSONObject.put("video_size", FQ.fl());
                jSONObject.put("video_resolution", FQ.hm());
            }
            Qhi(jSONObject, qhi);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", "getVideoAction json error", e2);
        }
        return jSONObject;
    }

    private static void Qhi(JSONObject jSONObject, com.bykv.vk.openvk.component.video.api.Qhi qhi) {
        if (jSONObject.has("video_resolution") || qhi == null) {
            return;
        }
        try {
            jSONObject.put("video_resolution", String.format(Locale.getDefault(), "%d×%d", Integer.valueOf(qhi.CJ()), Integer.valueOf(qhi.fl())));
        } catch (Throwable unused) {
        }
    }

    public static boolean Tgh(String str) {
        try {
            return Pattern.compile("[一-龥]").matcher(str).find();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar, String str) {
        if (tPVar != null) {
            try {
                String YB = tPVar.YB();
                if (TextUtils.isEmpty(YB) && tPVar.ReL() != null && tPVar.ReL().ac() == 1 && !TextUtils.isEmpty(tPVar.ReL().cJ())) {
                    YB = tPVar.ReL().cJ();
                }
                String str2 = YB;
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.lB.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi(), str2, tPVar, Qhi(str), str, false);
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean cJ(com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        if (tPVar == null) {
            return true;
        }
        int cJ2 = com.bytedance.sdk.openadsdk.core.HzH.CJ().cJ(tPVar.Hy());
        int ac2 = com.bytedance.sdk.component.utils.hpZ.ac(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
        if (cJ2 != 1) {
            if (cJ2 == 2) {
                return fl(ac2) || CJ(ac2) || Tgh(ac2);
            } else if (cJ2 != 3) {
                return cJ2 != 5 || CJ(ac2) || Tgh(ac2);
            } else {
                return false;
            }
        }
        return CJ(ac2);
    }

    public static boolean Sf(Context context) {
        if (context != null) {
            return !(context.getApplicationInfo().targetSdkVersion >= 30 && Build.VERSION.SDK_INT >= 30);
        }
        throw new IllegalArgumentException("params context is null");
    }

    public static String ROR(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("KLLK")) {
            return str.replace("KLLK", "OPPO");
        }
        return str.contains("kllk") ? str.replace("kllk", "oppo") : "";
    }

    public static void Qhi(String str, String str2, Context context) {
        int i;
        if (TextUtils.isEmpty(str2) || !hm(context)) {
            return;
        }
        int length = str2.length();
        int i2 = 1;
        if (length % 3572 == 0) {
            i = length / 3572;
        } else {
            i = (length / 3572) + 1;
        }
        int i3 = 3572;
        int i4 = 0;
        while (i2 <= i) {
            if (i3 < length) {
                Log.d(str, i + "-" + i2 + ":" + str2.substring(i4, i3));
                i2++;
                i4 = i3;
                i3 += 3572;
            } else {
                Log.d(str, i + "-" + i2 + ":" + str2.substring(i4));
                return;
            }
        }
    }

    public static boolean hm(Context context) {
        if (context == null) {
            return false;
        }
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static int WAv(Context context) {
        int i = -1;
        try {
            i = context.getApplicationInfo().targetSdkVersion;
            new Object[]{"targetSdkVersion = ", Integer.valueOf(i)};
            return i;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", th.getMessage());
            return i;
        }
    }

    public static long Gm(Context context) {
        int i = -1;
        try {
            i = context.getApplicationInfo().minSdkVersion;
            new Object[]{"minSdkVersion = ", Integer.valueOf(i)};
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", th.getMessage());
        }
        return i;
    }

    public static void Sf(final String str) {
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi();
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi("reportMultiLog", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.utils.js.2
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                if (js.ac || !com.bytedance.sdk.openadsdk.core.HzH.CJ().Hf()) {
                    return null;
                }
                boolean unused = js.ac = true;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR, str);
                return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("reportMultiLog").cJ(jSONObject.toString());
            }
        });
    }

    public static boolean hm(String str) {
        if (com.bytedance.sdk.openadsdk.core.iMK.fl()) {
            return true;
        }
        com.bytedance.sdk.component.utils.ABk.cJ("You must use method '" + str + "' after initialization, please check.");
        return false;
    }

    public static void WAv(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return;
        }
        com.bytedance.sdk.component.utils.ABk.cJ("You should use method '" + str + "' on the asynchronous thread,it may cause anr, please check.");
    }

    public static int zc(Context context) {
        return ROR(com.bytedance.sdk.component.utils.bxS.Qhi(context, 0L));
    }

    public static boolean tP() {
        return CJ.get() == 1;
    }

    public static void ABk(Context context) {
        try {
            AtomicInteger atomicInteger = CJ;
            if (atomicInteger.get() != 0) {
                return;
            }
            AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            boolean isEnabled = accessibilityManager.isEnabled();
            boolean isTouchExplorationEnabled = accessibilityManager.isTouchExplorationEnabled();
            if (isEnabled && isTouchExplorationEnabled) {
                atomicInteger.set(1);
                com.bytedance.sdk.openadsdk.Gm.ac.Qhi().ac();
                return;
            }
            atomicInteger.set(2);
        } catch (Exception unused) {
            CJ.set(2);
        }
    }

    public static boolean Sf(int i) {
        if (i <= 0) {
            return false;
        }
        return i >= 100 || new Random(System.currentTimeMillis()).nextInt(100) + 1 <= i;
    }

    public static void Qhi(StringBuilder sb, String str, String str2) {
        int indexOf;
        if (sb == null || TextUtils.isEmpty(str) || (indexOf = sb.indexOf(str)) <= 0) {
            return;
        }
        sb.replace(indexOf, str.length() + indexOf, str2);
    }

    public static int iMK(Context context) {
        List<ResolveInfo> queryIntentActivities;
        Integer num = Qhi;
        if (num != null) {
            return num.intValue();
        }
        if (context == null || (queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("https://www.example.com")), 0)) == null) {
            return 0;
        }
        Integer valueOf = Integer.valueOf(queryIntentActivities.size());
        Qhi = valueOf;
        return valueOf.intValue();
    }

    public static com.bytedance.sdk.openadsdk.common.cJ Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar, SSWebView sSWebView, Context context, String str) {
        int MND = tPVar.MND();
        if (tPVar != null && tPVar.jPH() && (MND == 1 || MND == 3)) {
            sSWebView.Qhi(true, (View) new ArbitrageLoadingLayout(context));
            return new com.bytedance.sdk.openadsdk.common.cJ(tPVar, sSWebView, str, false);
        }
        return null;
    }

    public static void Qhi(JSONObject jSONObject) {
        int intValue;
        try {
            Pair<String, Long> CJ2 = com.bytedance.sdk.openadsdk.core.hm.CJ("oem_store");
            int i = -1;
            if (CJ2 != null && ((intValue = Integer.valueOf((String) CJ2.first).intValue()) != -2 || System.currentTimeMillis() - ((Long) CJ2.second).longValue() < com.bytedance.sdk.openadsdk.HzH.Qhi.Qhi("oem_store_state_time", 259200000))) {
                i = intValue;
            }
            jSONObject.put("oem_store", i);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.ToolUtils", th.getMessage());
        }
    }

    public static void Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar, SSWebView sSWebView) {
        com.bytedance.sdk.openadsdk.core.model.Tgh WAv2;
        if (tPVar == null || sSWebView == null) {
            return;
        }
        int MND = tPVar.MND();
        if (tPVar.jPH()) {
            if ((MND == 2 || MND == 3) && (WAv2 = tPVar.WAv()) != null) {
                sSWebView.Qhi(true, WAv2.cJ(), WAv2.ac(), WAv2.CJ(), WAv2.fl(), WAv2.Qhi());
            }
        }
    }
}
