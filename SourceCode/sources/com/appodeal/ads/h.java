package com.appodeal.ads;
/* loaded from: classes.dex */
public final class h implements AdNetworkMediationParams {

    /* renamed from: a  reason: collision with root package name */
    public r f6697a;

    /* renamed from: b  reason: collision with root package name */
    public final RestrictedData f6698b;

    public h(r rVar, j4 j4Var) {
        this.f6697a = rVar;
        this.f6698b = j4Var;
    }

    @Override // com.appodeal.ads.AdNetworkMediationParams
    public final String getAppName() {
        return i0.f6728a;
    }

    @Override // com.appodeal.ads.AdNetworkMediationParams
    public final String getImpressionId() {
        return this.f6697a.r;
    }

    @Override // com.appodeal.ads.AppodealStateParams
    public final RestrictedData getRestrictedData() {
        return this.f6698b;
    }

    @Override // com.appodeal.ads.AdNetworkMediationParams
    public final String getStoreUrl() {
        return i0.f6729b;
    }

    @Override // com.appodeal.ads.AdNetworkMediationParams
    public final boolean isCoronaApp() {
        return i0.f6730c;
    }

    @Override // com.appodeal.ads.AppodealStateParams
    public final boolean isTestMode() {
        return r0.f7342b;
    }
}
