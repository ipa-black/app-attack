package com.bytedance.sdk.openadsdk.core.ugen.fl;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UGenTemplateModel.java */
/* loaded from: classes2.dex */
public class Qhi {
    private String CJ;
    private String Qhi;
    private String ac;
    private String cJ;
    private String fl;

    public String Qhi() {
        return this.Qhi;
    }

    public Qhi Qhi(String str) {
        this.Qhi = str;
        return this;
    }

    public String cJ() {
        return this.cJ;
    }

    public Qhi cJ(String str) {
        this.cJ = str;
        return this;
    }

    public String ac() {
        return this.ac;
    }

    public Qhi ac(String str) {
        this.ac = str;
        return this;
    }

    public String CJ() {
        return this.CJ;
    }

    public Qhi CJ(String str) {
        this.CJ = str;
        return this;
    }

    public String fl() {
        return this.fl;
    }

    public Qhi fl(String str) {
        this.fl = str;
        return this;
    }

    public JSONObject Qhi(Qhi qhi) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.Qhi);
            jSONObject.put("md5", this.cJ);
            jSONObject.put("url", this.ac);
            if (qhi != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("id", qhi.Qhi());
                jSONObject2.put("md5", qhi.cJ());
                jSONObject2.put("url", qhi.ac());
                jSONObject.put("overlay", jSONObject2);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }
}
