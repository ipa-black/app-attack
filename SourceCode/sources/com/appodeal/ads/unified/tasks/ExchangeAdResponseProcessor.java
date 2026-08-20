package com.appodeal.ads.unified.tasks;

import android.text.TextUtils;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.q4;
import com.appodeal.ads.segments.n;
import com.appodeal.ads.utils.ExchangeAd;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ExchangeAdResponseProcessor implements AdResponseProcessor<ExchangeAd> {
    @Override // com.appodeal.ads.unified.tasks.AdResponseProcessor
    public void processResponse(URLConnection uRLConnection, String str, AdParamsProcessorCallback<ExchangeAd> adParamsProcessorCallback) {
        if (TextUtils.isEmpty(str) || TextUtils.getTrimmedLength(str) == 0) {
            adParamsProcessorCallback.onProcessFail(LoadingError.NoFill);
            return;
        }
        Map<String, List<String>> headerFields = uRLConnection.getHeaderFields();
        q4 q4Var = q4.f7303a;
        adParamsProcessorCallback.onProcessSuccess(new ExchangeAd(str, headerFields, n.c().f7528a));
    }
}
