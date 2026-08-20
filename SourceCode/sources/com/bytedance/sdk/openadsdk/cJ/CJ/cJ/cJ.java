package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: EndcardSkipModel.java */
/* loaded from: classes2.dex */
public class cJ implements ac {
    private int CJ;
    private long Qhi;
    private int ac;
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

    public void cJ(int i) {
        this.CJ = i;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac
    public void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.Qhi);
            jSONObject.put("total_duration", this.cJ);
            jSONObject.put("vbtt_skip_type", this.ac);
            jSONObject.put("skip_reason", this.CJ);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("EndcardSkipModel", th.getMessage());
        }
    }
}
