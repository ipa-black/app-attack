package com.adcolony.sdk;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.provider.Settings;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.adcolony.sdk.e0;
import com.appodeal.advertising.AdvertisingInfo;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import io.bidmachine.ads.networks.adcolony.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q {

    /* renamed from: d  reason: collision with root package name */
    private boolean f489d;

    /* renamed from: a  reason: collision with root package name */
    private final f f486a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final f f487b = new f();

    /* renamed from: c  reason: collision with root package name */
    private String f488c = "";

    /* renamed from: e  reason: collision with root package name */
    private String f490e = "";

    /* renamed from: f  reason: collision with root package name */
    private f1 f491f = c0.b();

    /* renamed from: g  reason: collision with root package name */
    private String f492g = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {

        /* renamed from: com.adcolony.sdk.q$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0011a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f493a;

            /* renamed from: com.adcolony.sdk.q$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            class RunnableC0012a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ f1 f494a;

                RunnableC0012a(f1 f1Var) {
                    this.f494a = f1Var;
                }

                @Override // java.lang.Runnable
                public void run() {
                    RunnableC0011a.this.f493a.a(this.f494a).c();
                }
            }

            RunnableC0011a(a aVar, h0 h0Var) {
                this.f493a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                z0.b(new RunnableC0012a(com.adcolony.sdk.a.b().n().c(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS)));
            }
        }

        a(q qVar) {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (z0.a(new RunnableC0011a(this, h0Var))) {
                return;
            }
            new e0.a().a("Error retrieving device info, disabling AdColony.").a(e0.i);
            AdColony.disable();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Callable<f1> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f496a;

        b(long j) {
            this.f496a = j;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: b */
        public f1 call() {
            if (!q.this.N() && this.f496a > 0) {
                q.this.f486a.a(this.f496a);
            }
            return q.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f498a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ y f499b;

        c(Context context, y yVar) {
            this.f498a = context;
            this.f499b = yVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            boolean z;
            if (com.adcolony.sdk.a.f128e) {
                str = AdvertisingInfo.defaultAdvertisingId;
                z = true;
            } else {
                str = null;
                z = false;
                try {
                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f498a);
                    str = advertisingIdInfo.getId();
                    z = advertisingIdInfo.isLimitAdTrackingEnabled();
                } catch (Exception e2) {
                    new e0.a().a("Query Advertising ID failed with: ").a(Log.getStackTraceString(e2)).a(e0.f296g);
                } catch (NoClassDefFoundError unused) {
                    new e0.a().a("Google Play Services Ads dependencies are missing.").a(e0.f295f);
                } catch (NoSuchMethodError unused2) {
                    new e0.a().a("Google Play Services is out of date, please update to GPS 4.0+.").a(e0.f295f);
                }
                if (str == null && Build.MANUFACTURER.equals("Amazon")) {
                    str = q.this.g();
                    z = q.this.h();
                }
            }
            if (str == null) {
                new e0.a().a("Advertising ID is not available. ").a("Collecting Android ID instead of Advertising ID.").a(e0.f295f);
                y yVar = this.f499b;
                if (yVar != null) {
                    yVar.a(new Throwable("Advertising ID is not available."));
                }
            } else {
                q.this.a(str);
                s0 a2 = com.adcolony.sdk.a.b().q().a();
                if (a2 != null) {
                    a2.f533d.put("advertisingId", q.this.f());
                }
                q.this.c(z);
                y yVar2 = this.f499b;
                if (yVar2 != null) {
                    yVar2.a((y) q.this.f());
                }
            }
            q.this.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements Callable<f1> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f501a;

        d(long j) {
            this.f501a = j;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: b */
        public f1 call() {
            if (!q.this.O() && this.f501a > 0) {
                q.this.f487b.a(this.f501a);
            }
            return q.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements OnCompleteListener<AppSetIdInfo> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y f503a;

        e(y yVar) {
            this.f503a = yVar;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public void onComplete(Task<AppSetIdInfo> task) {
            Throwable th;
            if (task.isSuccessful()) {
                q.this.b(task.getResult().getId());
                y yVar = this.f503a;
                if (yVar != null) {
                    yVar.a((y) q.this.k());
                }
            } else {
                if (task.getException() != null) {
                    th = task.getException();
                } else {
                    th = new Throwable("Task failed with unknown exception.");
                }
                new e0.a().a("App Set ID is not available. Unexpected exception occurred: ").a(Log.getStackTraceString(th)).a(e0.f296g);
                y yVar2 = this.f503a;
                if (yVar2 != null) {
                    yVar2.a(th);
                }
            }
            q.this.b(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean A() {
        return this.f489d;
    }

    String B() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String C() {
        return Build.MANUFACTURER;
    }

    int D() {
        ActivityManager activityManager;
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null || (activityManager = (ActivityManager) a2.getSystemService("activity")) == null) {
            return 0;
        }
        return activityManager.getMemoryClass();
    }

    long E() {
        Runtime runtime = Runtime.getRuntime();
        return (runtime.totalMemory() - runtime.freeMemory()) / 1048576;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String F() {
        return Build.MODEL;
    }

    int G() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return 2;
        }
        int i = a2.getResources().getConfiguration().orientation;
        if (i != 1) {
            return i != 2 ? 2 : 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String H() {
        return Build.VERSION.RELEASE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String I() {
        return BuildConfig.ADAPTER_SDK_VERSION_NAME;
    }

    String J() {
        TelephonyManager telephonyManager;
        Context a2 = com.adcolony.sdk.a.a();
        return (a2 == null || (telephonyManager = (TelephonyManager) a2.getSystemService("phone")) == null) ? "" : telephonyManager.getSimCountryIso();
    }

    int K() {
        return TimeZone.getDefault().getOffset(15L) / 60000;
    }

    String L() {
        return TimeZone.getDefault().getID();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M() {
        a(false);
        b(false);
        com.adcolony.sdk.a.a("Device.get_info", new a(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean N() {
        return this.f486a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean O() {
        return this.f487b.a();
    }

    boolean P() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return false;
        }
        DisplayMetrics displayMetrics = a2.getResources().getDisplayMetrics();
        float f2 = displayMetrics.widthPixels / displayMetrics.xdpi;
        float f3 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((double) ((f2 * f2) + (f3 * f3))) >= 6.0d;
    }

    void c(boolean z) {
        this.f489d = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 d() {
        f1 b2 = c0.b();
        k b3 = com.adcolony.sdk.a.b();
        c0.a(b2, "carrier_name", m());
        c0.a(b2, "data_path", b3.z().b());
        c0.b(b2, "device_api", j());
        Rect w = w();
        c0.b(b2, "screen_width", w.width());
        c0.b(b2, "screen_height", w.height());
        c0.b(b2, "display_dpi", v());
        c0.a(b2, OSOutcomeConstants.DEVICE_TYPE, u());
        c0.a(b2, "locale_language_code", y());
        c0.a(b2, "ln", y());
        c0.a(b2, "locale_country_code", p());
        c0.a(b2, "locale", p());
        c0.a(b2, "mac_address", B());
        c0.a(b2, "manufacturer", C());
        c0.a(b2, "device_brand", C());
        c0.a(b2, "media_path", b3.z().c());
        c0.a(b2, "temp_storage_path", b3.z().d());
        c0.b(b2, "memory_class", D());
        c0.b(b2, "memory_used_mb", E());
        c0.a(b2, "model", F());
        c0.a(b2, "device_model", F());
        c0.a(b2, "sdk_type", "android_native");
        c0.a(b2, "sdk_version", I());
        c0.a(b2, "network_type", b3.s().e());
        c0.a(b2, "os_version", H());
        c0.a(b2, "os_name", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
        c0.a(b2, "platform", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
        c0.a(b2, "arch", a());
        c0.a(b2, "user_id", c0.h(b3.u().b(), "user_id"));
        c0.a(b2, OSOutcomeConstants.APP_ID, b3.u().a());
        c0.a(b2, "app_bundle_name", z0.b());
        c0.a(b2, "app_bundle_version", z0.c());
        c0.a(b2, "battery_level", l());
        c0.a(b2, "cell_service_country_code", J());
        c0.a(b2, "timezone_ietf", L());
        c0.b(b2, "timezone_gmt_m", K());
        c0.b(b2, "timezone_dst_m", q());
        c0.a(b2, "launch_metadata", z());
        c0.a(b2, "controller_version", b3.f());
        c0.b(b2, "current_orientation", G());
        c0.b(b2, "cleartext_permitted", n());
        c0.a(b2, "density", s());
        c0.b(b2, "dark_mode", r());
        c0.a(b2, "adc_alt_id", e());
        e1 a2 = c0.a();
        if (z0.c("com.android.vending")) {
            a2.b("google");
        }
        if (z0.c("com.amazon.venezia")) {
            a2.b(io.bidmachine.ads.networks.amazon.BuildConfig.ADAPTER_NAME);
        }
        if (z0.c("com.huawei.appmarket")) {
            a2.b("huawei");
        }
        if (z0.c("com.sec.android.app.samsungapps")) {
            a2.b("samsung");
        }
        c0.a(b2, "available_stores", a2);
        return b2;
    }

    String e() {
        return z0.a(com.adcolony.sdk.a.b().z());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        return this.f488c;
    }

    String g() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return null;
        }
        return Settings.Secure.getString(a2.getContentResolver(), "advertising_id");
    }

    boolean h() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return false;
        }
        try {
            return Settings.Secure.getInt(a2.getContentResolver(), "limit_ad_tracking") != 0;
        } catch (Settings.SettingNotFoundException unused) {
            return false;
        }
    }

    String i() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return "";
        }
        return Settings.Secure.getString(a2.getContentResolver(), "android_id");
    }

    int j() {
        return Build.VERSION.SDK_INT;
    }

    public String k() {
        return this.f490e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double l() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return 0.0d;
        }
        try {
            Intent registerReceiver = a2.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (registerReceiver == null) {
                return 0.0d;
            }
            int intExtra = registerReceiver.getIntExtra("level", -1);
            int intExtra2 = registerReceiver.getIntExtra("scale", -1);
            if (intExtra < 0 || intExtra2 < 0) {
                return 0.0d;
            }
            return intExtra / intExtra2;
        } catch (RuntimeException unused) {
            return 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String m() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return "";
        }
        TelephonyManager telephonyManager = (TelephonyManager) a2.getSystemService("phone");
        String networkOperatorName = telephonyManager != null ? telephonyManager.getNetworkOperatorName() : "";
        return networkOperatorName.length() == 0 ? "unknown" : networkOperatorName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String o() {
        return this.f492g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String p() {
        return Locale.getDefault().getCountry();
    }

    int q() {
        TimeZone timeZone = TimeZone.getDefault();
        if (timeZone.inDaylightTime(new Date())) {
            return timeZone.getDSTSavings() / 60000;
        }
        return 0;
    }

    boolean r() {
        int i;
        Context a2 = com.adcolony.sdk.a.a();
        return a2 != null && Build.VERSION.SDK_INT >= 29 && (i = a2.getResources().getConfiguration().uiMode & 48) != 16 && i == 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float s() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return 0.0f;
        }
        return a2.getResources().getDisplayMetrics().density;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 t() {
        if (!N()) {
            try {
                return z0.b(c0.a(d(), a(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS).call()));
            } catch (Exception unused) {
            }
        }
        return z0.b(c0.a(d(), b()));
    }

    String u() {
        if (P()) {
            return "tablet";
        }
        return "phone";
    }

    int v() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 != null) {
            return a2.getResources().getConfiguration().densityDpi;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect w() {
        Rect rect = new Rect();
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 != null) {
            try {
                WindowManager windowManager = (WindowManager) a2.getSystemService("window");
                if (windowManager != null) {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                    return new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                return rect;
            } catch (RuntimeException unused) {
                return rect;
            }
        }
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect x() {
        Rect rect;
        Rect rect2 = new Rect();
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 != null) {
            try {
                WindowManager windowManager = (WindowManager) a2.getSystemService("window");
                if (windowManager != null) {
                    if (Build.VERSION.SDK_INT < 30) {
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        DisplayMetrics displayMetrics2 = new DisplayMetrics();
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        defaultDisplay.getMetrics(displayMetrics);
                        defaultDisplay.getRealMetrics(displayMetrics2);
                        int f2 = z0.f(a2);
                        int b2 = z0.b(a2);
                        int i = displayMetrics2.heightPixels - displayMetrics.heightPixels;
                        if (i <= 0) {
                            rect = new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels - f2);
                        } else {
                            if (b2 > 0 && (i > f2 || b2 <= f2)) {
                                return new Rect(0, 0, displayMetrics.widthPixels, displayMetrics2.heightPixels - (b2 + f2));
                            }
                            rect = new Rect(0, 0, displayMetrics.widthPixels, displayMetrics2.heightPixels - f2);
                        }
                    } else {
                        WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                        try {
                            Point point = new Point();
                            Point point2 = new Point();
                            a2.getDisplay().getCurrentSizeRange(point, point2);
                            Point point3 = currentWindowMetrics.getBounds().width() > currentWindowMetrics.getBounds().height() ? new Point(point2.x, point.y) : new Point(point.x, point2.y);
                            return new Rect(0, 0, point3.x, point3.y);
                        } catch (UnsupportedOperationException unused) {
                            Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout() | WindowInsets.Type.statusBars());
                            rect = new Rect(0, 0, currentWindowMetrics.getBounds().width() - (insetsIgnoringVisibility.right + insetsIgnoringVisibility.left), currentWindowMetrics.getBounds().height() - (insetsIgnoringVisibility.top + insetsIgnoringVisibility.bottom));
                        }
                    }
                    return rect;
                }
                return rect2;
            } catch (RuntimeException unused2) {
                return rect2;
            }
        }
        return rect2;
    }

    String y() {
        return Locale.getDefault().getLanguage();
    }

    f1 z() {
        return this.f491f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f1 f1Var) {
        this.f491f = f1Var;
    }

    public void b(String str) {
        this.f490e = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        this.f492g = str;
    }

    boolean n() {
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    void a(String str) {
        this.f488c = str;
    }

    void b(boolean z) {
        this.f487b.a(z);
    }

    f1 c(long j) {
        if (j <= 0) {
            return c0.a(d(), b(), c());
        }
        ArrayList arrayList = new ArrayList(Collections.singletonList(d()));
        q0 q0Var = new q0();
        if (N()) {
            arrayList.add(b());
        } else {
            q0Var.a(a(j));
        }
        if (O()) {
            arrayList.add(c());
        } else {
            q0Var.a(b(j));
        }
        if (!q0Var.b()) {
            arrayList.addAll(q0Var.a());
        }
        return c0.a((f1[]) arrayList.toArray(new f1[0]));
    }

    void a(boolean z) {
        this.f486a.a(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 b() {
        f1 b2 = c0.b();
        String f2 = f();
        c0.a(b2, "advertiser_id", f2);
        c0.b(b2, "limit_tracking", A());
        if (f2 == null || f2.isEmpty()) {
            c0.a(b2, "android_id_sha1", z0.b(i()));
        }
        return b2;
    }

    String a() {
        return System.getProperty("os.arch").toLowerCase(Locale.ENGLISH);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Callable<f1> a(long j) {
        return new b(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        a(context, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, y<String> yVar) {
        if (context != null) {
            if (f().isEmpty()) {
                a(false);
            }
            if (z0.a(new c(context, yVar))) {
                return;
            }
            new e0.a().a("Executing Query Advertising ID failed.").a(e0.i);
            if (yVar != null) {
                yVar.a(new Throwable("Query Advertising ID failed on execute."));
            }
        } else if (yVar != null) {
            yVar.a(new Throwable("Context cannot be null."));
        }
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Callable<f1> b(long j) {
        return new d(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Context context) {
        b(context, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void b(android.content.Context r3, com.adcolony.sdk.y<java.lang.String> r4) {
        /*
            r2 = this;
            if (r3 != 0) goto Lf
            if (r4 == 0) goto L80
            java.lang.Throwable r3 = new java.lang.Throwable
            java.lang.String r0 = "Context cannot be null."
            r3.<init>(r0)
            r4.a(r3)
            goto L80
        Lf:
            java.lang.String r0 = r2.k()
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L23
            if (r4 == 0) goto L80
            java.lang.String r3 = r2.k()
            r4.a(r3)
            goto L80
        L23:
            r0 = 0
            r2.b(r0)
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L56
            com.google.android.gms.appset.AppSetIdClient r3 = com.google.android.gms.appset.AppSet.getClient(r3)     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L56
            com.google.android.gms.tasks.Task r3 = r3.getAppSetIdInfo()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L56
            com.adcolony.sdk.q$e r0 = new com.adcolony.sdk.q$e     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L56
            r0.<init>(r4)     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L56
            r3.addOnCompleteListener(r0)     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L56
            return
        L3c:
            r3 = move-exception
            com.adcolony.sdk.e0$a r0 = new com.adcolony.sdk.e0$a
            r0.<init>()
            java.lang.String r1 = "Query App Set ID failed with: "
            com.adcolony.sdk.e0$a r0 = r0.a(r1)
            java.lang.String r3 = android.util.Log.getStackTraceString(r3)
            com.adcolony.sdk.e0$a r3 = r0.a(r3)
            com.adcolony.sdk.e0 r0 = com.adcolony.sdk.e0.f296g
            r3.a(r0)
            goto L66
        L56:
            com.adcolony.sdk.e0$a r3 = new com.adcolony.sdk.e0$a
            r3.<init>()
            java.lang.String r0 = "Google Play Services App Set dependency is missing."
            com.adcolony.sdk.e0$a r3 = r3.a(r0)
            com.adcolony.sdk.e0 r0 = com.adcolony.sdk.e0.f295f
            r3.a(r0)
        L66:
            com.adcolony.sdk.e0$a r3 = new com.adcolony.sdk.e0$a
            r3.<init>()
            java.lang.String r0 = "App Set ID is not available."
            com.adcolony.sdk.e0$a r3 = r3.a(r0)
            com.adcolony.sdk.e0 r1 = com.adcolony.sdk.e0.f295f
            r3.a(r1)
            if (r4 == 0) goto L80
            java.lang.Throwable r3 = new java.lang.Throwable
            r3.<init>(r0)
            r4.a(r3)
        L80:
            r3 = 1
            r2.b(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adcolony.sdk.q.b(android.content.Context, com.adcolony.sdk.y):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 c() {
        f1 b2 = c0.b();
        c0.a(b2, "app_set_id", k());
        return b2;
    }
}
