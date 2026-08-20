package com.ironsource.mediationsdk;

import android.content.Context;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.c.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.m  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1356m {

    /* renamed from: com.ironsource.mediationsdk.m$a */
    /* loaded from: classes3.dex */
    interface a {
        void a(Map<String, Object> map, List<String> list, StringBuilder sb);
    }

    /* renamed from: com.ironsource.mediationsdk.m$b */
    /* loaded from: classes3.dex */
    interface b {
        void a();

        void a(String str);
    }

    public static JSONObject a(Context context, String[] strArr) {
        JSONObject jSONObject = new JSONObject();
        JSONObject a2 = a.C0319a.f10560a.a(context);
        for (String str : strArr) {
            if (a2.has(str)) {
                jSONObject.put(str, a2.opt(str));
            }
        }
        return jSONObject;
    }

    public static JSONObject a(String[] strArr) {
        JSONObject jSONObject = new JSONObject();
        JSONObject a2 = a.C0319a.f10560a.a(ContextProvider.getInstance().getApplicationContext());
        for (String str : strArr) {
            if (a2.has(str)) {
                jSONObject.put(str, a2.opt(str));
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, ConcurrentHashMap<String, R> concurrentHashMap, a aVar) {
        StringBuilder sb;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb2 = new StringBuilder();
        if (!com.ironsource.mediationsdk.utils.k.b(ContextProvider.getInstance().getCurrentActiveActivity(), str)) {
            for (R r : concurrentHashMap.values()) {
                if (r.h()) {
                    Map<String, Object> c2 = r.c();
                    if (c2 != null) {
                        hashMap.put(r.k(), c2);
                        sb = new StringBuilder("2");
                        sb2.append(sb.append(r.k()).append(",").toString());
                    }
                } else if (!r.h()) {
                    arrayList.add(r.k());
                    sb = new StringBuilder(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    sb2.append(sb.append(r.k()).append(",").toString());
                }
            }
        }
        aVar.a(hashMap, arrayList, sb2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(IronSourceBannerLayout ironSourceBannerLayout) {
        return (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) ? false : true;
    }

    public JSONObject a(ArrayList<String> arrayList) {
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        JSONObject jSONObject = new JSONObject();
        JSONObject a2 = a.C0319a.f10560a.a(applicationContext);
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (a2.has(next)) {
                jSONObject.put(next, a2.opt(next));
            }
        }
        return jSONObject;
    }
}
