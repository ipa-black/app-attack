package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: FeedContinueModel.java */
/* loaded from: classes2.dex */
public class Tgh implements ac {
    private long Qhi;
    private long cJ;

    public void Qhi(long j) {
        this.Qhi = j;
    }

    public void cJ(long j) {
        this.cJ = j;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac
    public void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.Qhi);
            jSONObject.put("total_duration", this.cJ);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("FeedContinueModel", th.getMessage());
        }
    }
}
