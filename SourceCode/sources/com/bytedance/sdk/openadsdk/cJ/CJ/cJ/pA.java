package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: PlayErrorModel.java */
/* loaded from: classes2.dex */
public class pA implements ac {
    private final int CJ;
    private long Qhi;
    private final int ac;
    private long cJ;
    private final String fl;

    public pA(com.bykv.vk.openvk.component.video.api.ac.Qhi qhi) {
        this.ac = qhi.Qhi();
        this.CJ = qhi.cJ();
        this.fl = qhi.ac();
    }

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
            jSONObject.put("error_code", this.ac);
            jSONObject.put("extra_error_code", this.CJ);
            jSONObject.put("error_message", this.fl);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("PlayErrorModel", th.getMessage());
        }
    }
}
