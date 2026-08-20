package com.bytedance.adsdk.Qhi.cJ.cJ.Qhi;

import java.util.Map;
import org.json.JSONObject;
/* compiled from: MethodNode.java */
/* loaded from: classes2.dex */
public class Gm implements com.bytedance.adsdk.Qhi.cJ.cJ.Qhi {
    private com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[] Qhi;
    private com.bytedance.adsdk.Qhi.cJ.Qhi.Qhi ac;
    private String cJ;

    public Gm(String str) {
        this.cJ = str;
    }

    public void Qhi(com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[] qhiArr) {
        this.Qhi = qhiArr;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public Object Qhi(Map<String, JSONObject> map) {
        com.bytedance.adsdk.Qhi.cJ.Qhi.Qhi qhi = new com.bytedance.adsdk.Qhi.cJ.Qhi.Qhi();
        this.ac = qhi;
        qhi.Qhi(this.cJ);
        Object[] objArr = new Object[this.Qhi.length];
        int i = 0;
        while (true) {
            com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[] qhiArr = this.Qhi;
            if (i < qhiArr.length) {
                com.bytedance.adsdk.Qhi.cJ.cJ.Qhi qhi2 = qhiArr[i];
                if (qhi2 != null) {
                    objArr[i] = qhi2.Qhi(map);
                }
                i++;
            } else {
                this.ac.Qhi(objArr);
                return this.ac;
            }
        }
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public com.bytedance.adsdk.Qhi.cJ.CJ.Sf Qhi() {
        return com.bytedance.adsdk.Qhi.cJ.CJ.fl.METHOD;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public String cJ() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.cJ).append("(");
        com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[] qhiArr = this.Qhi;
        if (qhiArr != null && qhiArr.length > 0) {
            int i = 0;
            while (true) {
                com.bytedance.adsdk.Qhi.cJ.cJ.Qhi[] qhiArr2 = this.Qhi;
                if (i >= qhiArr2.length) {
                    break;
                }
                sb.append(qhiArr2[i].cJ()).append(",");
                i++;
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
