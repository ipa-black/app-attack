package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONObject;
/* compiled from: OemModel.java */
/* loaded from: classes2.dex */
public class EBS {
    private int CJ;
    private String Qhi;
    private int ac;
    private String cJ;

    public void Qhi(String str) {
        this.Qhi = str;
    }

    public void cJ(String str) {
        this.cJ = str;
    }

    public void Qhi(int i) {
        this.ac = i;
    }

    public void cJ(int i) {
        this.CJ = i;
    }

    public boolean Qhi() {
        return this.CJ == 1;
    }

    public static EBS Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        EBS ebs = new EBS();
        try {
            ebs.Qhi(jSONObject.optString("market_dpl", ""));
            ebs.cJ(jSONObject.optString("market_dpl_auto", ""));
            ebs.Qhi(jSONObject.optInt("exec_type", 0));
            ebs.cJ(jSONObject.optInt("oem_vendor_type", 0));
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("OemModel", th.getMessage());
        }
        return ebs;
    }

    public String cJ() {
        if (this.ac == 2) {
            return this.cJ;
        }
        return this.Qhi;
    }

    public JSONObject ac() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.Qhi)) {
                jSONObject.put("market_dpl", this.Qhi);
            }
            if (!TextUtils.isEmpty(this.cJ)) {
                jSONObject.put("market_dpl_auto", this.cJ);
            }
            jSONObject.put("exec_type", this.ac);
            jSONObject.put("oem_vendor_type", this.CJ);
            return jSONObject;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("OemModel", th.getMessage());
            return null;
        }
    }
}
