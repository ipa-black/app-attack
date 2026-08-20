package com.appodeal.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class w1 {
    public static void a(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.optBoolean("session_drop_store")) {
            return;
        }
        q4.m().b();
    }
}
