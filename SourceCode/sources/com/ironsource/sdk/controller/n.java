package com.ironsource.sdk.controller;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    String f11729a;

    /* renamed from: b  reason: collision with root package name */
    JSONObject f11730b;

    /* renamed from: c  reason: collision with root package name */
    String f11731c;

    /* renamed from: d  reason: collision with root package name */
    String f11732d;

    public n(JSONObject jSONObject) {
        this.f11729a = jSONObject.optString("functionName");
        this.f11730b = jSONObject.optJSONObject("functionParams");
        this.f11731c = jSONObject.optString(FirebaseAnalytics.Param.SUCCESS);
        this.f11732d = jSONObject.optString("fail");
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("functionName", this.f11729a);
            jSONObject.put("functionParams", this.f11730b);
            jSONObject.put(FirebaseAnalytics.Param.SUCCESS, this.f11731c);
            jSONObject.put("fail", this.f11732d);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }
}
