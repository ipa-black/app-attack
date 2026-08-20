package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.tP;
import org.json.JSONObject;
/* compiled from: BaseEventModel.java */
/* loaded from: classes2.dex */
public class Qhi<T extends ac> {
    private T CJ;
    private tP Qhi;
    private JSONObject ac;
    private String cJ;
    private boolean fl = false;

    public Qhi(tP tPVar, String str, JSONObject jSONObject, T t) {
        this.Qhi = tPVar;
        this.cJ = str;
        this.ac = jSONObject;
        this.CJ = t;
    }

    public tP Qhi() {
        return this.Qhi;
    }

    public String cJ() {
        return this.cJ;
    }

    public JSONObject ac() {
        if (this.ac == null) {
            this.ac = new JSONObject();
        }
        return this.ac;
    }

    public T CJ() {
        return this.CJ;
    }

    public boolean fl() {
        return this.fl;
    }

    public void Qhi(boolean z) {
        this.fl = z;
    }
}
