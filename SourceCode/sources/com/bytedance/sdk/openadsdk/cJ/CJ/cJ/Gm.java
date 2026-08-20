package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: LoadVideoErrorModel.java */
/* loaded from: classes2.dex */
public class Gm implements ac {
    private int CJ;
    private String Qhi;
    private String Tgh;
    private long ac;
    private long cJ;
    private String fl;

    public void Qhi(String str) {
        this.Qhi = str;
    }

    public void Qhi(long j) {
        this.cJ = j;
    }

    public void cJ(long j) {
        this.ac = j;
    }

    public void Qhi(int i) {
        this.CJ = i;
    }

    public void cJ(String str) {
        this.fl = str;
    }

    public void ac(String str) {
        this.Tgh = str;
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
            jSONObject.put("error_code", this.CJ);
            jSONObject.put("error_message", this.fl);
            jSONObject.put("error_message_server", this.Tgh);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("LoadVideoErrorModel", th.getMessage());
        }
    }
}
