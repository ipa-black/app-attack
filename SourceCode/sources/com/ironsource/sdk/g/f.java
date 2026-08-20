package com.ironsource.sdk.g;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class f {

    /* renamed from: d  reason: collision with root package name */
    public JSONObject f12067d;

    public f() {
        this.f12067d = new JSONObject();
    }

    public f(String str) {
        try {
            this.f12067d = new JSONObject(str);
        } catch (Exception unused) {
            this.f12067d = new JSONObject();
        }
    }

    private Object a(Object obj) {
        if (obj == JSONObject.NULL) {
            return null;
        }
        return obj instanceof JSONObject ? a((JSONObject) obj) : obj instanceof JSONArray ? a((JSONArray) obj) : obj;
    }

    private Map<String, Object> a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, a(jSONObject.get(next)));
        }
        return hashMap;
    }

    public final List a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(a(jSONArray.get(i)));
        }
        return arrayList;
    }

    public final void a(String str, String str2) {
        try {
            this.f12067d.put(str, str2);
        } catch (Exception unused) {
        }
    }

    public final void a(String str, JSONObject jSONObject) {
        try {
            this.f12067d.put(str, jSONObject);
        } catch (Exception unused) {
        }
    }

    public final boolean a(String str) {
        return this.f12067d.has(str);
    }

    public final boolean b(String str) {
        return this.f12067d.isNull(str);
    }

    public final Object c(String str) {
        try {
            return this.f12067d.get(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public final String d(String str) {
        try {
            return this.f12067d.getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    public final boolean e(String str) {
        try {
            return this.f12067d.getBoolean(str);
        } catch (JSONException unused) {
            return false;
        }
    }

    public String toString() {
        JSONObject jSONObject = this.f12067d;
        return jSONObject == null ? "" : jSONObject.toString();
    }
}
