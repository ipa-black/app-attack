package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class v extends w {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.e f5771a;

    public v(com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.sdk.n nVar) {
        super("TaskReportAppLovinReward", nVar);
        this.f5771a = eVar;
    }

    @Override // com.applovin.impl.sdk.e.y
    protected String a() {
        return "2.0/cr";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.sdk.e.y
    public void a(int i) {
        super.a(i);
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.e(this.f5675c, "Failed to report reward for ad: " + this.f5771a + " - error code: " + i);
        }
    }

    @Override // com.applovin.impl.sdk.e.y
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "zone_id", this.f5771a.getAdZone().a());
        JsonUtils.putInt(jSONObject, "fire_percent", this.f5771a.ae());
        String clCode = this.f5771a.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }

    @Override // com.applovin.impl.sdk.e.w
    protected com.applovin.impl.sdk.b.c b() {
        return this.f5771a.aG();
    }

    @Override // com.applovin.impl.sdk.e.w
    protected void b(JSONObject jSONObject) {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Reported reward successfully for ad: " + this.f5771a);
        }
    }

    @Override // com.applovin.impl.sdk.e.w
    protected void c() {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.e(this.f5675c, "No reward result was found for ad: " + this.f5771a);
        }
    }
}
