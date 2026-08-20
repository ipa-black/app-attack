package com.applovin.impl.sdk.nativeAd;

import com.applovin.impl.sdk.e.h;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.i;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c extends h {

    /* renamed from: e  reason: collision with root package name */
    private final AppLovinNativeAdLoadListener f5880e;

    public c(com.applovin.impl.sdk.ad.d dVar, String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, n nVar) {
        super(dVar, str, nVar);
        this.f5880e = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.impl.sdk.e.h
    protected com.applovin.impl.sdk.e.a a(JSONObject jSONObject) {
        return new d(jSONObject, this.f5880e, this.f5674b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.sdk.e.h
    public void a(int i) {
        super.a(i);
        this.f5880e.onNativeAdLoadFailed(i);
    }

    @Override // com.applovin.impl.sdk.e.h
    protected String b() {
        return i.i(this.f5674b);
    }

    @Override // com.applovin.impl.sdk.e.h
    protected String c() {
        return i.j(this.f5674b);
    }
}
