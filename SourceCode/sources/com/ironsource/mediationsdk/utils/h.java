package com.ironsource.mediationsdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.amazon.aps.shared.APSAnalytics;
import com.appodeal.ads.modules.common.internal.Constants;
import com.ironsource.environment.a;
import com.ironsource.mediationsdk.H;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public final class h implements Runnable {
    private Context E;

    /* renamed from: a  reason: collision with root package name */
    private final String f11425a = getClass().getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final String f11426b = "bundleId";

    /* renamed from: c  reason: collision with root package name */
    private final String f11427c = "advertisingId";

    /* renamed from: d  reason: collision with root package name */
    private final String f11428d = "isLimitAdTrackingEnabled";

    /* renamed from: e  reason: collision with root package name */
    private final String f11429e = Constants.APP_KEY;

    /* renamed from: f  reason: collision with root package name */
    private final String f11430f = "deviceOS";

    /* renamed from: g  reason: collision with root package name */
    private final String f11431g = "osVersion";

    /* renamed from: h  reason: collision with root package name */
    private final String f11432h = "connectionType";
    private final String i = "language";
    private final String j = "deviceOEM";
    private final String k = "deviceModel";
    private final String l = "mobileCarrier";
    private final String m = "externalFreeMemory";
    private final String n = "internalFreeMemory";
    private final String o = "battery";
    private final String p = "gmtMinutesOffset";
    private final String q = "appVersion";
    private final String r = "sessionId";
    private final String s = "pluginType";
    private final String t = "pluginVersion";
    private final String u = "plugin_fw_v";
    private final String v = "jb";
    private final String w = "advertisingIdType";
    private final String x = "mt";
    private final String y = "firstSession";
    private final String z = "mcc";
    private final String A = "mnc";
    private final String B = "icc";
    private final String C = "tz";
    private final String D = "auid";

    private h() {
    }

    public h(Context context) {
        this.E = context.getApplicationContext();
    }

    private static String a() {
        try {
            return ConfigFile.getConfigFile().getPluginType();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginType()", e2);
            return "";
        }
    }

    private static String b() {
        try {
            return ConfigFile.getConfigFile().getPluginVersion();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginVersion()", e2);
            return "";
        }
    }

    private static String c() {
        try {
            return ConfigFile.getConfigFile().getPluginFrameworkVersion();
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginFrameworkVersion()", e2);
            return "";
        }
    }

    private String d() {
        try {
            return this.E.getPackageName();
        } catch (Exception unused) {
            return "";
        }
    }

    private static String e() {
        try {
            return Build.VERSION.SDK_INT + "(" + Build.VERSION.RELEASE + ")";
        } catch (Exception unused) {
            return "";
        }
    }

    private static String f() {
        try {
            return Locale.getDefault().getLanguage();
        } catch (Exception unused) {
            return "";
        }
    }

    private static String g() {
        try {
            return Build.MANUFACTURER;
        } catch (Exception unused) {
            return "";
        }
    }

    private static String h() {
        try {
            return Build.MODEL;
        } catch (Exception unused) {
            return "";
        }
    }

    private String i() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.E.getSystemService("phone");
            if (telephonyManager != null) {
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                return !networkOperatorName.equals("") ? networkOperatorName : "";
            }
            return "";
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.f11425a + ":getMobileCarrier()", e2);
            return "";
        }
    }

    private static boolean j() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Exception unused) {
            return false;
        }
    }

    private static long k() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return (statFs.getAvailableBlocks() * statFs.getBlockSize()) / 1048576;
        } catch (Exception unused) {
            return -1L;
        }
    }

    private int l() {
        try {
            Intent registerReceiver = this.E.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = registerReceiver != null ? registerReceiver.getIntExtra("level", -1) : 0;
            int intExtra2 = registerReceiver != null ? registerReceiver.getIntExtra("scale", -1) : 0;
            if (intExtra == -1 || intExtra2 == -1) {
                return -1;
            }
            return (int) ((intExtra / intExtra2) * 100.0f);
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.f11425a + ":getBatteryLevel()", e2);
            return -1;
        }
    }

    private int m() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            return Math.round(((timeZone.getOffset(GregorianCalendar.getInstance(timeZone).getTimeInMillis()) / 1000) / 60) / 15) * 15;
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.f11425a + ":getGmtMinutesOffset()", e2);
            return 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        String str;
        long j;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("sessionId", IronSourceUtils.getSessionId());
            String d2 = d();
            if (!TextUtils.isEmpty(d2)) {
                hashMap.put("bundleId", d2);
                String c2 = com.ironsource.environment.c.c(this.E, d2);
                if (!TextUtils.isEmpty(c2)) {
                    hashMap.put("appVersion", c2);
                }
            }
            hashMap.put(Constants.APP_KEY, H.a().j);
            String[] C = com.ironsource.environment.h.C(this.E);
            String str2 = "";
            if (C == null || C.length != 2) {
                z = false;
                str = "";
            } else {
                str = !TextUtils.isEmpty(C[0]) ? C[0] : "";
                z = Boolean.valueOf(C[1]).booleanValue();
            }
            if (TextUtils.isEmpty(str)) {
                str = com.ironsource.environment.h.x(this.E);
                if (!TextUtils.isEmpty(str)) {
                    str2 = IronSourceConstants.TYPE_UUID;
                }
            } else {
                str2 = IronSourceConstants.TYPE_GAID;
            }
            if (!TextUtils.isEmpty(str)) {
                hashMap.put("advertisingId", str);
                hashMap.put("advertisingIdType", str2);
                hashMap.put("isLimitAdTrackingEnabled", Boolean.valueOf(z));
            }
            hashMap.put("deviceOS", APSAnalytics.OS_NAME);
            if (!TextUtils.isEmpty(e())) {
                hashMap.put("osVersion", e());
            }
            String connectionType = IronSourceUtils.getConnectionType(this.E);
            if (!TextUtils.isEmpty(connectionType)) {
                hashMap.put("connectionType", connectionType);
            }
            hashMap.put("sdkVersion", IronSourceUtils.getSDKVersion());
            String f2 = f();
            if (!TextUtils.isEmpty(f2)) {
                hashMap.put("language", f2);
            }
            String g2 = g();
            if (!TextUtils.isEmpty(g2)) {
                hashMap.put("deviceOEM", g2);
            }
            String h2 = h();
            if (!TextUtils.isEmpty(h2)) {
                hashMap.put("deviceModel", h2);
            }
            String i = i();
            if (!TextUtils.isEmpty(i)) {
                hashMap.put("mobileCarrier", i);
            }
            hashMap.put("internalFreeMemory", Long.valueOf(k()));
            if (j()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                j = (statFs.getAvailableBlocks() * statFs.getBlockSize()) / 1048576;
            } else {
                j = -1;
            }
            hashMap.put("externalFreeMemory", Long.valueOf(j));
            hashMap.put("battery", Integer.valueOf(l()));
            int m = m();
            if (m <= 840 && m >= -720 && m % 15 == 0) {
                hashMap.put("gmtMinutesOffset", Integer.valueOf(m));
            }
            String a2 = a();
            if (!TextUtils.isEmpty(a2)) {
                hashMap.put("pluginType", a2);
            }
            String b2 = b();
            if (!TextUtils.isEmpty(b2)) {
                hashMap.put("pluginVersion", b2);
            }
            String c3 = c();
            if (!TextUtils.isEmpty(c3)) {
                hashMap.put("plugin_fw_v", c3);
            }
            String valueOf = String.valueOf(com.ironsource.environment.h.j());
            if (!TextUtils.isEmpty(valueOf)) {
                hashMap.put("jb", valueOf);
            }
            String str3 = H.a().o;
            if (!TextUtils.isEmpty(str3)) {
                hashMap.put("mt", str3);
            }
            String valueOf2 = String.valueOf(IronSourceUtils.getFirstSession(this.E));
            if (!TextUtils.isEmpty(valueOf2)) {
                hashMap.put("firstSession", valueOf2);
            }
            String y = com.ironsource.environment.h.y(this.E);
            if (!TextUtils.isEmpty(y)) {
                hashMap.put("auid", y);
            }
            hashMap.put("mcc", Integer.valueOf(a.AnonymousClass1.c(this.E)));
            hashMap.put("mnc", Integer.valueOf(a.AnonymousClass1.d(this.E)));
            String j2 = com.ironsource.environment.h.j(this.E);
            if (!TextUtils.isEmpty(j2)) {
                hashMap.put("icc", j2);
            }
            String c4 = com.ironsource.environment.h.c();
            if (!TextUtils.isEmpty(c4)) {
                hashMap.put("tz", c4);
            }
            IronLog.INTERNAL.verbose("collecting data for events: " + hashMap);
            com.ironsource.mediationsdk.sdk.e.a().a(hashMap);
            IronSourceUtils.saveGeneralProperties(this.E, com.ironsource.mediationsdk.sdk.e.a().b());
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "Thread name = " + getClass().getSimpleName(), e2);
        }
    }
}
