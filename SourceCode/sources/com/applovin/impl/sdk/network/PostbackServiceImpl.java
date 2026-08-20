package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.n;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinPostbackService;
/* loaded from: classes.dex */
public class PostbackServiceImpl implements AppLovinPostbackService {

    /* renamed from: a  reason: collision with root package name */
    private final n f5890a;

    public PostbackServiceImpl(n nVar) {
        this.f5890a = nVar;
    }

    @Override // com.applovin.sdk.AppLovinPostbackService
    public void dispatchPostbackAsync(String str, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackRequest(i.b(this.f5890a).a(str).c(false).a(), appLovinPostbackListener);
    }

    public void dispatchPostbackRequest(i iVar, o.a aVar, AppLovinPostbackListener appLovinPostbackListener) {
        this.f5890a.V().a(new com.applovin.impl.sdk.e.g(iVar, aVar, this.f5890a, appLovinPostbackListener), aVar);
    }

    public void dispatchPostbackRequest(i iVar, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackRequest(iVar, o.a.POSTBACKS, appLovinPostbackListener);
    }

    public String toString() {
        return "PostbackService{}";
    }
}
