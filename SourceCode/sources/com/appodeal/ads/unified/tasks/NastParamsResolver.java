package com.appodeal.ads.unified.tasks;

import com.appodeal.ads.utils.ExchangeAd;
/* loaded from: classes2.dex */
final class NastParamsResolver implements AdParamsResolver<ExchangeAd, String> {
    @Override // com.appodeal.ads.unified.tasks.AdParamsResolver
    public void processResponse(ExchangeAd exchangeAd, AdParamsResolverCallback<String> adParamsResolverCallback) {
        adParamsResolverCallback.onResolve(exchangeAd.getAdm());
    }
}
