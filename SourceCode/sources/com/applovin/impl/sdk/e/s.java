package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s extends a {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f5758a;

    /* renamed from: e  reason: collision with root package name */
    private final JSONObject f5759e;

    /* renamed from: f  reason: collision with root package name */
    private final AppLovinAdLoadListener f5760f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.b f5761g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskRenderAppLovinAd", nVar);
        this.f5758a = jSONObject;
        this.f5759e = jSONObject2;
        this.f5761g = bVar;
        this.f5760f = appLovinAdLoadListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Rendering ad...");
        }
        com.applovin.impl.sdk.ad.a aVar = new com.applovin.impl.sdk.ad.a(this.f5758a, this.f5759e, this.f5761g, this.f5674b);
        boolean booleanValue = JsonUtils.getBoolean(this.f5758a, "gs_load_immediately", false).booleanValue();
        boolean booleanValue2 = JsonUtils.getBoolean(this.f5758a, "vs_load_immediately", true).booleanValue();
        d dVar = new d(aVar, this.f5674b, this.f5760f);
        dVar.a(booleanValue2);
        dVar.b(booleanValue);
        o.a aVar2 = o.a.CACHING_OTHER;
        if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.br)).booleanValue()) {
            if (aVar.getSize() == AppLovinAdSize.INTERSTITIAL && aVar.getType() == AppLovinAdType.REGULAR) {
                aVar2 = o.a.CACHING_INTERSTITIAL;
            } else if (aVar.getSize() == AppLovinAdSize.INTERSTITIAL && aVar.getType() == AppLovinAdType.INCENTIVIZED) {
                aVar2 = o.a.CACHING_INCENTIVIZED;
            }
        }
        this.f5674b.V().a(dVar, aVar2);
    }
}
