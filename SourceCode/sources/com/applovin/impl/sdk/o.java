package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.hardware.SensorManager;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.LocaleList;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.applovin.impl.sdk.e.f;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class o {

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicReference<a> f5992h = new AtomicReference<>();
    private static final AtomicReference<b> j = new AtomicReference<>();

    /* renamed from: a  reason: collision with root package name */
    private final n f5993a;

    /* renamed from: b  reason: collision with root package name */
    private final v f5994b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f5995c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, Object> f5996d;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, Object> f5998f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5999g;

    /* renamed from: e  reason: collision with root package name */
    private final Object f5997e = new Object();
    private final AtomicReference<Integer> i = new AtomicReference<>();

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f6005a;

        /* renamed from: b  reason: collision with root package name */
        public String f6006b = "";

        /* renamed from: c  reason: collision with root package name */
        public d f6007c = d.NOT_SET;
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f6008a;

        /* renamed from: b  reason: collision with root package name */
        public final int f6009b;

        public b(String str, int i) {
            this.f6008a = str;
            this.f6009b = i;
        }
    }

    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public int f6010a = -1;

        /* renamed from: b  reason: collision with root package name */
        public int f6011b = -1;
    }

    /* loaded from: classes.dex */
    public enum d {
        NOT_SET("dnt_not_set"),
        ON("dnt_on"),
        OFF("dnt_off");
        

        /* renamed from: d  reason: collision with root package name */
        private final String f6016d;

        d(String str) {
            this.f6016d = str;
        }

        public String a() {
            return this.f6016d;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public o(n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f5993a = nVar;
        this.f5994b = nVar.D();
        this.f5995c = nVar.P();
        this.f5996d = q();
        this.f5998f = s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Integer A() {
        AudioManager audioManager = (AudioManager) this.f5995c.getSystemService("audio");
        if (audioManager != null) {
            return Integer.valueOf((int) (audioManager.getStreamVolume(3) * ((Float) this.f5993a.a(com.applovin.impl.sdk.c.b.dU)).floatValue()));
        }
        return null;
    }

    private double B() {
        return Math.round((TimeZone.getDefault().getOffset(new Date().getTime()) * 10.0d) / 3600000.0d) / 10.0d;
    }

    private boolean C() {
        SensorManager sensorManager = (SensorManager) this.f5995c.getSystemService("sensor");
        return (sensorManager == null || sensorManager.getDefaultSensor(4) == null) ? false : true;
    }

    private String D() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f5995c.getSystemService("phone");
        return telephonyManager != null ? telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH) : "";
    }

    private String E() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f5995c.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                return networkOperator.substring(0, Math.min(3, networkOperator.length()));
            } catch (Throwable th) {
                if (v.a()) {
                    this.f5994b.b("DataCollector", "Unable to collect mobile country code", th);
                    return "";
                }
                return "";
            }
        }
        return "";
    }

    private String F() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f5995c.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                String networkOperator = telephonyManager.getNetworkOperator();
                return networkOperator.substring(Math.min(3, networkOperator.length()));
            } catch (Throwable th) {
                if (v.a()) {
                    this.f5994b.b("DataCollector", "Unable to collect mobile network code", th);
                    return "";
                }
                return "";
            }
        }
        return "";
    }

    private String G() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f5995c.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                return telephonyManager.getNetworkOperatorName();
            } catch (Throwable th) {
                if (v.a()) {
                    this.f5994b.b("DataCollector", "Unable to collect carrier", th);
                    return "";
                }
                return "";
            }
        }
        return "";
    }

    private boolean H() {
        try {
            if (!I()) {
                if (!J()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean I() {
        String str = Build.TAGS;
        return str != null && str.contains(b("lz}$blpz"));
    }

    private boolean J() {
        String[] strArr = {"&zpz}ld&hyy&Z|yl{|zl{'hyb", "&zk`g&z|", "&zpz}ld&k`g&z|", "&zpz}ld&qk`g&z|", "&mh}h&efjhe&qk`g&z|", "&mh}h&efjhe&k`g&z|", "&zpz}ld&zm&qk`g&z|", "&zpz}ld&k`g&oh`ezhol&z|", "&mh}h&efjhe&z|"};
        for (int i = 0; i < 9; i++) {
            if (new File(b(strArr[i])).exists()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(46:1|(45:3|(1:5)(2:108|(1:110))|6|(1:8)|9|(1:12)|13|(1:15)|16|(1:18)|19|(1:21)|22|(1:24)|25|(1:27)|28|(1:30)|(1:32)(1:107)|(1:34)|35|36|37|(2:41|(1:43))|44|(2:95|96)|46|(2:48|(2:50|51))|57|(1:63)|64|(2:66|(1:68))|69|(1:71)|72|(1:76)|77|(1:81)|82|(1:86)|87|(1:89)|90|(1:92)|93)|111|6|(0)|9|(1:12)|13|(0)|16|(0)|19|(0)|22|(0)|25|(0)|28|(0)|(0)(0)|(0)|35|36|37|(3:39|41|(0))|44|(0)|46|(0)|57|(3:59|61|63)|64|(0)|69|(0)|72|(2:74|76)|77|(2:79|81)|82|(2:84|86)|87|(0)|90|(0)|93) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x017c, code lost:
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0181, code lost:
        if (com.applovin.impl.sdk.v.a() != false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0183, code lost:
        r9.f5994b.b("DataCollector", "Unable to collect screen brightness", r11);
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<java.lang.String, java.lang.Object> a(java.util.Map<java.lang.String, java.lang.Object> r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 962
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.o.a(java.util.Map, boolean):java.util.Map");
    }

    public static void a(final Context context) {
        new Thread(new Runnable() { // from class: com.applovin.impl.sdk.o.1
            @Override // java.lang.Runnable
            public void run() {
                o.f5992h.set(com.applovin.impl.sdk.utils.d.a(context));
            }
        }).start();
    }

    private void a(Map<String, Object> map) {
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dP)).booleanValue() && !map.containsKey("af")) {
            map.put("af", Long.valueOf(w()));
        }
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dQ)).booleanValue() && !map.containsKey("font")) {
            map.put("font", Float.valueOf(x()));
        }
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dW)).booleanValue() && Utils.isUserAgentCollectionEnabled(this.f5993a)) {
            aa.b(this.f5993a);
        }
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dV)).booleanValue() && !map.containsKey("sua")) {
            map.put("sua", System.getProperty("http.agent"));
        }
        if (!((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dS)).booleanValue() || map.containsKey("network_restricted")) {
            return;
        }
        map.put("network_restricted", Boolean.valueOf(u()));
    }

    private boolean a(String str) {
        try {
            return Settings.Secure.getInt(this.f5995c.getContentResolver(), str) == 1;
        } catch (Throwable unused) {
            return false;
        }
    }

    private String b(String str) {
        int length = str.length();
        int[] iArr = {11, 12, 10, 3, 2, 1, 15, 10, 15, 14};
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = str.charAt(i);
            for (int i2 = 9; i2 >= 0; i2--) {
                cArr[i] = (char) (cArr[i] ^ iArr[i2]);
            }
        }
        return new String(cArr);
    }

    public static void b(final Context context) {
        if (Utils.checkClassExistence("com.google.android.gms.appset.AppSet")) {
            new Thread(new Runnable() { // from class: com.applovin.impl.sdk.o.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(new OnSuccessListener<AppSetIdInfo>() { // from class: com.applovin.impl.sdk.o.2.1
                            @Override // com.google.android.gms.tasks.OnSuccessListener
                            /* renamed from: a */
                            public void onSuccess(AppSetIdInfo appSetIdInfo) {
                                o.j.set(new b(appSetIdInfo.getId(), appSetIdInfo.getScope()));
                            }
                        });
                    } catch (Throwable unused) {
                        v.f("DataCollector", "Could not collect AppSet ID.");
                    }
                }
            }).start();
        } else {
            v.f("DataCollector", "Could not collect AppSet ID.");
        }
    }

    private Map<String, String> p() {
        return Utils.stringifyObjectMap(a(null, true, false));
    }

    private Map<String, Object> q() {
        Map<String, Object> map = CollectionUtils.map(32);
        map.put("api_level", Integer.valueOf(Build.VERSION.SDK_INT));
        map.put("brand", Build.MANUFACTURER);
        map.put("brand_name", Build.BRAND);
        map.put("hardware", Build.HARDWARE);
        map.put("sim", Boolean.valueOf(AppLovinSdkUtils.isEmulator()));
        map.put("aida", Boolean.valueOf(com.applovin.impl.sdk.utils.d.a()));
        map.put("locale", Locale.getDefault().toString());
        map.put("model", Build.MODEL);
        map.put("os", Build.VERSION.RELEASE);
        map.put("platform", f());
        map.put("revision", Build.DEVICE);
        map.put("tz_offset", Double.valueOf(B()));
        map.put("gy", Boolean.valueOf(C()));
        map.put("country_code", D());
        map.put("mcc", E());
        map.put("mnc", F());
        map.put("carrier", G());
        map.put("is_tablet", Boolean.valueOf(AppLovinSdkUtils.isTablet(this.f5995c)));
        map.put("tv", Boolean.valueOf(AppLovinSdkUtils.isTv(this.f5995c)));
        DisplayMetrics displayMetrics = this.f5995c.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            map.put("adns", Float.valueOf(displayMetrics.density));
            map.put("adnsd", Integer.valueOf(displayMetrics.densityDpi));
            map.put("xdpi", Float.valueOf(displayMetrics.xdpi));
            map.put("ydpi", Float.valueOf(displayMetrics.ydpi));
            Point a2 = com.applovin.impl.sdk.utils.h.a(this.f5995c);
            map.put("screen_size_in", Double.valueOf(Math.sqrt(Math.pow(a2.x, 2.0d) + Math.pow(a2.y, 2.0d)) / displayMetrics.xdpi));
        }
        map.put("bt_ms", Long.valueOf(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
        a(map);
        return map;
    }

    private String r() {
        int orientation = AppLovinSdkUtils.getOrientation(this.f5995c);
        return orientation == 1 ? "portrait" : orientation == 2 ? "landscape" : "none";
    }

    private Map<String, Object> s() {
        PackageInfo packageInfo;
        Map<String, Object> map = CollectionUtils.map();
        PackageManager packageManager = this.f5995c.getPackageManager();
        ApplicationInfo applicationInfo = this.f5995c.getApplicationInfo();
        long lastModified = new File(applicationInfo.sourceDir).lastModified();
        String str = null;
        try {
            packageInfo = packageManager.getPackageInfo(this.f5995c.getPackageName(), 0);
            try {
                str = packageManager.getInstallerPackageName(applicationInfo.packageName);
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            packageInfo = null;
        }
        map.put("app_name", packageManager.getApplicationLabel(applicationInfo));
        map.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        map.put("app_version_code", Integer.valueOf(packageInfo != null ? packageInfo.versionCode : -1));
        map.put("package_name", applicationInfo.packageName);
        map.put("vz", StringUtils.toShortSHA1Hash(applicationInfo.packageName));
        if (str == null) {
            str = "";
        }
        map.put("installer_name", str);
        map.put("tg", com.applovin.impl.sdk.utils.q.a(this.f5993a));
        map.put(Constants.DEBUG_INTERSTITIAL, Boolean.valueOf(Utils.isPubInDebugMode(this.f5993a.P(), this.f5993a)));
        map.put("ia", Long.valueOf(lastModified));
        map.put("alts_ms", Long.valueOf(n.A()));
        map.put("j8", Boolean.valueOf(n.B()));
        Long l = (Long) this.f5993a.a(com.applovin.impl.sdk.c.d.f5611d);
        if (l != null) {
            map.put("ia_v2", l);
        } else {
            this.f5993a.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<Long>>) com.applovin.impl.sdk.c.d.f5611d, (com.applovin.impl.sdk.c.d<Long>) Long.valueOf(lastModified));
        }
        map.put("sdk_version", AppLovinSdk.VERSION);
        map.put("omid_sdk_version", this.f5993a.ao().c());
        map.put("api_did", this.f5993a.a(com.applovin.impl.sdk.c.b.aa));
        map.put("first_install_v3_ms", packageInfo != null ? Long.valueOf(packageInfo.firstInstallTime) : "");
        map.put("target_sdk", Integer.valueOf(applicationInfo.targetSdkVersion));
        map.put("epv", Integer.valueOf(Utils.getExoPlayerVersionCode()));
        return map;
    }

    private Map<String, Object> t() {
        Map<String, Object> map = CollectionUtils.map();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f5995c);
        String str = (String) this.f5993a.b(com.applovin.impl.sdk.c.d.n, null, defaultSharedPreferences);
        if (StringUtils.isValidString(str)) {
            map.put("IABTCF_TCString", str);
        }
        String a2 = com.applovin.impl.sdk.c.d.o.a();
        if (defaultSharedPreferences.contains(a2)) {
            String str2 = (String) com.applovin.impl.sdk.c.e.a(a2, "", String.class, defaultSharedPreferences);
            Integer num = (Integer) com.applovin.impl.sdk.c.e.a(a2, Integer.MAX_VALUE, Integer.class, defaultSharedPreferences);
            Long l = (Long) com.applovin.impl.sdk.c.e.a(a2, Long.MAX_VALUE, Long.class, defaultSharedPreferences);
            Boolean bool = (Boolean) com.applovin.impl.sdk.c.e.a(a2, false, Boolean.class, defaultSharedPreferences);
            if (StringUtils.isValidString(str2)) {
                map.put("IABTCF_gdprApplies", str2);
            } else if (num != null && num.intValue() != Integer.MAX_VALUE) {
                map.put("IABTCF_gdprApplies", num);
            } else if (l == null || l.longValue() == Long.MAX_VALUE) {
                map.put("IABTCF_gdprApplies", bool);
            } else {
                map.put("IABTCF_gdprApplies", l);
            }
        }
        return map;
    }

    private boolean u() {
        ConnectivityManager connectivityManager;
        if (com.applovin.impl.sdk.utils.h.f() && (connectivityManager = (ConnectivityManager) this.f5995c.getSystemService("connectivity")) != null) {
            try {
                return connectivityManager.getRestrictBackgroundStatus() == 3;
            } catch (Throwable th) {
                this.f5993a.D();
                if (v.a()) {
                    this.f5993a.D().b("DataCollector", "Unable to collect constrained network info.", th);
                }
            }
        }
        return false;
    }

    private c v() {
        c cVar = new c();
        Intent registerReceiver = this.f5995c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = registerReceiver != null ? registerReceiver.getIntExtra("level", -1) : -1;
        int intExtra2 = registerReceiver != null ? registerReceiver.getIntExtra("scale", -1) : -1;
        if (intExtra <= 0 || intExtra2 <= 0) {
            cVar.f6011b = -1;
        } else {
            cVar.f6011b = (int) ((intExtra / intExtra2) * 100.0f);
        }
        cVar.f6010a = registerReceiver != null ? registerReceiver.getIntExtra("status", -1) : -1;
        return cVar;
    }

    private long w() {
        List asList = Arrays.asList(StringUtils.emptyIfNull(Settings.Secure.getString(this.f5995c.getContentResolver(), "enabled_accessibility_services")).split(":"));
        long j2 = asList.contains("AccessibilityMenuService") ? 256L : 0L;
        if (asList.contains("SelectToSpeakService")) {
            j2 |= 512;
        }
        if (asList.contains("SoundAmplifierService")) {
            j2 |= 2;
        }
        if (asList.contains("SpeechToTextAccessibilityService")) {
            j2 |= 128;
        }
        if (asList.contains("SwitchAccessService")) {
            j2 |= 4;
        }
        if ((this.f5995c.getResources().getConfiguration().uiMode & 48) == 32) {
            j2 |= 1024;
        }
        if (a("accessibility_enabled")) {
            j2 |= 8;
        }
        if (a("touch_exploration_enabled")) {
            j2 |= 16;
        }
        if (com.applovin.impl.sdk.utils.h.d()) {
            if (a("accessibility_display_inversion_enabled")) {
                j2 |= 32;
            }
            if (a("skip_first_use_hints")) {
                j2 |= 64;
            }
        }
        if (a("lock_screen_allow_remote_input")) {
            j2 |= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH;
        }
        if (a("enabled_accessibility_audio_description_by_default")) {
            j2 |= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        }
        if (a("accessibility_shortcut_on_lock_screen")) {
            j2 |= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
        }
        if (a("wear_talkback_enabled")) {
            j2 |= PlaybackStateCompat.ACTION_PREPARE;
        }
        if (a("hush_gesture_used")) {
            j2 |= PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
        }
        if (a("high_text_contrast_enabled")) {
            j2 |= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
        }
        if (a("accessibility_display_magnification_enabled")) {
            j2 |= PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        }
        if (a("accessibility_display_magnification_navbar_enabled")) {
            j2 |= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
        }
        if (a("accessibility_captioning_enabled")) {
            j2 |= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
        }
        if (a("accessibility_display_daltonizer_enabled")) {
            j2 |= 1048576;
        }
        if (a("accessibility_autoclick_enabled")) {
            j2 |= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
        }
        if (a("accessibility_large_pointer_icon")) {
            j2 |= PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED;
        }
        if (a("reduce_bright_colors_activated")) {
            j2 |= 8388608;
        }
        if (a("reduce_bright_colors_persist_across_reboots")) {
            j2 |= 16777216;
        }
        if (a("tty_mode_enabled")) {
            j2 |= 33554432;
        }
        return a("rtt_calling_mode") ? j2 | 67108864 : j2;
    }

    private float x() {
        try {
            return Settings.System.getFloat(this.f5995c.getContentResolver(), "font_scale");
        } catch (Settings.SettingNotFoundException e2) {
            if (v.a()) {
                this.f5994b.b("DataCollector", "Error collecting font scale", e2);
                return -1.0f;
            }
            return -1.0f;
        }
    }

    private String y() {
        AudioManager audioManager = (AudioManager) this.f5995c.getSystemService("audio");
        if (audioManager != null) {
            StringBuilder sb = new StringBuilder();
            if (com.applovin.impl.sdk.utils.h.e()) {
                for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                    sb.append(audioDeviceInfo.getType());
                    sb.append(",");
                }
            } else {
                if (audioManager.isWiredHeadsetOn()) {
                    sb.append("3,");
                }
                if (audioManager.isBluetoothScoOn()) {
                    sb.append("7,");
                }
                if (audioManager.isBluetoothA2dpOn()) {
                    sb.append(8);
                }
            }
            if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
                sb.deleteCharAt(sb.length() - 1);
            }
            String sb2 = sb.toString();
            if (TextUtils.isEmpty(sb2) && v.a()) {
                this.f5994b.b("DataCollector", "No sound outputs detected");
            }
            return sb2;
        }
        return null;
    }

    private String z() {
        if (com.applovin.impl.sdk.utils.h.f()) {
            try {
                StringBuilder sb = new StringBuilder();
                LocaleList locales = this.f5995c.getResources().getConfiguration().getLocales();
                for (int i = 0; i < locales.size(); i++) {
                    sb.append(locales.get(i));
                    sb.append(",");
                }
                if (sb.length() > 0 && sb.charAt(sb.length() - 1) == ',') {
                    sb.deleteCharAt(sb.length() - 1);
                }
                return sb.toString();
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        String encodeToString = Base64.encodeToString(new JSONObject(p()).toString().getBytes(Charset.defaultCharset()), 2);
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.eB)).booleanValue()) {
            return com.applovin.impl.sdk.utils.n.a(encodeToString, this.f5993a.C(), Utils.getServerAdjustedUnixTimestampMillis(this.f5993a));
        }
        return encodeToString;
    }

    public Map<String, Object> a(Map<String, String> map, boolean z, boolean z2) {
        Map<String, Object> map2 = CollectionUtils.map(64);
        Map<String, Object> a2 = a(z);
        Map<String, Object> h2 = h();
        Map<String, Object> j2 = j();
        Map<String, String> allData = this.f5993a.s().getAllData();
        if (z2) {
            map2.put("device_info", a2);
            map2.put("app_info", h2);
            if (map != null) {
                map2.put("ad_info", map);
            }
            if (j2 != null) {
                map2.put("location_info", j2);
            }
            if (!allData.isEmpty()) {
                map2.put("targeting_data", allData);
            }
        } else {
            map2.putAll(a2);
            map2.putAll(h2);
            if (map != null) {
                map2.putAll(map);
            }
            if (j2 != null) {
                map2.putAll(j2);
            }
            if (!allData.isEmpty()) {
                map2.putAll(allData);
            }
        }
        map2.put("accept", "custom_size,launch_app,video");
        map2.put("format", "json");
        Utils.putObjectForStringIfValid("mediation_provider", this.f5993a.u(), map2);
        Utils.putObjectForStringIfValid("plugin_version", (String) this.f5993a.a(com.applovin.impl.sdk.c.b.dI), map2);
        if (!((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.eA)).booleanValue()) {
            map2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5993a.C());
        }
        map2.putAll(i());
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.ei)).booleanValue()) {
            com.applovin.impl.sdk.d.g W = this.f5993a.W();
            map2.put("li", Long.valueOf(W.b(com.applovin.impl.sdk.d.f.f5654b)));
            map2.put("si", Long.valueOf(W.b(com.applovin.impl.sdk.d.f.f5657e)));
            map2.put("mad", Long.valueOf(W.b(com.applovin.impl.sdk.d.f.f5655c)));
            map2.put("msad", Long.valueOf(W.b(com.applovin.impl.sdk.d.f.f5658f)));
            map2.put("pf", Long.valueOf(W.b(com.applovin.impl.sdk.d.f.j)));
            map2.put("mpf", Long.valueOf(W.b(com.applovin.impl.sdk.d.f.q)));
            map2.put("gpf", Long.valueOf(W.b(com.applovin.impl.sdk.d.f.k)));
            map2.put("asoac", Long.valueOf(W.b(com.applovin.impl.sdk.d.f.o)));
        }
        map2.put("rid", UUID.randomUUID().toString());
        return map2;
    }

    public Map<String, Object> a(boolean z) {
        Map<String, Object> map;
        synchronized (this.f5997e) {
            map = CollectionUtils.map(this.f5996d);
        }
        return a(map, z);
    }

    public Map<String, Object> b() {
        return CollectionUtils.map(this.f5996d);
    }

    public Map<String, Object> c() {
        return CollectionUtils.map(this.f5998f);
    }

    public Map<String, Object> d() {
        return a(false);
    }

    public void e() {
        synchronized (this.f5997e) {
            a(this.f5996d);
        }
    }

    public String f() {
        return AppLovinSdkUtils.isFireOS(this.f5995c) ? "fireos" : MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID;
    }

    public boolean g() {
        return this.f5999g;
    }

    public Map<String, Object> h() {
        Map<String, Object> map = CollectionUtils.map(this.f5998f);
        map.put("first_install", Boolean.valueOf(this.f5993a.S()));
        map.put("first_install_v2", Boolean.valueOf(!this.f5993a.T()));
        map.put("test_ads", Boolean.valueOf(this.f5999g));
        map.put("muted", Boolean.valueOf(this.f5993a.q().isMuted()));
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dy)).booleanValue()) {
            Utils.putObjectForStringIfValid("cuid", this.f5993a.n(), map);
        }
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dB)).booleanValue()) {
            map.put("compass_random_token", this.f5993a.o());
        }
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dD)).booleanValue()) {
            map.put("applovin_random_token", this.f5993a.p());
        }
        String name = this.f5993a.r().getName();
        if (StringUtils.isValidString(name)) {
            map.put("user_segment_name", name);
        }
        map.putAll(t());
        return map;
    }

    public Map<String, Object> i() {
        Map<String, Object> map = CollectionUtils.map();
        map.put("sc", this.f5993a.a(com.applovin.impl.sdk.c.b.af));
        map.put("sc2", this.f5993a.a(com.applovin.impl.sdk.c.b.ag));
        map.put("sc3", this.f5993a.a(com.applovin.impl.sdk.c.b.ah));
        map.put("server_installed_at", this.f5993a.a(com.applovin.impl.sdk.c.b.ai));
        Utils.putObjectForStringIfValid("persisted_data", (String) this.f5993a.a(com.applovin.impl.sdk.c.d.z), map);
        return map;
    }

    public Map<String, Object> j() {
        if (this.f5993a.q().isLocationCollectionEnabled() && ((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.ef)).booleanValue()) {
            Map<String, Object> map = CollectionUtils.map();
            u ap = this.f5993a.ap();
            boolean b2 = ap.b();
            map.put("loc_services_enabled", Boolean.valueOf(b2));
            if (b2) {
                map.put("loc_auth", Boolean.valueOf(ap.a()));
                if (ap.c()) {
                    map.put("loc_lat", Utils.formatDoubleValue(ap.d(), ((Integer) this.f5993a.a(com.applovin.impl.sdk.c.b.eh)).intValue()));
                    map.put("loc_long", Utils.formatDoubleValue(ap.e(), ((Integer) this.f5993a.a(com.applovin.impl.sdk.c.b.eh)).intValue()));
                }
                return map;
            }
            return map;
        }
        return null;
    }

    public a k() {
        List<String> testDeviceAdvertisingIds;
        a a2 = com.applovin.impl.sdk.utils.d.a(this.f5995c);
        if (a2 == null) {
            return new a();
        }
        if (((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dw)).booleanValue()) {
            if (a2.f6005a && !((Boolean) this.f5993a.a(com.applovin.impl.sdk.c.b.dv)).booleanValue()) {
                a2.f6006b = "";
            }
            f5992h.set(a2);
        } else {
            a2 = new a();
        }
        boolean z = false;
        if (StringUtils.isValidString(a2.f6006b) && (testDeviceAdvertisingIds = this.f5993a.q().getTestDeviceAdvertisingIds()) != null && testDeviceAdvertisingIds.contains(a2.f6006b)) {
            z = true;
        }
        this.f5999g = z;
        return a2;
    }

    public b l() {
        return j.get();
    }

    public void m() {
        this.f5993a.V().a(new com.applovin.impl.sdk.e.f(this.f5993a, new f.a() { // from class: com.applovin.impl.sdk.o.3
            @Override // com.applovin.impl.sdk.e.f.a
            public void a(a aVar) {
                o.f5992h.set(aVar);
            }
        }), o.a.ADVERTISING_INFO_COLLECTION);
        this.f5993a.V().a(new com.applovin.impl.sdk.e.z(this.f5993a, true, new Runnable() { // from class: com.applovin.impl.sdk.o.4
            @Override // java.lang.Runnable
            public void run() {
                o.this.i.set(o.this.A());
            }
        }), o.a.CACHING_OTHER);
    }
}
