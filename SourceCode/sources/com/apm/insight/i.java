package com.apm.insight;

import android.app.Application;
import android.content.Context;
import com.apm.insight.runtime.ConfigManager;
import com.apm.insight.runtime.t;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static Context f882a = null;

    /* renamed from: b  reason: collision with root package name */
    private static Application f883b = null;

    /* renamed from: c  reason: collision with root package name */
    private static long f884c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static String f885d = "default";

    /* renamed from: e  reason: collision with root package name */
    private static boolean f886e = false;

    /* renamed from: f  reason: collision with root package name */
    private static com.apm.insight.runtime.d f887f;
    private static volatile ConcurrentHashMap<Integer, String> i;
    private static volatile String n;

    /* renamed from: g  reason: collision with root package name */
    private static ConfigManager f888g = new ConfigManager();

    /* renamed from: h  reason: collision with root package name */
    private static a f889h = new a();
    private static t j = null;
    private static volatile String k = null;
    private static Object l = new Object();
    private static volatile int m = 0;
    private static int o = 0;
    private static boolean p = true;
    private static boolean q = true;
    private static boolean r = false;
    private static boolean s = true;

    public static com.apm.insight.runtime.d a() {
        if (f887f == null) {
            f887f = com.apm.insight.runtime.i.a(f882a);
        }
        return f887f;
    }

    public static String a(long j2, CrashType crashType, boolean z, boolean z2) {
        return j2 + "_" + crashType.getName() + '_' + f() + '_' + (z ? "oom_" : "normal_") + j() + '_' + (z2 ? "ignore_" : "normal_") + Long.toHexString(new Random().nextLong()) + RequestConfiguration.MAX_AD_CONTENT_RATING_G;
    }

    public static void a(int i2) {
        o = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int i2, String str) {
        if (i == null) {
            synchronized (i.class) {
                if (i == null) {
                    i = new ConcurrentHashMap<>();
                }
            }
        }
        i.put(Integer.valueOf(i2), str);
    }

    public static void a(Application application) {
        if (application != null) {
            f883b = application;
        }
    }

    public static void a(Application application, Context context) {
        if (f883b == null) {
            f884c = System.currentTimeMillis();
            f882a = context;
            f883b = application;
            k = Long.toHexString(new Random().nextLong()) + RequestConfiguration.MAX_AD_CONTENT_RATING_G;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Application application, Context context, ICommonParams iCommonParams) {
        a(application, context);
        f887f = new com.apm.insight.runtime.d(f882a, iCommonParams, a());
    }

    public static void a(com.apm.insight.runtime.d dVar) {
        f887f = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        f885d = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z) {
        f886e = z;
    }

    public static a b() {
        return f889h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(int i2, String str) {
        m = i2;
        n = str;
    }

    public static void b(boolean z) {
        p = z;
    }

    public static t c() {
        if (j == null) {
            synchronized (i.class) {
                j = new t(f882a);
            }
        }
        return j;
    }

    public static void c(boolean z) {
        q = z;
    }

    public static void d(boolean z) {
        r = z;
    }

    public static boolean d() {
        return i().isDebugMode() && n().contains("local_test");
    }

    public static String e() {
        return f() + '_' + Long.toHexString(new Random().nextLong()) + RequestConfiguration.MAX_AD_CONTENT_RATING_G;
    }

    public static void e(boolean z) {
        s = z;
    }

    public static String f() {
        if (k == null) {
            synchronized (l) {
                if (k == null) {
                    k = Long.toHexString(new Random().nextLong()) + "U";
                }
            }
        }
        return k;
    }

    public static Context g() {
        return f882a;
    }

    public static Application h() {
        return f883b;
    }

    public static ConfigManager i() {
        return f888g;
    }

    public static long j() {
        return f884c;
    }

    public static String k() {
        return f885d;
    }

    public static int l() {
        return o;
    }

    public static boolean m() {
        return f886e;
    }

    public static String n() {
        Object obj = a().a().get("channel");
        return obj == null ? "unknown" : String.valueOf(obj);
    }

    public static ConcurrentHashMap<Integer, String> o() {
        return i;
    }

    public static int p() {
        return m;
    }

    public static String q() {
        return n;
    }

    public static boolean r() {
        return p;
    }

    public static boolean s() {
        return q;
    }

    public static boolean t() {
        return r;
    }

    public static boolean u() {
        return s;
    }
}
