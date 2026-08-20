package com.appodeal.ads.unified.tasks;

import com.appodeal.ads.unified.vast.UnifiedVastNetworkParams;
import com.appodeal.ads.utils.ExchangeAd;
/* loaded from: classes2.dex */
final class VastParamsResolver implements AdParamsResolver<ExchangeAd, UnifiedVastNetworkParams> {
    private final UnifiedVastNetworkParams inputParams;

    public VastParamsResolver(UnifiedVastNetworkParams unifiedVastNetworkParams) {
        this.inputParams = unifiedVastNetworkParams;
    }

    @Override // com.appodeal.ads.unified.tasks.AdParamsResolver
    public void processResponse(ExchangeAd exchangeAd, AdParamsResolverCallback<UnifiedVastNetworkParams> adParamsResolverCallback) {
        UnifiedVastNetworkParams.Builder adm = new UnifiedVastNetworkParams.Builder(this.inputParams).setAdm(exchangeAd.getAdm());
        if (exchangeAd.getCloseTime() > 0) {
            adm.setCloseTime(exchangeAd.getCloseTime());
        }
        adParamsResolverCallback.onResolve(adm.build());
    }
}
