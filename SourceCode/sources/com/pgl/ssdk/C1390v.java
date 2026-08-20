package com.pgl.ssdk;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import com.pgl.ssdk.ces.out.DungeonFlag;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: PglArmorCallApi.java */
/* renamed from: com.pgl.ssdk.v  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1390v {

    /* renamed from: a  reason: collision with root package name */
    private static Context f12263a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PglArmorCallApi.java */
    /* renamed from: com.pgl.ssdk.v$a */
    /* loaded from: classes3.dex */
    public static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w.b(C1390v.b());
            com.pgl.ssdk.ces.a.meta(226, C1390v.b(), null);
        }
    }

    @DungeonFlag
    public static String a(Context context) {
        TelephonyManager telephonyManager;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", 0);
            jSONObject.put("envcode", ((Long) com.pgl.ssdk.ces.a.meta(154, context, null)).longValue());
            jSONObject.put("bootcount", C1387s.a(context));
            Object meta = com.pgl.ssdk.ces.a.meta(155, context, null);
            jSONObject.put("usb_debug", meta instanceof Boolean ? ((Boolean) meta).booleanValue() : false);
            JSONArray[] b2 = C1387s.b(context);
            if (b2 != null) {
                jSONObject.put("sdata", b2[0]);
                jSONObject.put("sdmta", b2[1]);
                jSONObject.put("curtime", System.currentTimeMillis() / 1000);
            }
            jSONObject.put("camera_count", C1388t.a());
            if (C1388t.f12251a == -1 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                C1388t.f12251a = telephonyManager.getSimState();
            }
            jSONObject.put("sim", C1388t.f12251a);
            jSONObject.put("virtual_display", w.a(context));
            jSONObject.put("acbs", C1386q.a(context));
            Object meta2 = com.pgl.ssdk.ces.a.meta(156, context, null);
            jSONObject.put("bl_unlock", meta2 instanceof Boolean ? ((Boolean) meta2).booleanValue() : false);
            C1389u.g();
            C1389u.a(jSONObject);
            String d2 = r.d();
            jSONObject.put("romtype", C1387s.c());
            if (!TextUtils.isEmpty(d2)) {
                jSONObject.put("sign", d2);
            }
            return (String) com.pgl.ssdk.ces.a.meta(227, context, jSONObject.toString());
        } catch (Throwable th) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("status", 3);
                jSONObject2.put("exception", th.toString());
                jSONObject2.put("stacktrace", Arrays.toString(th.getStackTrace()));
                jSONObject2.put("cause", String.valueOf(th.getCause()));
                return Base64.encodeToString(jSONObject2.toString().getBytes(com.google.android.exoplayer2.C.UTF8_NAME), 0);
            } catch (Throwable unused) {
                return "eyJzdGF0dXMiOjN9";
            }
        }
    }

    public static void b(Context context) {
        f12263a = context;
    }

    public static String c() {
        String a2 = a(f12263a);
        a();
        return a2;
    }

    public static Context b() {
        return f12263a;
    }

    @DungeonFlag
    public static void a() {
        AbstractC1372c.a(new a());
    }
}
