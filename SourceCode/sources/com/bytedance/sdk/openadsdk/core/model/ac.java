package com.bytedance.sdk.openadsdk.core.model;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;
/* compiled from: AppInfo.java */
/* loaded from: classes2.dex */
public class ac {
    private int ROR;
    private String Qhi = "";
    private String cJ = "";
    private String ac = "";
    private String CJ = "";
    private double fl = -1.0d;
    private int Tgh = -1;

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

    public String ac() {
        return this.ac;
    }

    public void ac(String str) {
        this.ac = str;
    }

    public double CJ() {
        return this.fl;
    }

    public void Qhi(double d2) {
        if (d2 < 1.0d || d2 > 5.0d) {
            this.fl = -1.0d;
        } else {
            this.fl = d2;
        }
    }

    public int fl() {
        return this.Tgh;
    }

    public void Qhi(int i) {
        if (i <= 0) {
            this.Tgh = -1;
        } else {
            this.Tgh = i;
        }
    }

    public int Tgh() {
        return this.ROR;
    }

    public void cJ(int i) {
        this.ROR = i;
    }

    public String ROR() {
        return this.CJ;
    }

    public void CJ(String str) {
        this.CJ = str;
    }

    public JSONObject Sf() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("app_name", cJ());
            jSONObject.put("app_size", Tgh());
            jSONObject.put("comment_num", fl());
            jSONObject.put("download_url", Qhi());
            jSONObject.put("package_name", ac());
            jSONObject.put(FirebaseAnalytics.Param.SCORE, CJ());
            jSONObject.put("app_category", ROR());
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.cJ(e2.toString());
        }
        return jSONObject;
    }
}
