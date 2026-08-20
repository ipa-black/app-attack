package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: LoadVideoStartModel.java */
/* loaded from: classes2.dex */
public class zc implements ac {
    private final String Qhi;
    private final long cJ;

    public zc(String str, long j) {
        this.Qhi = str;
        this.cJ = j;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac
    public void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.Qhi);
            jSONObject.put("preload_size", this.cJ);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("LoadVideoStartModel", th.getMessage());
        }
    }
}
