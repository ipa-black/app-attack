package com.ironsource.sdk;

import com.ironsource.sdk.g.d;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f11933a = "ManRewInst_";

    public static String a() {
        return String.valueOf(System.currentTimeMillis());
    }

    public static String a(b bVar) {
        return (bVar.a() ? d.e.Banner : bVar.f11519a ? d.e.RewardedVideo : d.e.Interstitial).toString();
    }

    public static String a(JSONObject jSONObject) {
        return jSONObject.optBoolean("rewarded") ? f11933a + jSONObject.optString("name") : jSONObject.optString("name");
    }
}
