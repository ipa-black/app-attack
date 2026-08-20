package com.ironsource.sdk.c;

import com.onesignal.outcomes.data.OutcomeEventsTable;
import io.bidmachine.utils.IabUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11571a = "d";

    /* renamed from: c  reason: collision with root package name */
    private static d f11572c;

    /* renamed from: b  reason: collision with root package name */
    public Map<String, e> f11573b = Collections.synchronizedMap(new HashMap());

    public static synchronized d a() {
        d dVar;
        synchronized (d.class) {
            if (f11572c == null) {
                f11572c = new d();
            }
            dVar = f11572c;
        }
        return dVar;
    }

    public static String a(JSONObject jSONObject) {
        return (jSONObject == null || !jSONObject.has("adViewId")) ? (jSONObject == null || !jSONObject.has(OutcomeEventsTable.COLUMN_NAME_PARAMS)) ? "" : new JSONObject(jSONObject.getString(OutcomeEventsTable.COLUMN_NAME_PARAMS)).getString("adViewId") : jSONObject.getString("adViewId");
    }

    public static boolean b(JSONObject jSONObject) {
        try {
            return jSONObject.getBoolean("shouldCreateContainer");
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private static com.ironsource.sdk.a d(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString("adSize"));
            String obj = jSONObject2.get(IabUtils.KEY_HEIGHT).toString();
            String obj2 = jSONObject2.get(IabUtils.KEY_WIDTH).toString();
            return new com.ironsource.sdk.a(Integer.parseInt(obj2), Integer.parseInt(obj), jSONObject2.get("label").toString());
        } catch (Exception unused) {
            return new com.ironsource.sdk.a();
        }
    }

    public final e a(String str) {
        if (str.isEmpty() || !this.f11573b.containsKey(str)) {
            return null;
        }
        return this.f11573b.get(str);
    }

    public com.ironsource.sdk.a c(JSONObject jSONObject) {
        com.ironsource.sdk.a aVar = new com.ironsource.sdk.a();
        try {
            return d(jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
            return aVar;
        }
    }
}
