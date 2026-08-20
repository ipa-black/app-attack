package com.apm.insight.entity;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.amazon.aps.shared.APSAnalytics;
import com.apm.insight.i;
import com.apm.insight.l.o;
import com.apm.insight.l.p;
import com.apm.insight.runtime.s;
import java.util.Iterator;
import java.util.Map;
import java.util.TimeZone;
import org.apache.commons.lang.time.DateUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class Header {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f809a = {"version_code", "manifest_version_code", "aid", "update_version_code"};

    /* renamed from: d  reason: collision with root package name */
    private static String f810d = null;

    /* renamed from: e  reason: collision with root package name */
    private static int f811e = -1;

    /* renamed from: f  reason: collision with root package name */
    private static int f812f = -1;

    /* renamed from: b  reason: collision with root package name */
    private Context f813b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f814c = new JSONObject();

    public Header(Context context) {
        this.f813b = context;
    }

    public static Header a(Context context) {
        Header header = new Header(context);
        header.e(header.f());
        return header;
    }

    public static Header a(Context context, long j) {
        Header a2;
        s a3 = s.a();
        if (j == 0) {
            j = System.currentTimeMillis();
        }
        JSONObject a4 = a3.a(j);
        if (a4 == null || a4.length() == 0) {
            a2 = a(i.g());
            a2.c();
            try {
                a2.f().put("errHeader", 1);
            } catch (Throwable unused) {
            }
        } else {
            a2 = new Header(i.g());
        }
        b(a2);
        a2.a(a4);
        return a2;
    }

    public static Header a(Header header) {
        addRuntimeHeader(header.f());
        return header;
    }

    public static boolean a() {
        if (f811e == -1) {
            f811e = g().contains("64") ? 1 : 0;
        }
        return f811e == 1;
    }

    public static void addOtherHeader(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        h(jSONObject);
        f(jSONObject);
        g(jSONObject);
        try {
            jSONObject.put("os", APSAnalytics.OS_NAME);
            jSONObject.put("device_id", i.c().a());
            jSONObject.put("os_version", h());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            String str = Build.MODEL;
            String str2 = Build.BRAND;
            if (str == null) {
                str = str2;
            } else if (str2 != null && !str.contains(str2)) {
                str = str2 + ' ' + str;
            }
            jSONObject.put("device_model", str);
            jSONObject.put("device_brand", Build.BRAND);
            jSONObject.put("device_manufacturer", Build.MANUFACTURER);
            jSONObject.put("cpu_abi", g());
            Context g2 = i.g();
            String packageName = g2.getPackageName();
            jSONObject.put("package", packageName);
            PackageInfo packageInfo = g2.getPackageManager().getPackageInfo(packageName, 0);
            if (packageInfo.applicationInfo != null) {
                int i = packageInfo.applicationInfo.labelRes;
                jSONObject.put("display_name", i > 0 ? g2.getString(i) : g2.getPackageManager().getApplicationLabel(packageInfo.applicationInfo));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        d.a(jSONObject);
    }

    public static void addRuntimeHeader(JSONObject jSONObject) {
        i(jSONObject);
        j(jSONObject);
    }

    public static Header b(Context context) {
        Header a2 = a(context);
        a(a2);
        b(a2);
        a2.c();
        a2.d();
        a2.e();
        return a2;
    }

    public static void b(Header header) {
        if (header == null) {
            return;
        }
        addOtherHeader(header.f());
    }

    public static boolean b() {
        if (f812f == -1) {
            f812f = g().contains("86") ? 1 : 0;
        }
        return f812f == 1;
    }

    public static boolean b(JSONObject jSONObject) {
        return jSONObject.optInt("unauthentic_version", 0) == 1;
    }

    public static boolean c(JSONObject jSONObject) {
        return jSONObject == null || jSONObject.length() == 0 || (jSONObject.opt("app_version") == null && jSONObject.opt("version_name") == null) || jSONObject.opt("version_code") == null || jSONObject.opt("update_version_code") == null;
    }

    public static boolean d(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() != 0) {
            String optString = jSONObject.optString("aid");
            if (TextUtils.isEmpty(optString)) {
                return true;
            }
            try {
                return Integer.parseInt(optString) <= 0;
            } catch (Throwable unused) {
            }
        }
        return true;
    }

    private void e(JSONObject jSONObject) {
        try {
            jSONObject.put("sdk_version", 1030842);
            jSONObject.put("sdk_version_name", "1.3.8.nourl-alpha.22");
        } catch (Exception unused) {
        }
    }

    private static void f(JSONObject jSONObject) {
        try {
            DisplayMetrics displayMetrics = i.g().getResources().getDisplayMetrics();
            int i = displayMetrics.densityDpi;
            String str = i != 120 ? i != 240 ? i != 320 ? "mdpi" : "xhdpi" : "hdpi" : "ldpi";
            jSONObject.put("density_dpi", i);
            jSONObject.put("display_density", str);
            jSONObject.put("resolution", displayMetrics.heightPixels + "x" + displayMetrics.widthPixels);
        } catch (Exception unused) {
        }
    }

    private static String g() {
        if (f810d == null) {
            try {
                StringBuilder sb = new StringBuilder();
                if (Build.SUPPORTED_ABIS.length > 0) {
                    for (int i = 0; i < Build.SUPPORTED_ABIS.length; i++) {
                        sb.append(Build.SUPPORTED_ABIS[i]);
                        if (i != Build.SUPPORTED_ABIS.length - 1) {
                            sb.append(", ");
                        }
                    }
                } else {
                    sb = new StringBuilder(Build.CPU_ABI);
                }
                if (TextUtils.isEmpty(sb.toString())) {
                    f810d = "unknown";
                }
                f810d = sb.toString();
            } catch (Exception e2) {
                p.b((Throwable) e2);
                f810d = "unknown";
            }
        }
        return f810d;
    }

    private static void g(JSONObject jSONObject) {
        try {
            String language = i.g().getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put("language", language);
            }
            int rawOffset = TimeZone.getDefault().getRawOffset() / DateUtils.MILLIS_IN_HOUR;
            if (rawOffset < -12) {
                rawOffset = -12;
            }
            if (rawOffset > 12) {
                rawOffset = 12;
            }
            jSONObject.put("timezone", rawOffset);
        } catch (Exception unused) {
        }
    }

    private static String h() {
        String str = Build.VERSION.RELEASE;
        return str.contains(".") ? str : str + ".0";
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0043 A[Catch: all -> 0x0055, TryCatch #0 {all -> 0x0055, blocks: (B:3:0x0005, B:6:0x000d, B:16:0x0038, B:18:0x0043, B:19:0x004c, B:7:0x0011, B:10:0x001a, B:12:0x0024, B:13:0x0029, B:15:0x002f), top: B:22:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void h(org.json.JSONObject r3) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            boolean r1 = com.apm.insight.l.d.c()     // Catch: java.lang.Throwable -> L55
            if (r1 == 0) goto L11
            java.lang.String r1 = "MIUI-"
        Ld:
            r0.append(r1)     // Catch: java.lang.Throwable -> L55
            goto L38
        L11:
            boolean r1 = com.apm.insight.l.d.d()     // Catch: java.lang.Throwable -> L55
            if (r1 == 0) goto L1a
            java.lang.String r1 = "FLYME-"
            goto Ld
        L1a:
            java.lang.String r1 = com.apm.insight.l.d.a()     // Catch: java.lang.Throwable -> L55
            boolean r2 = com.apm.insight.l.d.a(r1)     // Catch: java.lang.Throwable -> L55
            if (r2 == 0) goto L29
            java.lang.String r2 = "EMUI-"
            r0.append(r2)     // Catch: java.lang.Throwable -> L55
        L29:
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L55
            if (r2 != 0) goto L38
            java.lang.StringBuilder r1 = r0.append(r1)     // Catch: java.lang.Throwable -> L55
            java.lang.String r2 = "-"
            r1.append(r2)     // Catch: java.lang.Throwable -> L55
        L38:
            java.lang.String r1 = android.os.Build.VERSION.INCREMENTAL     // Catch: java.lang.Throwable -> L55
            r0.append(r1)     // Catch: java.lang.Throwable -> L55
            int r1 = r0.length()     // Catch: java.lang.Throwable -> L55
            if (r1 <= 0) goto L4c
            java.lang.String r1 = "rom"
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L55
            r3.put(r1, r0)     // Catch: java.lang.Throwable -> L55
        L4c:
            java.lang.String r0 = "rom_version"
            java.lang.String r1 = com.apm.insight.l.s.a()     // Catch: java.lang.Throwable -> L55
            r3.put(r0, r1)     // Catch: java.lang.Throwable -> L55
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.entity.Header.h(org.json.JSONObject):void");
    }

    private static void i(JSONObject jSONObject) {
        try {
            jSONObject.put("access", o.a(i.g()));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private static void j(JSONObject jSONObject) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) i.g().getSystemService("phone");
            if (telephonyManager != null) {
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                if (!TextUtils.isEmpty(networkOperatorName)) {
                    jSONObject.put("carrier", networkOperatorName);
                }
                String networkOperator = telephonyManager.getNetworkOperator();
                if (TextUtils.isEmpty(networkOperator)) {
                    return;
                }
                jSONObject.put("mcc_mnc", networkOperator);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public JSONObject a(Map<String, Object> map) {
        String[] strArr;
        if (map == null) {
            return this.f814c;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!this.f814c.has(entry.getKey())) {
                this.f814c.put(entry.getKey(), entry.getValue());
            }
        }
        for (String str : f809a) {
            if (map.containsKey(str)) {
                this.f814c.put(str, Integer.parseInt(String.valueOf(map.get(str))));
            }
        }
        if (map.containsKey("version_code") && !map.containsKey("manifest_version_code")) {
            try {
                this.f814c.put("manifest_version_code", Integer.parseInt(String.valueOf(map.get("version_code"))));
            } catch (Throwable unused) {
            }
        }
        if (map.containsKey("iid")) {
            this.f814c.put("udid", map.get("iid"));
            this.f814c.remove("iid");
        }
        if (map.containsKey("version_name")) {
            this.f814c.put("app_version", map.get("version_name"));
            this.f814c.remove("version_name");
        }
        return this.f814c;
    }

    public JSONObject a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return this.f814c;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                this.f814c.put(next, jSONObject.opt(next));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return this.f814c;
    }

    public JSONObject c() {
        return a(i.a().a());
    }

    public JSONObject d() {
        try {
            this.f814c.put("device_id", i.c().a());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return this.f814c;
    }

    public JSONObject e() {
        try {
            long f2 = i.a().f();
            if (f2 > 0) {
                this.f814c.put("user_id", f2);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return this.f814c;
    }

    public JSONObject f() {
        return this.f814c;
    }
}
