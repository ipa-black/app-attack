package com.bytedance.sdk.openadsdk.api;

import com.bytedance.sdk.openadsdk.common.fl;
/* loaded from: classes2.dex */
public interface PAGLoadListener<Ad> extends fl {
    void onAdLoaded(Ad ad);

    @Override // com.bytedance.sdk.openadsdk.common.fl
    void onError(int i, String str);
}
