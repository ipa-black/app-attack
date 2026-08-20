package com.bytedance.sdk.openadsdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.JProtect;
import com.bytedance.sdk.openadsdk.core.settings.hpZ;
import com.bytedance.sdk.openadsdk.utils.Tgh;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import com.unity3d.services.core.request.metrics.AdOperationMetric;
import java.io.IOException;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class DeviceUtils {
    private static int ABk = 0;
    private static int Gm = 0;
    public static String Qhi = "";
    private static int Sf;
    private static int WAv;
    private static int hm;
    private static int zc;
    private static volatile long cJ = System.currentTimeMillis();
    private static volatile boolean ac = false;
    private static volatile boolean CJ = false;
    private static volatile boolean fl = false;
    private static volatile boolean Tgh = true;
    private static long ROR = 0;
    private static AtomicBoolean iMK = new AtomicBoolean(false);

    public static void Qhi(Context context) {
        if (ac) {
            return;
        }
        try {
            cJ cJVar = new cJ();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            context.getApplicationContext().registerReceiver(cJVar, intentFilter);
            ac = true;
        } catch (Throwable unused) {
        }
    }

    public static long Qhi() {
        return cJ;
    }

    @JProtect
    public static boolean cJ() {
        if (SystemClock.elapsedRealtime() - ROR >= 20000) {
            ROR = SystemClock.elapsedRealtime();
            try {
                PowerManager powerManager = (PowerManager) com.bytedance.sdk.openadsdk.core.HzH.Qhi().getSystemService("power");
                if (powerManager != null) {
                    Tgh = powerManager.isInteractive();
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.DeviceUtils", th.getMessage());
            }
        }
        return Tgh;
    }

    public static boolean cJ(Context context) {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean ac(Context context) {
        try {
            return (context.getResources().getConfiguration().uiMode & 15) == 4;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int CJ(Context context) {
        if (ac(context)) {
            return 3;
        }
        return cJ(context) ? 2 : 1;
    }

    private static void Qhi(JSONObject jSONObject) throws JSONException {
        cJ(jSONObject);
    }

    private static void cJ(JSONObject jSONObject) throws JSONException {
        jSONObject.put("model", Build.MODEL);
        if (com.bytedance.sdk.openadsdk.core.HzH.CJ().aP("gaid")) {
            jSONObject.put("gaid", com.bytedance.sdk.openadsdk.pA.Qhi.cJ.Qhi.Qhi().cJ());
        }
    }

    @JProtect
    public static JSONObject Qhi(Context context, boolean z) {
        String cJ2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sys_adb_status", Tgh(context));
            Qhi(jSONObject);
            jSONObject.put(SessionDescription.ATTR_TYPE, CJ(context));
            jSONObject.put("os", 1);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("conn_type", js.zc(context));
            jSONObject.put("app_set_id", com.bytedance.sdk.openadsdk.core.settings.fl.ac());
            jSONObject.put("app_set_id_scope", com.bytedance.sdk.openadsdk.core.settings.fl.cJ());
            jSONObject.put("installed_source", com.bytedance.sdk.openadsdk.core.settings.fl.CJ());
            jSONObject.put("screen_width", zn.ac(context));
            jSONObject.put("screen_height", zn.CJ(context));
            jSONObject.put("sec_did", com.bytedance.sdk.openadsdk.core.fl.ac.Tgh());
            com.bytedance.sdk.openadsdk.core.settings.ROR CJ2 = com.bytedance.sdk.openadsdk.core.HzH.CJ();
            if (CJ2.aP("boot")) {
                jSONObject.put("boot", String.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
                jSONObject.put("power_on_time", String.valueOf(SystemClock.elapsedRealtime()));
            }
            jSONObject.put(Constants.UUID, com.bytedance.sdk.openadsdk.core.zc.ac(context));
            jSONObject.put("rom_version", CQU.Qhi());
            jSONObject.put("sys_compiling_time", com.bytedance.sdk.openadsdk.core.zc.cJ(context));
            jSONObject.put("timezone", js.kYc());
            jSONObject.put("language", com.bytedance.sdk.openadsdk.core.zc.Qhi());
            jSONObject.put("carrier_name", Eh.Qhi());
            if (z) {
                cJ2 = js.Qhi(context);
            } else {
                cJ2 = js.cJ(context);
            }
            jSONObject.put("total_mem", String.valueOf(Long.parseLong(cJ2) * 1024));
            jSONObject.put("locale_language", CJ());
            jSONObject.put("screen_bright", Math.ceil(fl() * 10.0f) / 10.0d);
            jSONObject.put("is_screen_off", !cJ() ? 1 : 0);
            jSONObject.put("cpu_num", Sf.Qhi(context));
            jSONObject.put("cpu_max_freq", Sf.cJ(context));
            jSONObject.put("cpu_min_freq", Sf.ac(context));
            Tgh.Qhi Qhi2 = Tgh.Qhi();
            jSONObject.put("battery_remaining_pct", (int) Qhi2.cJ);
            jSONObject.put("is_charging", Qhi2.Qhi);
            jSONObject.put("total_space", String.valueOf(js.ac(context)));
            jSONObject.put("free_space_in", String.valueOf(js.CJ(context)));
            jSONObject.put("sdcard_size", String.valueOf(js.fl(context)));
            jSONObject.put("rooted", js.Tgh(context));
            jSONObject.put("enable_assisted_clicking", Tgh());
            jSONObject.put("force_language", com.bytedance.sdk.component.utils.MQ.Qhi(context, "tt_choose_language"));
            jSONObject.put("airplane", ROR(context));
            jSONObject.put("darkmode", iMK(context));
            jSONObject.put("headset", pA(context));
            jSONObject.put("ringmute", Sf(context));
            jSONObject.put("screenscale", hpZ(context));
            jSONObject.put("volume", Sf());
            jSONObject.put("low_power_mode", HzH(context));
            if (CJ2.aP("mnc")) {
                jSONObject.put("mnc", Eh.ac());
            }
            if (CJ2.aP("mcc")) {
                jSONObject.put("mcc", Eh.cJ());
            }
            jSONObject.put("act", com.bytedance.sdk.openadsdk.core.act.Qhi.cJ(context));
            jSONObject.put("act_event", com.bytedance.sdk.openadsdk.core.act.Qhi.Qhi());
            String CJ3 = com.bytedance.sdk.openadsdk.core.fl.ac.CJ();
            if (!TextUtils.isEmpty(CJ3)) {
                jSONObject.put("sof_chara", CJ3);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject fl(Context context) {
        return Qhi(context, false);
    }

    public static int ac() {
        return com.bytedance.sdk.openadsdk.core.ac.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()).cJ("limit_ad_track", -1);
    }

    public static String CJ() {
        String languageTag = Locale.getDefault().toLanguageTag();
        return !TextUtils.isEmpty(languageTag) ? languageTag : "";
    }

    public static float fl() {
        int i = -1;
        try {
            Context Qhi2 = com.bytedance.sdk.openadsdk.core.HzH.Qhi();
            if (Qhi2 != null) {
                i = Settings.System.getInt(Qhi2.getContentResolver(), "screen_brightness", -1);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.DeviceUtils", th.getMessage());
        }
        if (i < 0) {
            return -1.0f;
        }
        return Math.round((i / 255.0f) * 10.0f) / 10.0f;
    }

    public static int Tgh() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) com.bytedance.sdk.openadsdk.core.HzH.Qhi().getSystemService("accessibility");
        if (accessibilityManager == null) {
            return -1;
        }
        return accessibilityManager.isEnabled() ? 1 : 0;
    }

    public static int Tgh(Context context) {
        if (context == null) {
            return -1;
        }
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", -1);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.DeviceUtils", th.getMessage());
            return -1;
        }
    }

    public static int ROR(Context context) {
        try {
            return Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0 ? 1 : 0;
        } catch (Throwable unused) {
            return -1;
        }
    }

    private static int iMK(Context context) {
        int i;
        try {
            i = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } catch (Throwable unused) {
        }
        if (i == 32) {
            return 1;
        }
        return i == 16 ? 0 : -1;
    }

    private static int pA(Context context) {
        return zc;
    }

    public static int Sf(Context context) {
        return Sf;
    }

    private static float hpZ(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static int ROR() {
        return WAv;
    }

    public static int Sf() {
        return Gm;
    }

    public static int hm() {
        return hm;
    }

    private static int HzH(Context context) {
        return ABk;
    }

    public static String hm(Context context) {
        if (TextUtils.isEmpty(Qhi)) {
            Qhi = com.bytedance.sdk.openadsdk.core.ac.Qhi(context).cJ("framework_name", "");
        }
        return Qhi;
    }

    @JProtect
    public static void WAv() {
        new ac().run();
        Context Qhi2 = com.bytedance.sdk.openadsdk.core.HzH.Qhi();
        if (Qhi2 != null) {
            com.bytedance.sdk.openadsdk.core.ac.Qhi(Qhi2).Qhi("cpu_count", Sf.Qhi());
            com.bytedance.sdk.openadsdk.core.ac.Qhi(Qhi2).Qhi("cpu_max_frequency", Sf.Qhi(Sf.Qhi()));
            com.bytedance.sdk.openadsdk.core.ac.Qhi(Qhi2).Qhi("cpu_min_frequency", Sf.cJ(Sf.Qhi()));
            String hm2 = js.hm();
            if (hm2 != null) {
                com.bytedance.sdk.openadsdk.core.ac.Qhi(Qhi2).Qhi("total_memory", hm2);
            }
            com.bytedance.sdk.openadsdk.core.ac.Qhi(Qhi2).Qhi("total_internal_storage", js.WAv());
            com.bytedance.sdk.openadsdk.core.ac.Qhi(Qhi2).Qhi("free_internal_storage", com.bytedance.sdk.component.utils.iMK.Qhi());
            com.bytedance.sdk.openadsdk.core.ac.Qhi(Qhi2).Qhi("total_sdcard_storage", js.Gm());
            com.bytedance.sdk.openadsdk.core.ac.Qhi(Qhi2).Qhi("is_root", js.zc() ? 1 : 0);
            if (TextUtils.isEmpty(hm(Qhi2))) {
                try {
                    Class.forName(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME);
                    Qhi = "unity";
                } catch (ClassNotFoundException unused) {
                    Qhi = "native";
                }
                com.bytedance.sdk.openadsdk.core.ac.Qhi(Qhi2).Qhi("framework_name", Qhi);
            }
            Gm();
            kYc(Qhi2);
            ABk = MQ(Qhi2);
        }
    }

    public static void Gm() {
        try {
            int ringerMode = ((AudioManager) com.bytedance.sdk.openadsdk.core.HzH.Qhi().getSystemService("audio")).getRingerMode();
            if (ringerMode == 2) {
                Sf = 1;
            } else if (ringerMode == 1) {
                Sf = 2;
            } else {
                Sf = 0;
            }
        } catch (Throwable unused) {
        }
    }

    private static void kYc(Context context) {
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            hm = audioManager.getStreamMaxVolume(3);
            int streamVolume = audioManager.getStreamVolume(3);
            WAv = streamVolume;
            Gm = (int) ((streamVolume / hm) * 100.0d);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tP(Context context) {
        if (context == null) {
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        lG.cJ(new com.bytedance.sdk.component.Sf.hm("DeviceUtils_get_low_power_mode") { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.1
            @Override // java.lang.Runnable
            public void run() {
                int unused = DeviceUtils.ABk = DeviceUtils.MQ(applicationContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int MQ(Context context) {
        if (context == null) {
            return 0;
        }
        try {
            if (!Build.MANUFACTURER.equalsIgnoreCase("XIAOMI") && !Build.MANUFACTURER.equalsIgnoreCase("HUAWEI")) {
                return ((PowerManager) context.getSystemService("power")).isPowerSaveMode() ? 1 : 0;
            }
            return qMt(context);
        } catch (Throwable unused) {
            return 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        if (android.provider.Settings.System.getInt(r4.getContentResolver(), "SmartModeStatus") == 4) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int qMt(android.content.Context r4) {
        /*
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: java.lang.Throwable -> L35
            java.lang.String r1 = "XIAOMI"
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: java.lang.Throwable -> L35
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L1c
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L35
            java.lang.String r0 = "POWER_SAVE_MODE_OPEN"
            int r4 = android.provider.Settings.System.getInt(r4, r0)     // Catch: java.lang.Throwable -> L35
            if (r4 != r1) goto L19
            goto L1a
        L19:
            r1 = r2
        L1a:
            r2 = r1
            goto L34
        L1c:
            java.lang.String r0 = android.os.Build.MANUFACTURER     // Catch: java.lang.Throwable -> L35
            java.lang.String r3 = "HUAWEI"
            boolean r0 = r0.equalsIgnoreCase(r3)     // Catch: java.lang.Throwable -> L35
            if (r0 == 0) goto L34
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L35
            java.lang.String r0 = "SmartModeStatus"
            int r4 = android.provider.Settings.System.getInt(r4, r0)     // Catch: java.lang.Throwable -> L35
            r0 = 4
            if (r4 != r0) goto L19
            goto L1a
        L34:
            return r2
        L35:
            r4 = -1
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.DeviceUtils.qMt(android.content.Context):int");
    }

    public static void WAv(Context context) {
        AudioInfoReceiver.cJ(context);
    }

    public static void Gm(Context context) {
        Context applicationContext;
        if (fl || context == null || (applicationContext = context.getApplicationContext()) == null) {
            return;
        }
        try {
            if (Build.MANUFACTURER.equalsIgnoreCase("XIAOMI")) {
                EBS(applicationContext);
            } else {
                Qhi.cJ(applicationContext);
            }
            fl = true;
        } catch (Throwable unused) {
        }
    }

    private static void EBS(Context context) {
        final Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            return;
        }
        context.getContentResolver().registerContentObserver(Uri.parse("content://settings/system/POWER_SAVE_MODE_OPEN"), false, new ContentObserver(null) { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.2
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                super.onChange(z);
                DeviceUtils.tP(applicationContext);
            }
        });
    }

    /* loaded from: classes2.dex */
    static class cJ extends BroadcastReceiver {
        cJ() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                boolean unused = DeviceUtils.Tgh = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                boolean unused2 = DeviceUtils.Tgh = false;
            } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                long unused3 = DeviceUtils.cJ = System.currentTimeMillis();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ac implements Runnable {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v6, types: [com.bytedance.sdk.openadsdk.core.ac] */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1, types: [int] */
        /* JADX WARN: Type inference failed for: r3v3 */
        @Override // java.lang.Runnable
        public void run() {
            ?? r3;
            try {
                final AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
                if (advertisingIdInfo != null) {
                    boolean isLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
                    DeviceUtils.cJ(advertisingIdInfo);
                    com.bytedance.sdk.openadsdk.core.settings.HzH.Qhi(new hpZ.Qhi() { // from class: com.bytedance.sdk.openadsdk.utils.DeviceUtils.ac.1
                        @Override // com.bytedance.sdk.openadsdk.core.settings.hpZ.Qhi
                        public void Qhi() {
                            DeviceUtils.cJ(advertisingIdInfo);
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.settings.hpZ.Qhi
                        public void cJ() {
                            DeviceUtils.cJ(advertisingIdInfo);
                        }
                    });
                    r3 = isLimitAdTrackingEnabled;
                } else {
                    r3 = -1;
                }
                if (r3 != -1) {
                    com.bytedance.sdk.openadsdk.core.ac.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()).Qhi("limit_ad_track", r3);
                }
            } catch (IOException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.DeviceUtils", "getLmtTask error : signaling connection to Google Play Services failed.", e2);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.DeviceUtils", th.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cJ(AdvertisingIdClient.Info info) {
        if (!com.bytedance.sdk.openadsdk.core.HzH.CJ().aP("gaid") || iMK.getAndSet(true)) {
            return;
        }
        String id = info.getId();
        if (TextUtils.isEmpty(id)) {
            return;
        }
        com.bytedance.sdk.openadsdk.pA.Qhi.cJ.Qhi.Qhi().cJ(id);
        com.bytedance.sdk.openadsdk.pA.Qhi.cJ.Qhi.Qhi(id);
        com.bytedance.sdk.openadsdk.core.fl.ac.Qhi(id);
    }

    /* loaded from: classes2.dex */
    public static class AudioInfoReceiver extends BroadcastReceiver {
        static final CopyOnWriteArrayList<com.bytedance.sdk.openadsdk.WAv.Sf> Qhi = new CopyOnWriteArrayList<>();

        /* JADX INFO: Access modifiers changed from: private */
        public static void cJ(Context context) {
            if (!DeviceUtils.CJ && context != null) {
                try {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
                    intentFilter.addAction("android.intent.action.HEADSET_PLUG");
                    context.registerReceiver(new AudioInfoReceiver(), intentFilter);
                    boolean unused = DeviceUtils.CJ = true;
                } catch (Throwable unused2) {
                }
            }
        }

        public static void Qhi(com.bytedance.sdk.openadsdk.WAv.Sf sf) {
            if (sf != null) {
                CopyOnWriteArrayList<com.bytedance.sdk.openadsdk.WAv.Sf> copyOnWriteArrayList = Qhi;
                if (copyOnWriteArrayList.contains(sf)) {
                    return;
                }
                copyOnWriteArrayList.add(sf);
            }
        }

        public static void cJ(com.bytedance.sdk.openadsdk.WAv.Sf sf) {
            if (sf == null) {
                return;
            }
            Qhi.remove(sf);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                if ("android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction())) {
                    if (intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3) {
                        int unused = DeviceUtils.WAv = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", 0);
                        Iterator<com.bytedance.sdk.openadsdk.WAv.Sf> it = Qhi.iterator();
                        while (it.hasNext()) {
                            it.next().Qhi(DeviceUtils.WAv);
                        }
                        if (DeviceUtils.hm != 0) {
                            int unused2 = DeviceUtils.Gm = (int) ((DeviceUtils.WAv / DeviceUtils.hm) * 100.0d);
                        }
                    }
                } else if ("android.intent.action.HEADSET_PLUG".equals(intent.getAction())) {
                    int unused3 = DeviceUtils.zc = intent.getIntExtra(AdOperationMetric.INIT_STATE, 0);
                }
            } catch (Exception unused4) {
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class Qhi extends BroadcastReceiver {
        private Qhi() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void cJ(Context context) {
            if (context != null) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                intentFilter.addAction("huawei.intent.action.POWER_MODE_CHANGED_ACTION");
                if (Build.VERSION.SDK_INT >= 33) {
                    context.registerReceiver(new Qhi(), intentFilter, 2);
                } else {
                    context.registerReceiver(new Qhi(), intentFilter);
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || context == null) {
                return;
            }
            if ("android.os.action.POWER_SAVE_MODE_CHANGED".equals(intent.getAction())) {
                DeviceUtils.tP(context);
            } else if ("huawei.intent.action.POWER_MODE_CHANGED_ACTION".equals(intent.getAction())) {
                int unused = DeviceUtils.ABk = intent.getIntExtra(AdOperationMetric.INIT_STATE, 0) == 1 ? 1 : 0;
            }
        }
    }
}
