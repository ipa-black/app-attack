package com.bytedance.sdk.openadsdk.core.model;

import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ArbitrageInterceptorInfo.java */
/* loaded from: classes2.dex */
public class Tgh {
    private int CJ;
    private int Qhi;
    private List<Integer> ac;
    private int cJ;
    private List<String> fl;

    public List<String> Qhi() {
        return this.fl;
    }

    public void Qhi(List<String> list) {
        this.fl = list;
    }

    public int cJ() {
        return this.Qhi;
    }

    public void Qhi(int i) {
        this.Qhi = i;
    }

    public int ac() {
        return this.cJ;
    }

    public void cJ(int i) {
        this.cJ = i;
    }

    public List<Integer> CJ() {
        return this.ac;
    }

    public void cJ(List<Integer> list) {
        this.ac = list;
    }

    public int fl() {
        return this.CJ;
    }

    public void ac(int i) {
        this.CJ = i;
    }

    public JSONObject Tgh() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("interceptor_x", this.Qhi);
            jSONObject.put("interceptor_y", this.cJ);
            if (this.ac != null) {
                JSONArray jSONArray = new JSONArray();
                for (Integer num : this.ac) {
                    jSONArray.put(num.intValue());
                }
                jSONObject.put("interceptor_page", jSONArray);
            }
            jSONObject.put("interceptor_interval_time", this.CJ);
            if (this.fl != null) {
                JSONArray jSONArray2 = new JSONArray();
                for (String str : this.fl) {
                    jSONArray2.put(str);
                }
                jSONObject.put("url_regular", jSONArray2);
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.cJ(th.getMessage());
        }
        return jSONObject;
    }
}
