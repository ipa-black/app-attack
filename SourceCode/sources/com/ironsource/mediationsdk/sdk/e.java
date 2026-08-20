package com.ironsource.mediationsdk.sdk;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static e f11334a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f11335b = new JSONObject();

    private e() {
    }

    public static synchronized e a() {
        e eVar;
        synchronized (e.class) {
            if (f11334a == null) {
                f11334a = new e();
            }
            eVar = f11334a;
        }
        return eVar;
    }

    public final synchronized String a(String str) {
        return this.f11335b.optString(str);
    }

    public final synchronized void a(String str, Object obj) {
        try {
            this.f11335b.put(str, obj);
        } catch (Exception unused) {
        }
    }

    public final synchronized void a(Map<String, Object> map) {
        if (map != null) {
            for (String str : map.keySet()) {
                a(str, map.get(str));
            }
        }
    }

    public final synchronized JSONObject b() {
        return this.f11335b;
    }
}
