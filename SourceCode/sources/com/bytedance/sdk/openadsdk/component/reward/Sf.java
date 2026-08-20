package com.bytedance.sdk.openadsdk.component.reward;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.lG;
/* compiled from: PAGRewardProxyListener.java */
/* loaded from: classes2.dex */
public class Sf implements PAGRewardedAdLoadListener {
    final PAGRewardedAdLoadListener Qhi;

    public Sf(PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        this.Qhi = pAGRewardedAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.fl
    public void onError(final int i, final String str) {
        if (this.Qhi != null) {
            lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sf.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Sf.this.Qhi != null) {
                        Sf.this.Qhi.onError(i, str);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* renamed from: Qhi */
    public void onAdLoaded(final PAGRewardedAd pAGRewardedAd) {
        if (this.Qhi != null) {
            lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Sf.2
                @Override // java.lang.Runnable
                public void run() {
                    if (Sf.this.Qhi != null) {
                        Sf.this.Qhi.onAdLoaded(pAGRewardedAd);
                    }
                }
            });
        }
    }
}
