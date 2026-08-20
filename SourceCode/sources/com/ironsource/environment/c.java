package com.ironsource.environment;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f10551a;

    /* renamed from: b  reason: collision with root package name */
    private String f10552b;

    /* renamed from: c  reason: collision with root package name */
    private int f10553c;

    /* renamed from: d  reason: collision with root package name */
    private String f10554d;

    public c(int i, String str, String str2, String str3) {
        this.f10553c = i;
        this.f10552b = str2;
        this.f10551a = str;
        this.f10554d = str3;
    }

    public c(String str, String str2, String str3) {
        this.f10553c = -1;
        this.f10552b = str2;
        this.f10551a = str;
        this.f10554d = str3;
    }

    public static long a(Context context) {
        try {
            return e(context).firstInstallTime;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return -1L;
        }
    }

    public static JSONObject a(Context context, JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
            int i = 0;
            if (jSONArray.length() == 0) {
                while (i < packageInfo.requestedPermissions.length) {
                    jSONObject.put(packageInfo.requestedPermissions[i], (packageInfo.requestedPermissionsFlags[i] & 2) != 0 ? "Granted" : "Rejected");
                    i++;
                }
            } else {
                List asList = Arrays.asList(packageInfo.requestedPermissions);
                while (i < jSONArray.length()) {
                    String string = jSONArray.getString(i);
                    int indexOf = asList.indexOf(string);
                    if (indexOf != -1) {
                        jSONObject.put(string, (packageInfo.requestedPermissionsFlags[indexOf] & 2) != 0 ? "Granted" : "Rejected");
                    } else {
                        jSONObject.put(string, "notFoundInManifest");
                    }
                    i++;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    public static boolean a(Context context, String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
            if (packageInfo.requestedPermissions != null) {
                boolean z2 = false;
                for (int i = 0; i < packageInfo.requestedPermissions.length && !z2; i++) {
                    try {
                        z2 = str.equals(packageInfo.requestedPermissions[i]);
                    } catch (Exception e2) {
                        e = e2;
                        z = z2;
                        e.printStackTrace();
                        return z;
                    }
                }
                return z2;
            }
            return false;
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static long b(Context context) {
        try {
            return e(context).lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return -1L;
        }
    }

    public static boolean b(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static String c(Context context) {
        try {
            return e(context).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String c(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String d(Context context) {
        String str;
        try {
            str = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        } catch (Throwable unused) {
            str = null;
        }
        return TextUtils.isEmpty(str) ? "" : str;
    }

    private static PackageInfo e(Context context) {
        return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
    }

    public String a() {
        return this.f10551a;
    }

    public String b() {
        return this.f10552b;
    }

    public String c() {
        return this.f10554d;
    }

    public void d() {
        f.a(this);
    }
}
