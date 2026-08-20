package com.bytedance.adsdk.Qhi.cJ.cJ.Qhi;

import java.util.Map;
import org.json.JSONObject;
/* compiled from: StringNode.java */
/* loaded from: classes2.dex */
public class qMt implements com.bytedance.adsdk.Qhi.cJ.cJ.Qhi {
    private final String Qhi;

    public qMt(String str) {
        this.Qhi = str;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public Object Qhi(Map<String, JSONObject> map) {
        return this.Qhi;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public com.bytedance.adsdk.Qhi.cJ.CJ.Sf Qhi() {
        return com.bytedance.adsdk.Qhi.cJ.CJ.hm.STRING;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public String cJ() {
        return "'" + this.Qhi + "'";
    }

    public String toString() {
        return cJ();
    }
}
