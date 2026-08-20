package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: LoadVideoSuccessModel.java */
/* loaded from: classes2.dex */
public class ABk implements ac {
    private long CJ;
    private String Qhi;
    private long ac;
    private long cJ;

    public void Qhi(String str) {
        this.Qhi = str;
    }

    public void Qhi(long j) {
        this.cJ = j;
    }

    public void cJ(long j) {
        this.ac = j;
    }

    public void ac(long j) {
        this.CJ = j;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac
    public void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.Qhi);
            jSONObject.put("preload_size", this.cJ);
            jSONObject.put("load_time", this.ac);
            jSONObject.put("local_cache", this.CJ);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("LoadVideoSuccessModel", th.getMessage());
        }
    }
}
