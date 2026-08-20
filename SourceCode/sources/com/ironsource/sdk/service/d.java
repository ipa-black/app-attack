package com.ironsource.sdk.service;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import antlr.Version;
import com.ironsource.environment.a;
import com.ironsource.environment.h;
import com.ironsource.sdk.utils.IronSourceQaProperties;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static d f12113b;

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f12114a = new JSONObject();

    private d() {
    }

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (f12113b == null) {
                f12113b = new d();
            }
            dVar = f12113b;
        }
        return dVar;
    }

    private void a(Activity activity) {
        if (activity == null) {
            return;
        }
        a(SDKUtils.encodeString("immersiveMode"), Boolean.valueOf(h.a(activity)));
        a("appOrientation", SDKUtils.translateRequestedOrientation(h.m(activity)));
    }

    private void a(Map<String, String> map) {
        if (map == null) {
            Log.d("TokenService", "collectDataFromExternalParams params=null");
            return;
        }
        for (String str : map.keySet()) {
            a(str, SDKUtils.encodeString(map.get(str)));
        }
    }

    private static void c() {
        HashMap hashMap = new HashMap();
        hashMap.put("omidVersion", com.ironsource.sdk.e.a.a.f11985a);
        hashMap.put("omidPartnerVersion", Version.subversion);
        f12113b.a(hashMap);
    }

    private void c(final Context context) {
        if (context == null) {
            return;
        }
        try {
            new Thread(new Runnable() { // from class: com.ironsource.sdk.service.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        d.this.a(b.a(context));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }).start();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            a("chinaCDN", new JSONObject(str).opt("chinaCDN"));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private static void d() {
        if (IronSourceQaProperties.isInitialized()) {
            f12113b.a(IronSourceQaProperties.getInstance().getParameters());
        }
    }

    private void d(Context context) {
        if (context == null) {
            return;
        }
        a(b.c(context));
        a(b.b(context));
    }

    public final String a(Context context) {
        try {
            return a.AnonymousClass1.c(b(context).toString());
        } catch (Exception unused) {
            return a.AnonymousClass1.c(new JSONObject().toString());
        }
    }

    public final void a(Context context, String str, String str2) {
        c(context);
        if (context instanceof Activity) {
            a((Activity) context);
        }
        d(context);
        a(str2);
        b(str);
    }

    public final void a(String str) {
        if (str != null) {
            a("applicationUserId", SDKUtils.encodeString(str));
        }
    }

    public final synchronized void a(String str, Object obj) {
        try {
            this.f12114a.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public final void a(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            a(next, jSONObject.opt(next));
        }
    }

    public final JSONObject b(Context context) {
        b();
        d(context);
        try {
            return new JSONObject(this.f12114a.toString());
        } catch (Exception e2) {
            e2.printStackTrace();
            return new JSONObject();
        }
    }

    public final void b() {
        c(SDKUtils.getControllerConfig());
        a(SDKUtils.getInitSDKParams());
        d();
        c();
    }

    public final void b(String str) {
        if (str != null) {
            a("applicationKey", SDKUtils.encodeString(str));
        }
    }
}
