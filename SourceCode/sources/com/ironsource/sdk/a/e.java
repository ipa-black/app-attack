package com.ironsource.sdk.a;

import com.ironsource.sdk.g.d;
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private com.ironsource.mediationsdk.adunit.a.a f11508a = new com.ironsource.mediationsdk.adunit.a.a();

    public static d.e a(com.ironsource.sdk.g.c cVar, d.e eVar) {
        return (cVar == null || cVar.f12028d == null || cVar.f12028d.get("rewarded") == null) ? eVar : Boolean.parseBoolean(cVar.f12028d.get("rewarded")) ? d.e.RewardedVideo : d.e.Interstitial;
    }

    public static boolean a(com.ironsource.sdk.g.c cVar) {
        if (cVar == null || cVar.f12028d.get("inAppBidding") == null) {
            return false;
        }
        return Boolean.parseBoolean(cVar.f12028d.get("inAppBidding"));
    }

    public void a(int i) {
        com.ironsource.mediationsdk.adunit.a.a.a("sdia", Integer.valueOf(i));
    }

    public void b(int i) {
        com.ironsource.mediationsdk.adunit.a.a.a("sdra", Integer.valueOf(i));
    }

    public void c(int i) {
        com.ironsource.mediationsdk.adunit.a.a.a("sdba", Integer.valueOf(i));
    }
}
