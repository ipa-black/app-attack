package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Map;
/* loaded from: classes.dex */
public class l extends k {

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.c f5712e;

    public l(com.applovin.impl.sdk.ad.c cVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super(com.applovin.impl.sdk.ad.d.a("adtoken_zone"), appLovinAdLoadListener, "TaskFetchTokenAd", nVar);
        this.f5712e = cVar;
    }

    @Override // com.applovin.impl.sdk.e.h
    protected Map<String, String> a() {
        Map<String, String> map = CollectionUtils.map(2);
        map.put("adtoken", this.f5712e.a());
        map.put("adtoken_prefix", this.f5712e.c());
        return map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.sdk.e.h
    public com.applovin.impl.sdk.ad.b h() {
        return com.applovin.impl.sdk.ad.b.REGULAR_AD_TOKEN;
    }
}
