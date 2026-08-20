package com.bytedance.sdk.openadsdk.core.model;

import org.json.JSONObject;
/* compiled from: DeepLink.java */
/* loaded from: classes2.dex */
public class zc {
    private String Qhi;
    private int ac;
    private String cJ;

    public String Qhi() {
        return this.Qhi;
    }

    public void Qhi(String str) {
        this.Qhi = str;
    }

    public String cJ() {
        return this.cJ;
    }

    public void cJ(String str) {
        this.cJ = str;
    }

    public int ac() {
        return this.ac;
    }

    public void Qhi(int i) {
        this.ac = i;
    }

    public JSONObject CJ() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("u", this.Qhi);
            jSONObject.put("ft", this.ac);
            jSONObject.put("fu", this.cJ);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }
}
