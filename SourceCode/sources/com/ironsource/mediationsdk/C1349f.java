package com.ironsource.mediationsdk;

import android.content.Context;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceAES;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.f  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1349f {

    /* renamed from: b  reason: collision with root package name */
    private static C1349f f11109b = new C1349f();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f11110a = new AtomicBoolean(false);

    /* renamed from: com.ironsource.mediationsdk.f$a */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f11111a;

        /* renamed from: b  reason: collision with root package name */
        List<com.ironsource.mediationsdk.server.b> f11112b;

        /* renamed from: c  reason: collision with root package name */
        com.ironsource.mediationsdk.server.b f11113c;

        /* renamed from: d  reason: collision with root package name */
        JSONObject f11114d;

        /* renamed from: e  reason: collision with root package name */
        JSONObject f11115e;

        /* renamed from: f  reason: collision with root package name */
        int f11116f;

        /* renamed from: g  reason: collision with root package name */
        String f11117g;
    }

    /* renamed from: com.ironsource.mediationsdk.f$b */
    /* loaded from: classes3.dex */
    static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f11118a;

        /* renamed from: b  reason: collision with root package name */
        private String f11119b;

        /* renamed from: c  reason: collision with root package name */
        private String f11120c;

        public b(String str, String str2, String str3) {
            this.f11118a = str;
            this.f11119b = str2;
            this.f11120c = str3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f11120c).openConnection();
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                httpURLConnection.disconnect();
                if (responseCode == 200 || responseCode == 204) {
                    return;
                }
            } catch (Exception unused) {
                IronLog.INTERNAL.error("exception - e");
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
                jSONObject.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, this.f11118a + ";" + this.f11119b + ";" + this.f11120c);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(IronSourceConstants.TROUBLESHOOTING_FAILED_TO_SEND_AUCTION_URL, jSONObject));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.ironsource.mediationsdk.f$c */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static final int f11121a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f11122b = 2;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ int[] f11123c = {1, 2};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(JSONObject jSONObject) {
        String optString = jSONObject.optString(IronSourceConstants.EVENTS_AUCTION_ID);
        if (TextUtils.isEmpty(optString)) {
            throw new JSONException("Invalid auction response - auction id is missing");
        }
        a aVar = new a();
        aVar.f11111a = optString;
        if (jSONObject.has(com.appnext.core.a.b.hW)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(com.appnext.core.a.b.hW);
            aVar.f11113c = new com.ironsource.mediationsdk.server.b(jSONObject2);
            r3 = jSONObject2.has("armData") ? jSONObject2.optJSONObject("armData") : null;
            if (jSONObject2.has(IronSourceConstants.EVENTS_GENERIC_PARAMS)) {
                aVar.f11114d = jSONObject2.optJSONObject(IronSourceConstants.EVENTS_GENERIC_PARAMS);
            }
            if (jSONObject2.has("configurations")) {
                aVar.f11115e = jSONObject2.optJSONObject("configurations");
            }
        }
        aVar.f11112b = new ArrayList();
        JSONArray jSONArray = jSONObject.getJSONArray("waterfall");
        for (int i = 0; i < jSONArray.length(); i++) {
            com.ironsource.mediationsdk.server.b bVar = new com.ironsource.mediationsdk.server.b(jSONArray.getJSONObject(i), r3);
            if (!bVar.g()) {
                aVar.f11116f = 1002;
                aVar.f11117g = "waterfall " + i;
                throw new JSONException("invalid response");
            }
            aVar.f11112b.add(bVar);
        }
        return aVar;
    }

    public static C1349f a() {
        return f11109b;
    }

    public static com.ironsource.mediationsdk.server.b a(String str, List<com.ironsource.mediationsdk.server.b> list) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).a().equals(str)) {
                return list.get(i);
            }
        }
        return null;
    }

    public static String a(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7) {
        return str.replace("${AUCTION_PRICE}", str4).replace("${AUCTION_LOSS}", str6).replace("${AUCTION_MBR}", str5).replace("${INSTANCE}", str2).replace("${INSTANCE_TYPE}", Integer.toString(i)).replace("${DYNAMIC_DEMAND_SOURCE}", str3).replace("${PLACEMENT_NAME}", str7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(String str) {
        try {
            return new JSONObject(IronSourceAES.decode(com.ironsource.mediationsdk.utils.g.a().b(), str));
        } catch (Exception unused) {
            return null;
        }
    }

    private static JSONObject a(JSONObject jSONObject, List<String> list) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    if (list.contains(next)) {
                        jSONObject2.put(next, jSONObject.opt(next));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return jSONObject2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, String str3) {
        com.ironsource.environment.e.c.f10584a.c(new b(str, str2, str3));
    }

    private void a(JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        if (jSONObject2 == null) {
            return;
        }
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (jSONObject.has(next)) {
                int i = 0;
                str = next;
                while (jSONObject.has(str)) {
                    i++;
                    str = next + "_" + i;
                }
            } else {
                str = next;
            }
            try {
                jSONObject.put(str, jSONObject2.opt(next));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static int b() {
        int i = c.f11122b;
        return (Build.VERSION.SDK_INT < 28 ? (ContextProvider.getInstance().getApplicationContext().getApplicationInfo().flags & 134217728) == 0 : !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) ? c.f11122b : c.f11121a;
    }

    public static Map<String, String> b(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has(OutcomeEventsTable.COLUMN_NAME_PARAMS)) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(OutcomeEventsTable.COLUMN_NAME_PARAMS);
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Object obj = jSONObject2.get(next);
                    if (obj instanceof String) {
                        hashMap.put(next, (String) obj);
                    }
                }
            }
        } catch (JSONException unused) {
        }
        return hashMap;
    }

    private JSONObject b(JSONObject jSONObject, List<String> list) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    HashMap<String, String> hashMap = com.ironsource.environment.l.f10603b;
                    String str = hashMap.containsKey(next) ? hashMap.get(next) : next;
                    if ((list.isEmpty() && !com.ironsource.environment.l.f10602a.contains(str) && !str.startsWith("metadata_")) || list.contains(str)) {
                        jSONObject2.put(str, jSONObject.opt(next));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return jSONObject2;
    }

    public static String c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return jSONObject.has("adMarkup") ? jSONObject.getString("adMarkup") : str;
        } catch (JSONException unused) {
            return str;
        }
    }

    public static String d(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has(OutcomeEventsTable.COLUMN_NAME_PARAMS)) {
                JSONObject jSONObject2 = jSONObject.getJSONObject(OutcomeEventsTable.COLUMN_NAME_PARAMS);
                return jSONObject2.has(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID) ? jSONObject2.getString(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID) : "";
            }
            return "";
        } catch (JSONException unused) {
            return "";
        }
    }

    public final String a(String str, int i, com.ironsource.mediationsdk.server.b bVar, String str2, String str3, String str4) {
        String str5;
        String c2 = bVar.c();
        if (!TextUtils.isEmpty(c2) && !TextUtils.isEmpty(str2)) {
            double parseDouble = Double.parseDouble(c2);
            double parseDouble2 = Double.parseDouble(str2);
            if (parseDouble2 != 0.0d) {
                str5 = String.valueOf(Math.round((parseDouble / parseDouble2) * 1000.0d) / 1000.0d);
                return a(str, bVar.a(), i, d(bVar.b()), c2, str5, str3, str4);
            }
        }
        str5 = "";
        return a(str, bVar.a(), i, d(bVar.b()), c2, str5, str3, str4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JSONObject a(Context context, Map<String, Object> map, List<String> list, C1352i c1352i, int i, String str, com.ironsource.mediationsdk.utils.c cVar, ISBannerSize iSBannerSize, JSONObject jSONObject) {
        Object obj;
        String str2;
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> it = map.keySet().iterator();
        while (true) {
            obj = "";
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("instanceType", 2);
            jSONObject3.put("biddingAdditionalData", new JSONObject((Map) map.get(next)));
            if (c1352i != null) {
                obj = c1352i.a(next);
            }
            jSONObject3.put("performance", obj);
            jSONObject2.put(next, jSONObject3);
        }
        if (list != null) {
            for (String str3 : list) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("instanceType", 1);
                jSONObject4.put("performance", c1352i != null ? c1352i.a(str3) : "");
                jSONObject2.put(str3, jSONObject4);
            }
        }
        ConcurrentHashMap<String, List<String>> concurrentHashMap = C1347d.a().f11101c;
        concurrentHashMap.putAll(com.ironsource.mediationsdk.utils.k.a().d());
        JSONObject jSONObject5 = new JSONObject();
        for (Map.Entry<String, List<String>> entry : concurrentHashMap.entrySet()) {
            jSONObject5.put(entry.getKey(), TextUtils.join(",", entry.getValue()));
        }
        JSONObject jSONObject6 = new JSONObject();
        jSONObject6.put("applicationUserId", H.a().k);
        Boolean bool = H.a().y;
        if (bool != null) {
            jSONObject6.put("consent", bool.booleanValue() ? 1 : 0);
        }
        jSONObject6.put("mobileCarrier", com.ironsource.environment.h.i(context));
        jSONObject6.put("connectionType", IronSourceUtils.getConnectionType(context));
        jSONObject6.put("deviceOS", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
        jSONObject6.put("deviceWidth", context.getResources().getConfiguration().screenWidthDp);
        jSONObject6.put("deviceHeight", context.getResources().getConfiguration().screenHeightDp);
        jSONObject6.put("deviceOSVersion", Build.VERSION.SDK_INT + "(" + Build.VERSION.RELEASE + ")");
        jSONObject6.put("deviceModel", Build.MODEL);
        jSONObject6.put("deviceMake", Build.MANUFACTURER);
        jSONObject6.put("bundleId", context.getPackageName());
        jSONObject6.put("appVersion", com.ironsource.environment.c.c(context, context.getPackageName()));
        jSONObject6.put("clientTimestamp", new Date().getTime());
        jSONObject6.put("fs", IronSourceUtils.getFirstSession(context) ? 1 : 0);
        jSONObject6.put("browserUserAgent", com.ironsource.environment.h.r());
        jSONObject6.put("deviceType", IronSourceUtils.getDeviceType(context));
        jSONObject6.put("deviceLang", Locale.getDefault().getLanguage());
        jSONObject6.put("secure", b() - 1);
        if (iSBannerSize != null) {
            jSONObject6.put("bannerSize", iSBannerSize.getDescription());
            jSONObject6.put("bannerWidth", iSBannerSize.getWidth());
            jSONObject6.put("bannerHeight", iSBannerSize.getHeight());
        }
        String[] C = com.ironsource.environment.h.C(context);
        boolean z = false;
        if (C == null || C.length != 2) {
            str2 = "";
        } else {
            str2 = !TextUtils.isEmpty(C[0]) ? C[0] : "";
            z = Boolean.valueOf(C[1]).booleanValue();
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = com.ironsource.environment.h.x(context);
            if (!TextUtils.isEmpty(str2)) {
                obj = IronSourceConstants.TYPE_UUID;
            }
        } else {
            obj = IronSourceConstants.TYPE_GAID;
        }
        if (!TextUtils.isEmpty(str2)) {
            jSONObject6.put("advId", str2);
            jSONObject6.put("advIdType", obj);
            jSONObject6.put("isLimitAdTrackingEnabled", z ? "true" : "false");
        }
        String B = com.ironsource.environment.h.B(context);
        if (!TextUtils.isEmpty(B)) {
            jSONObject6.put("asid", B);
        }
        String y = com.ironsource.environment.h.y(context);
        if (!TextUtils.isEmpty(y)) {
            jSONObject6.put("auid", y);
        }
        JSONObject jSONObject7 = new JSONObject();
        jSONObject7.put("applicationKey", H.a().j);
        jSONObject7.put("SDKVersion", IronSourceUtils.getSDKVersion());
        jSONObject7.put("clientParams", jSONObject6);
        jSONObject7.put(IronSourceConstants.KEY_SESSION_DEPTH, i);
        jSONObject7.put("sessionId", str);
        jSONObject7.put("instances", jSONObject2);
        jSONObject7.put("auctionData", cVar.f11406c);
        jSONObject7.put("metaData", jSONObject5);
        if (jSONObject != null) {
            jSONObject7.put("sg", jSONObject);
        }
        return jSONObject7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JSONObject a(String str, boolean z, Map<String, Object> map, List<String> list, C1352i c1352i, int i, ISBannerSize iSBannerSize, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        Iterator<String> it = map.keySet().iterator();
        while (true) {
            String str2 = "";
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("instp", 2);
            jSONObject4.put("badt", new JSONObject((Map) map.get(next)));
            if (c1352i != null) {
                str2 = c1352i.a(next);
            }
            jSONObject4.put("prfm", str2);
            jSONObject3.put(next, jSONObject4);
        }
        if (list != null) {
            for (String str3 : list) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("instp", 1);
                jSONObject5.put("prfm", c1352i != null ? c1352i.a(str3) : "");
                jSONObject3.put(str3, jSONObject5);
            }
        }
        jSONObject2.put("inst", jSONObject3);
        com.ironsource.environment.a.b bVar = new com.ironsource.environment.a.b();
        JSONObject a2 = bVar.f10547b.a(bVar.f10546a);
        Intrinsics.checkNotNullExpressionValue(a2, "mGlobalDataReader.getDataByKeys(mAuctionKeyList)");
        JSONObject a3 = com.ironsource.environment.c.b.a(a2.optJSONObject("md"));
        if (a3 != null) {
            a2.put("md", a3);
        }
        a(a2, false);
        a2.put("sd", i);
        a2.put("scr", b() - 1);
        if (jSONObject != null) {
            a2.put("sg", jSONObject);
        }
        jSONObject2.put("ctdt", a2);
        if (iSBannerSize != null) {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("bns", iSBannerSize.getDescription());
            jSONObject6.put("bnw", iSBannerSize.getWidth());
            jSONObject6.put("bnh", iSBannerSize.getHeight());
            jSONObject2.put("bndt", jSONObject6);
        }
        jSONObject2.put("adu", str);
        jSONObject2.put("dner", !z ? 1 : 0);
        return jSONObject2;
    }

    public final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2, List<String> list) {
        ah a2 = ah.a();
        a2.a(ah.c());
        a2.a(ah.b());
        JSONObject a3 = a(a2.f11072a, list.isEmpty() ? com.ironsource.environment.l.f10602a : list);
        a(a3, b(jSONObject, list));
        if (!list.isEmpty()) {
            jSONObject2 = a(jSONObject2, list);
        }
        a(a3, jSONObject2);
        return a3;
    }

    public final void a(JSONObject jSONObject, boolean z) {
        if (TextUtils.isEmpty(jSONObject.optString("tcs")) || !this.f11110a.compareAndSet(false, true)) {
            return;
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(IronSourceConstants.TROUBLESHOOTING_MEDIATION_TCS_CALCULATED, IronSourceUtils.getMediationAdditionalData(z, true, -1)));
    }
}
