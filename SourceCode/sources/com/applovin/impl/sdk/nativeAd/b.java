package com.applovin.impl.sdk.nativeAd;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import java.util.Map;
/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.c f5879e;

    public b(com.applovin.impl.sdk.ad.c cVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, n nVar) {
        super(com.applovin.impl.sdk.ad.d.a("adtoken_zone"), "TaskFetchNativeTokenAd", appLovinNativeAdLoadListener, nVar);
        this.f5879e = cVar;
    }

    @Override // com.applovin.impl.sdk.e.h
    protected Map<String, String> a() {
        Map<String, String> map = CollectionUtils.map(2);
        map.put("adtoken", this.f5879e.a());
        map.put("adtoken_prefix", this.f5879e.c());
        return map;
    }
}
