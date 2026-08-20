package com.appodeal.ads.unified.mraid;

import android.app.Activity;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.unified.UnifiedMrec;
import com.appodeal.ads.unified.UnifiedMrecCallback;
import com.appodeal.ads.unified.UnifiedMrecParams;
import com.appodeal.ads.unified.mraid.UnifiedMraidUtils;
/* loaded from: classes2.dex */
public abstract class UnifiedMraidMrec<NetworkRequestParams> extends UnifiedMrec<NetworkRequestParams> implements UnifiedMraidUtils.UnifiedViewMraid<UnifiedMrecParams, UnifiedMrecCallback> {
    private final UnifiedMraidUtils.UnifiedMraidViewAd<UnifiedMrecParams, UnifiedMrecCallback, NetworkRequestParams> unifiedMraid = new UnifiedMraidUtils.UnifiedMraidViewAd<>(this);

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedViewMraid
    public UnifiedMraidViewListener<UnifiedMrecCallback> createListener(Context context, UnifiedMrecParams unifiedMrecParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedMrecCallback unifiedMrecCallback) {
        return new UnifiedMraidMrecListener(unifiedMrecCallback, unifiedMraidNetworkParams);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.appodeal.ads.unified.UnifiedAd
    public /* bridge */ /* synthetic */ void load(ContextProvider contextProvider, UnifiedAdParams unifiedAdParams, Object obj, UnifiedAdCallback unifiedAdCallback) {
        load(contextProvider, (UnifiedMrecParams) unifiedAdParams, (UnifiedMrecParams) obj, (UnifiedMrecCallback) unifiedAdCallback);
    }

    public void load(ContextProvider contextProvider, UnifiedMrecParams unifiedMrecParams, NetworkRequestParams networkrequestparams, UnifiedMrecCallback unifiedMrecCallback) {
        this.unifiedMraid.load(contextProvider, (ContextProvider) unifiedMrecParams, (UnifiedMrecParams) networkrequestparams, (NetworkRequestParams) unifiedMrecCallback);
    }

    @Override // com.appodeal.ads.unified.mraid.UnifiedMraidUtils.UnifiedMraid
    public void loadMraid(Context context, UnifiedMrecParams unifiedMrecParams, UnifiedMraidNetworkParams unifiedMraidNetworkParams, UnifiedMrecCallback unifiedMrecCallback) {
        this.unifiedMraid.loadMraid(context, (Context) unifiedMrecParams, unifiedMraidNetworkParams, (UnifiedMraidNetworkParams) unifiedMrecCallback);
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onClicked() {
        super.onClicked();
        this.unifiedMraid.onClicked();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onDestroy() {
        this.unifiedMraid.onDestroy();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onFinished() {
        super.onFinished();
        this.unifiedMraid.onFinished();
    }

    @Override // com.appodeal.ads.unified.UnifiedAd
    public void onPrepareToShow(Activity activity, UnifiedMrecParams unifiedMrecParams) {
        super.onPrepareToShow(activity, (Activity) unifiedMrecParams);
        this.unifiedMraid.onPrepareToShow(activity, (Activity) unifiedMrecParams);
    }
}
