package com.bytedance.sdk.component.Sf.cJ;

import org.json.JSONObject;
/* compiled from: ThreadLogModel.java */
/* loaded from: classes2.dex */
public class Qhi {
    public int CJ;
    public int Qhi;
    public int ac;
    public int cJ;

    public Qhi(int i, int i2, int i3, int i4) {
        this.Qhi = i;
        this.cJ = i2;
        this.ac = i3;
        this.CJ = i4;
    }

    public JSONObject Qhi() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_thread_num", this.Qhi);
            jSONObject.put("sdk_max_thread_num", this.cJ);
            jSONObject.put("app_thread_num", this.ac);
            jSONObject.put("app_max_thread_num", this.CJ);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
