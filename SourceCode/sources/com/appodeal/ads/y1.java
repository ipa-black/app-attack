package com.appodeal.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class y1 {
    public static void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (jSONObject.optBoolean("refresh")) {
            r0.d();
        }
        if (jSONObject.optBoolean("session_drop_store")) {
            q4.m().b();
        }
    }
}
