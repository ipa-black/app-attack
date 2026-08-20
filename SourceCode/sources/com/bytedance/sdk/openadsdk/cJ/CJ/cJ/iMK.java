package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: PlayBufferModel.java */
/* loaded from: classes2.dex */
public class iMK implements ac {
    public long Qhi;
    public long ac;
    public int cJ;

    public void Qhi(long j) {
        this.Qhi = j;
    }

    public void Qhi(int i) {
        this.cJ = i;
    }

    public void cJ(long j) {
        this.ac = j;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac
    public void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.Qhi);
            jSONObject.put("buffers_count", this.cJ);
            jSONObject.put("total_duration", this.ac);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("PlayBufferModel", th.getMessage());
        }
    }
}
