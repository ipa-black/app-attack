package com.applovin.impl.sdk.e;

import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class k extends h {

    /* renamed from: e  reason: collision with root package name */
    private final AppLovinAdLoadListener f5711e;

    public k(com.applovin.impl.sdk.ad.d dVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        this(dVar, appLovinAdLoadListener, "TaskFetchNextAd", nVar);
    }

    public k(com.applovin.impl.sdk.ad.d dVar, AppLovinAdLoadListener appLovinAdLoadListener, String str, com.applovin.impl.sdk.n nVar) {
        super(dVar, str, nVar);
        this.f5711e = appLovinAdLoadListener;
    }

    @Override // com.applovin.impl.sdk.e.h
    protected a a(JSONObject jSONObject) {
        return new p(jSONObject, this.f5702a, h(), this.f5711e, this.f5674b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.sdk.e.h
    public void a(int i) {
        super.a(i);
        this.f5711e.failedToReceiveAd(i);
    }

    @Override // com.applovin.impl.sdk.e.h
    protected String b() {
        return com.applovin.impl.sdk.utils.i.g(this.f5674b);
    }

    @Override // com.applovin.impl.sdk.e.h
    protected String c() {
        return com.applovin.impl.sdk.utils.i.h(this.f5674b);
    }
}
