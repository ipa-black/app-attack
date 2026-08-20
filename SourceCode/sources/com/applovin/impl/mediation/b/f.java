package com.applovin.impl.mediation.b;

import com.applovin.impl.sdk.e.w;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f extends w {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.mediation.a.c f4855a;

    public f(com.applovin.impl.mediation.a.c cVar, n nVar) {
        super("TaskReportMaxReward", nVar);
        this.f4855a = cVar;
    }

    @Override // com.applovin.impl.sdk.e.y
    protected String a() {
        return "2.0/mcr";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.sdk.e.y
    public void a(int i) {
        super.a(i);
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Failed to report reward for mediated ad: " + this.f4855a + " - error code: " + i);
        }
    }

    @Override // com.applovin.impl.sdk.e.y
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "ad_unit_id", this.f4855a.getAdUnitId());
        JsonUtils.putString(jSONObject, IronSourceConstants.EVENTS_PLACEMENT_NAME, this.f4855a.getPlacement());
        JsonUtils.putString(jSONObject, "custom_data", this.f4855a.ag());
        String I = this.f4855a.I();
        if (!StringUtils.isValidString(I)) {
            I = "NO_MCODE";
        }
        JsonUtils.putString(jSONObject, "mcode", I);
        String H = this.f4855a.H();
        if (!StringUtils.isValidString(H)) {
            H = "NO_BCODE";
        }
        JsonUtils.putString(jSONObject, "bcode", H);
    }

    @Override // com.applovin.impl.sdk.e.w
    protected com.applovin.impl.sdk.b.c b() {
        return this.f4855a.L();
    }

    @Override // com.applovin.impl.sdk.e.w
    protected void b(JSONObject jSONObject) {
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Reported reward successfully for mediated ad: " + this.f4855a);
        }
    }

    @Override // com.applovin.impl.sdk.e.w
    protected void c() {
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.e(this.f5675c, "No reward result was found for mediated ad: " + this.f4855a);
        }
    }
}
