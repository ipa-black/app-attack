package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinErrorCodes;
import java.util.Collections;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class aa extends ab {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.e f5678a;

    /* renamed from: e  reason: collision with root package name */
    private final AppLovinAdRewardListener f5679e;

    public aa(com.applovin.impl.sdk.ad.e eVar, AppLovinAdRewardListener appLovinAdRewardListener, com.applovin.impl.sdk.n nVar) {
        super("TaskValidateAppLovinReward", nVar);
        this.f5678a = eVar;
        this.f5679e = appLovinAdRewardListener;
    }

    @Override // com.applovin.impl.sdk.e.y
    public String a() {
        return "2.0/vr";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.sdk.e.y
    public void a(int i) {
        String str;
        super.a(i);
        if (i < 400 || i >= 500) {
            this.f5679e.validationRequestFailed(this.f5678a, i);
            str = "network_timeout";
        } else {
            this.f5679e.userRewardRejected(this.f5678a, Collections.emptyMap());
            str = "rejected";
        }
        this.f5678a.a(com.applovin.impl.sdk.b.c.a(str));
    }

    @Override // com.applovin.impl.sdk.e.ab
    protected void a(com.applovin.impl.sdk.b.c cVar) {
        this.f5678a.a(cVar);
        String b2 = cVar.b();
        Map<String, String> a2 = cVar.a();
        if (b2.equals("accepted")) {
            this.f5679e.userRewardVerified(this.f5678a, a2);
        } else if (b2.equals("quota_exceeded")) {
            this.f5679e.userOverQuota(this.f5678a, a2);
        } else if (b2.equals("rejected")) {
            this.f5679e.userRewardRejected(this.f5678a, a2);
        } else {
            this.f5679e.validationRequestFailed(this.f5678a, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
        }
    }

    @Override // com.applovin.impl.sdk.e.y
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, "zone_id", this.f5678a.getAdZone().a());
        String clCode = this.f5678a.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }

    @Override // com.applovin.impl.sdk.e.ab
    protected boolean b() {
        return this.f5678a.aE();
    }
}
