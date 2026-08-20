package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.impl.ob.Tl;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Ii {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f13206a;

    static {
        HashSet hashSet = new HashSet();
        f13206a = hashSet;
        hashSet.add("get_ad");
        hashSet.add("report");
        hashSet.add("report_ad");
        hashSet.add(FirebaseAnalytics.Param.LOCATION);
        hashSet.add("startup");
        hashSet.add("diagnostic");
        hashSet.add("mediascope");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        String str;
        List<String> a2;
        String str2 = "";
        try {
            Object jSONObject = new JSONObject();
            try {
                jSONObject = aVar.get("query_hosts");
            } catch (Throwable unused) {
            }
            JSONObject optJSONObject = ((JSONObject) jSONObject).optJSONObject("list");
            if (optJSONObject != null) {
                try {
                    str = optJSONObject.getJSONObject("get_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused2) {
                    str = "";
                }
                if (!TextUtils.isEmpty(str)) {
                    ui.f(str);
                }
                List<String> a3 = a(optJSONObject, "report");
                if (!A2.b(a3)) {
                    ui.f(a3);
                }
                try {
                    str2 = optJSONObject.getJSONObject("report_ad").getJSONArray("urls").getString(0);
                } catch (Throwable unused3) {
                }
                if (!TextUtils.isEmpty(str2)) {
                    ui.g(str2);
                }
                List<String> a4 = a(optJSONObject, FirebaseAnalytics.Param.LOCATION);
                if (!A2.b(a4)) {
                    ui.c(a4);
                }
                List<String> a5 = a(optJSONObject, "startup");
                if (!A2.b(a5)) {
                    ui.h(a5);
                }
                List<String> a6 = a(optJSONObject, "diagnostic");
                if (!A2.b(a6)) {
                    ui.a(a6);
                }
                List<String> a7 = a(optJSONObject, "mediascope");
                if (!A2.b(a7)) {
                    ui.e(a7);
                }
                HashMap hashMap = new HashMap();
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!f13206a.contains(next) && (a2 = a(optJSONObject, next)) != null) {
                        hashMap.put(next, a2);
                    }
                }
                ui.a(hashMap);
            }
        } catch (Throwable unused4) {
        }
    }

    private List<String> a(JSONObject jSONObject, String str) {
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject(str);
            if (optJSONObject != null) {
                return Tl.b(optJSONObject.getJSONArray("urls"));
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
