package com.appodeal.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
public final class x1 {
    public static void a(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("token")) == null) {
            return;
        }
        x2.c(optJSONObject);
    }
}
