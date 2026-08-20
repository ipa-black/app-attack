package com.bytedance.sdk.openadsdk.core.model;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DspStyle.java */
/* loaded from: classes2.dex */
public class iMK {
    private final int CJ;
    private final int Qhi;
    private final int ac;
    private final int cJ;

    public iMK(JSONObject jSONObject) {
        this.Qhi = jSONObject.optInt("auto_click", 0);
        this.cJ = jSONObject.optInt("close_jump_probability", 0);
        this.ac = jSONObject.optInt("skip_jump_probability", 0);
        this.CJ = jSONObject.optInt("hidden_bar", 0);
    }

    public int Qhi() {
        return this.Qhi;
    }

    public int cJ() {
        int i = this.cJ;
        if (i < 0 || i > 100) {
            return 0;
        }
        return i;
    }

    public int ac() {
        int i = this.ac;
        if (i < 0 || i > 100) {
            return 0;
        }
        return i;
    }

    public boolean CJ() {
        return this.CJ == 1;
    }

    public JSONObject fl() {
        try {
            JSONObject jSONObject = new JSONObject();
            int i = this.Qhi;
            if (i == 1) {
                jSONObject.put("auto_click", i);
            }
            int i2 = this.cJ;
            if (i2 > 0 && i2 <= 100) {
                jSONObject.put("close_jump_probability", i2);
            }
            int i3 = this.ac;
            if (i3 > 0 && i3 <= 100) {
                jSONObject.put("skip_jump_probability", i3);
            }
            if (this.CJ == 1) {
                jSONObject.put("hidden_bar", 1);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public static boolean Qhi(tP tPVar) {
        if (tPVar == null || !tPVar.IC() || tPVar.eG() == null) {
            return false;
        }
        return tPVar.eG().CJ();
    }
}
