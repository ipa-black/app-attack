package com.bytedance.sdk.openadsdk.api.model;
/* loaded from: classes2.dex */
public class PAGErrorModel {
    private final int Qhi;
    private final String cJ;

    public PAGErrorModel(int i, String str) {
        this.Qhi = i;
        this.cJ = str;
    }

    public int getErrorCode() {
        return this.Qhi;
    }

    public String getErrorMessage() {
        return this.cJ;
    }
}
