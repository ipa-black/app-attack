package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.amazon.aps.shared.APSAnalytics;
import com.unity3d.ads.metadata.MediationMetaData;
import org.json.JSONObject;
/* compiled from: SelasAgent.java */
/* loaded from: classes3.dex */
public class S {

    /* renamed from: a  reason: collision with root package name */
    public static int f12189a = 504;

    /* renamed from: b  reason: collision with root package name */
    public static String f12190b = null;

    /* renamed from: c  reason: collision with root package name */
    public static String f12191c = "";

    /* renamed from: d  reason: collision with root package name */
    private static Context f12192d;

    public static void a(Context context, String str) {
        if (f12192d == null) {
            f12192d = context;
        }
        int i = f12189a;
        if (i == 102 || i == 202 || i == 200) {
            return;
        }
        System.currentTimeMillis();
        f12190b = str;
        f12189a = 102;
        AbstractC1372c.a(new T(context, null));
    }

    public static synchronized String b() {
        String str;
        synchronized (S.class) {
            if (TextUtils.isEmpty(f12191c)) {
                f12191c = (String) com.pgl.ssdk.ces.a.meta(303, f12192d, null);
            }
            str = f12191c;
        }
        return str;
    }

    public static void c() {
        Context context = f12192d;
        if (context != null) {
            f12189a = 102;
            AbstractC1372c.a(new T(context, null));
            com.pgl.ssdk.ces.c.g().a();
            C1390v.a();
        }
    }

    public static synchronized Object a(byte[] bArr) {
        synchronized (S.class) {
            if (bArr != null) {
                return com.pgl.ssdk.ces.a.meta(302, f12192d, bArr);
            }
            return null;
        }
    }

    public static String a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("os", APSAnalytics.OS_NAME);
            jSONObject.put(MediationMetaData.KEY_VERSION, "6.2.0.0.overseas-rc.2");
            String str = f12191c;
            if (str != null && str.length() > 0) {
                jSONObject.put("token_id", f12191c);
            } else {
                jSONObject.put("token_id", b());
            }
            jSONObject.put("code", f12189a);
            return Base64.encodeToString(jSONObject.toString().getBytes(), 2);
        } catch (Throwable unused) {
            return "";
        }
    }
}
