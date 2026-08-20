package com.appodeal.ads;

import org.json.JSONObject;
@Deprecated
/* loaded from: classes.dex */
public final class g0 implements ApdServiceInitParams {

    /* renamed from: a  reason: collision with root package name */
    public final JSONObject f6668a;

    public g0(JSONObject jSONObject) {
        this.f6668a = jSONObject;
    }

    @Override // com.appodeal.ads.ApdServiceInitParams
    public final JSONObject getJsonData() {
        return this.f6668a;
    }

    @Override // com.appodeal.ads.AppodealStateParams
    public final RestrictedData getRestrictedData() {
        return j4.f6751a;
    }

    @Override // com.appodeal.ads.AppodealStateParams
    public final boolean isTestMode() {
        return j0.f6745c.isTestMode();
    }
}
