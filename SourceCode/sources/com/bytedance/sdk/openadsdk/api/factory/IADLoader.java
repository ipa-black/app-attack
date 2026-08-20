package com.bytedance.sdk.openadsdk.api.factory;

import com.bytedance.sdk.openadsdk.api.PAGRequest;
import com.bytedance.sdk.openadsdk.common.fl;
/* loaded from: classes2.dex */
public interface IADLoader<R extends PAGRequest, L extends fl> {
    void loadAd(String str, R r, L l);
}
