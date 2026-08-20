package com.bytedance.sdk.openadsdk.api.reward;
/* loaded from: classes2.dex */
public class PAGRewardItem {
    private final int Qhi;
    private final String cJ;

    public PAGRewardItem(int i, String str) {
        this.Qhi = i;
        this.cJ = str;
    }

    public int getRewardAmount() {
        return this.Qhi;
    }

    public String getRewardName() {
        return this.cJ;
    }
}
