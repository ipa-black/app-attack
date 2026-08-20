package com.pgl.ssdk;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: DeviceInfo.java */
/* renamed from: com.pgl.ssdk.s  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1387s {

    /* renamed from: a  reason: collision with root package name */
    private static String f12248a;

    /* renamed from: b  reason: collision with root package name */
    private static long[][] f12249b;

    /* renamed from: c  reason: collision with root package name */
    private static String f12250c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeviceInfo.java */
    /* renamed from: com.pgl.ssdk.s$a */
    /* loaded from: classes3.dex */
    public static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextUtils.isEmpty(C1387s.f12250c)) {
                String unused = C1387s.f12250c = C1387s.b();
                L.b(C1390v.b(), "romtype", C1387s.f12250c);
            }
        }
    }

    public static JSONArray[] b(Context context) {
        if (f12249b == null) {
            f12249b = (long[][]) com.pgl.ssdk.ces.a.meta(157, context, null);
        }
        long[][] jArr = f12249b;
        if (jArr != null && jArr.length == 2) {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            long[][] jArr2 = f12249b;
            long[] jArr3 = jArr2[0];
            long[] jArr4 = jArr2[1];
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jArr3.length; i++) {
                try {
                    jSONArray.put(i, currentTimeMillis - jArr3[i]);
                    jSONArray2.put(i, currentTimeMillis - jArr4[i]);
                } catch (JSONException unused) {
                }
            }
            return new JSONArray[]{jSONArray, jSONArray2};
        }
        f12249b = null;
        return null;
    }

    private static boolean c(String str) {
        try {
            return new File(str).exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String c() {
        if (!TextUtils.isEmpty(f12250c)) {
            return f12250c;
        }
        String a2 = L.a(C1390v.b(), "romtype", null);
        f12250c = a2;
        if (!TextUtils.isEmpty(a2)) {
            return f12250c;
        }
        AbstractC1372c.a(new a());
        return "";
    }

    public static String a(Context context) {
        String str = f12248a;
        if (str != null) {
            return str;
        }
        String string = Settings.Global.getString(context.getContentResolver(), "boot_count");
        f12248a = string;
        return string;
    }

    private static boolean b(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    static String b() {
        return (b("com.samsung.android.knox.SemPersonaManager") || b("com.samsung.android.knoxguard.KnoxGuardManager")) ? "samsung" : (b("androidhnext.Manifest") || b("androidhnext.R")) ? "honor" : (b("androidhwext.Manifest") || b("androidhwext.R")) ? "huawei" : (b("oppo.Manifest") || b("oppo.R") || b("oplus.Manifest") || b("oplus.R") || b("com.oneplus.Manifest") || b("com.oneplus.R")) ? "oppo" : (b("vivo.Manifest") || b("vivo.R")) ? "vivo" : (b("miui.Manifest") || b("miui.R") || b("miui.os.Build")) ? "xiaomi" : (b("lineageos.platform.Manifest") || b("lineageos.platform.R")) ? "lineage" : c("/system/framework/com.motorola.motosignature.jar") ? "moto" : (c("/system/framework/transsion-framework.jar") || c("/system/framework/transsion-services.jar")) ? "transsion" : "other";
    }
}
