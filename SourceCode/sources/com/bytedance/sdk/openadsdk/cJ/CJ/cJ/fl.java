package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: FeedBreakModel.java */
/* loaded from: classes2.dex */
public class fl implements ac {
    public int CJ = 0;
    public long Qhi;
    public int ac;
    public long cJ;

    public void Qhi(long j) {
        this.Qhi = j;
    }

    public void cJ(long j) {
        this.cJ = j;
    }

    public void Qhi(int i) {
        this.ac = i;
    }

    public void cJ(int i) {
        this.CJ = i;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac
    public void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("total_duration", this.Qhi);
            jSONObject.put("buffers_time", this.cJ);
            jSONObject.put("break_reason", this.ac);
            jSONObject.put("video_backup", this.CJ);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("FeedBreakModel", th.getMessage());
        }
    }
}
