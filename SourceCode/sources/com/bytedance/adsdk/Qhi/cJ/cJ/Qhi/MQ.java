package com.bytedance.adsdk.Qhi.cJ.cJ.Qhi;

import java.util.Map;
import org.json.JSONObject;
/* compiled from: QuestionNodeImpl.java */
/* loaded from: classes2.dex */
public class MQ implements com.bytedance.adsdk.Qhi.cJ.cJ.cJ {
    private com.bytedance.adsdk.Qhi.cJ.cJ.Qhi Qhi;
    private com.bytedance.adsdk.Qhi.cJ.cJ.Qhi ac;
    private com.bytedance.adsdk.Qhi.cJ.cJ.Qhi cJ;

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public Object Qhi(Map<String, JSONObject> map) {
        Object Qhi = this.Qhi.Qhi(map);
        if (Qhi == null) {
            return null;
        }
        if (((Boolean) Qhi).booleanValue()) {
            return this.cJ.Qhi(map);
        }
        return this.ac.Qhi(map);
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public com.bytedance.adsdk.Qhi.cJ.CJ.Sf Qhi() {
        return com.bytedance.adsdk.Qhi.cJ.CJ.hm.OPERATOR_RESULT;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.cJ
    public void Qhi(com.bytedance.adsdk.Qhi.cJ.cJ.Qhi qhi) {
        this.Qhi = qhi;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.cJ
    public void cJ(com.bytedance.adsdk.Qhi.cJ.cJ.Qhi qhi) {
        this.cJ = qhi;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.cJ
    public void ac(com.bytedance.adsdk.Qhi.cJ.cJ.Qhi qhi) {
        this.ac = qhi;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public String cJ() {
        return this.Qhi.cJ() + "?" + this.cJ.cJ() + ":" + this.ac.cJ();
    }

    public String toString() {
        return cJ();
    }
}
