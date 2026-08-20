package com.ironsource.mediationsdk;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class ah {

    /* renamed from: b  reason: collision with root package name */
    private static ah f11071b;

    /* renamed from: a  reason: collision with root package name */
    JSONObject f11072a = new JSONObject();

    private ah() {
    }

    public static synchronized ah a() {
        ah ahVar;
        synchronized (ah.class) {
            if (f11071b == null) {
                f11071b = new ah();
            }
            ahVar = f11071b;
        }
        return ahVar;
    }

    static /* synthetic */ JSONObject a(ah ahVar) {
        return d();
    }

    static /* synthetic */ void a(ah ahVar, JSONObject jSONObject) {
        ahVar.a(jSONObject);
    }

    private synchronized void a(String str, Object obj) {
        try {
            this.f11072a.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        int k = com.ironsource.environment.h.k();
        int l = com.ironsource.environment.h.l();
        float o = com.ironsource.environment.h.o();
        if (applicationContext != null) {
            try {
                ConcurrentHashMap<String, List<String>> concurrentHashMap = C1347d.a().f11101c;
                concurrentHashMap.putAll(com.ironsource.mediationsdk.utils.k.a().d());
                JSONObject jSONObject2 = new JSONObject();
                for (Map.Entry<String, List<String>> entry : concurrentHashMap.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                Boolean bool = H.a().y;
                if (bool != null) {
                    jSONObject.put("consent", bool.booleanValue());
                }
                String B = com.ironsource.environment.h.B(applicationContext);
                if (!TextUtils.isEmpty(B)) {
                    jSONObject.put("asid", B);
                }
                jSONObject.put("connT", IronSourceUtils.getConnectionType(applicationContext));
                jSONObject.put("dVol", com.ironsource.environment.h.l(applicationContext));
                jSONObject.put("root", com.ironsource.environment.h.j());
                jSONObject.put("bat", com.ironsource.environment.h.v(applicationContext));
                jSONObject.put("diskFS", com.ironsource.environment.h.p());
                jSONObject.put("MD", jSONObject2);
                jSONObject.put("cTime", new Date().getTime());
                jSONObject.put("dWidth", k);
                jSONObject.put("dHeight", l);
                jSONObject.put("dScrenScle", String.valueOf(o));
                jSONObject.put("sDepIS", com.ironsource.mediationsdk.utils.o.a().b(2));
                jSONObject.put("sDepRV", com.ironsource.mediationsdk.utils.o.a().b(1));
                jSONObject.put("UA", com.ironsource.environment.h.r());
            } catch (JSONException e2) {
                IronLog.INTERNAL.error("got the following error " + e2.getMessage());
                e2.printStackTrace();
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        if (applicationContext != null) {
            try {
                String language = applicationContext.getResources().getConfiguration().locale.getLanguage();
                if (!TextUtils.isEmpty(language)) {
                    jSONObject.put("dLang", language.toUpperCase(Locale.ENGLISH));
                }
                String pluginType = ConfigFile.getConfigFile().getPluginType();
                if (!TextUtils.isEmpty(pluginType)) {
                    jSONObject.put("plType", pluginType);
                }
                String e2 = com.ironsource.environment.h.e();
                if (e2 != null) {
                    jSONObject.put("dOSVF", e2);
                    jSONObject.put("dOSV", e2.replaceAll("[^0-9/.]", ""));
                }
                String y = com.ironsource.environment.h.y(applicationContext);
                if (y != null) {
                    jSONObject.put("auid", y);
                }
                jSONObject.put("sId", IronSourceUtils.getSessionId());
                jSONObject.put(Constants.APP_KEY, H.a().j);
                jSONObject.put("mCar", com.ironsource.environment.h.i(applicationContext));
                jSONObject.put("medV", IronSourceUtils.getSDKVersion());
                jSONObject.put("dModel", Build.MODEL);
                jSONObject.put("dOS", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
                jSONObject.put("dMake", Build.MANUFACTURER);
                jSONObject.put("dAPI", String.valueOf(Build.VERSION.SDK_INT));
                jSONObject.put("bId", applicationContext.getPackageName());
                jSONObject.put("appV", com.ironsource.environment.c.c(applicationContext, applicationContext.getPackageName()));
                jSONObject.put("usId", H.a().k);
            } catch (JSONException e3) {
                IronLog.INTERNAL.error("got the following error " + e3.getMessage());
                e3.printStackTrace();
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject d() {
        boolean z;
        String str;
        JSONObject jSONObject = new JSONObject();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        if (applicationContext != null) {
            String[] C = com.ironsource.environment.h.C(applicationContext);
            String str2 = "";
            if (C == null || C.length != 2) {
                z = false;
                str = "";
            } else {
                str = !TextUtils.isEmpty(C[0]) ? C[0] : "";
                z = Boolean.valueOf(C[1]).booleanValue();
            }
            if (TextUtils.isEmpty(str)) {
                str = com.ironsource.environment.h.x(applicationContext);
                if (!TextUtils.isEmpty(str)) {
                    str2 = IronSourceConstants.TYPE_UUID;
                }
            } else {
                str2 = IronSourceConstants.TYPE_GAID;
            }
            try {
                jSONObject.put("advId", str);
                jSONObject.put("advType", str2);
                jSONObject.put("isLAT", z);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            a(next, jSONObject.opt(next));
        }
    }
}
