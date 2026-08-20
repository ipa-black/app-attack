package com.applovin.impl.mediation.b;

import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class g extends ab {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.mediation.a.c f4856a;

    public g(com.applovin.impl.mediation.a.c cVar, n nVar) {
        super("TaskValidateMaxReward", nVar);
        this.f4856a = cVar;
    }

    @Override // com.applovin.impl.sdk.e.y
    protected String a() {
        return "2.0/mvr";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.sdk.e.y
    public void a(int i) {
        super.a(i);
        this.f4856a.a(com.applovin.impl.sdk.b.c.a((i < 400 || i >= 500) ? "network_timeout" : "rejected"));
    }

    @Override // com.applovin.impl.sdk.e.ab
    protected void a(com.applovin.impl.sdk.b.c cVar) {
        this.f4856a.a(cVar);
    }

    @Override // com.applovin.impl.sdk.e.y
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.f4856a.getAdUnitId());
        JsonUtils.putString(jSONObject, IronSourceConstants.EVENTS_PLACEMENT_NAME, this.f4856a.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.f4856a.ag());
        JsonUtils.putString(jSONObject, FirebaseAnalytics.Param.AD_FORMAT, this.f4856a.getFormat().getLabel());
        String I = this.f4856a.I();
        if (!StringUtils.isValidString(I)) {
            I = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", I);
        String H = this.f4856a.H();
        if (!StringUtils.isValidString(H)) {
            H = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", H);
    }

    @Override // com.applovin.impl.sdk.e.ab
    protected boolean b() {
        return this.f4856a.J();
    }
}
