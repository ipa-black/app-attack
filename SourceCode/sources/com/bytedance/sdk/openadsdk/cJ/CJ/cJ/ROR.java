package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: FeedOverModel.java */
/* loaded from: classes2.dex */
public class ROR implements ac {
    private long Qhi;
    private int ac = 0;
    private long cJ;

    public void Qhi(long j) {
        this.Qhi = j;
    }

    public void cJ(long j) {
        this.cJ = j;
    }

    public void Qhi(int i) {
        this.ac = i;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac
    public void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("total_duration", this.Qhi);
            jSONObject.put("buffers_time", this.cJ);
            jSONObject.put("video_backup", this.ac);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("FeedOverModel", th.getMessage());
        }
    }
}
