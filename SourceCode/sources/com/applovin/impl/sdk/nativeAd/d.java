package com.applovin.impl.sdk.nativeAd;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAdFormat;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f5881a;

    /* renamed from: e  reason: collision with root package name */
    private final AppLovinNativeAdLoadListener f5882e;

    public d(JSONObject jSONObject, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, n nVar) {
        super("TaskProcessNativeAdResponse", nVar);
        this.f5881a = jSONObject;
        this.f5882e = appLovinNativeAdLoadListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray = JsonUtils.getJSONArray(this.f5881a, "ads", new JSONArray());
        if (jSONArray.length() > 0) {
            v vVar = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Processing ad...");
            }
            this.f5674b.V().a((com.applovin.impl.sdk.e.a) new e(JsonUtils.getJSONObject(jSONArray, 0, new JSONObject()), this.f5881a, this.f5882e, this.f5674b));
            return;
        }
        v vVar2 = this.f5676d;
        if (v.a()) {
            this.f5676d.d(this.f5675c, "No ads were returned from the server");
        }
        Utils.maybeHandleNoFillResponseForPublisher("native_native", MaxAdFormat.NATIVE, this.f5881a, this.f5674b);
        this.f5882e.onNativeAdLoadFailed(204);
    }
}
