package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.component.embedapplog.IDefaultEncrypt;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import org.json.JSONObject;
/* compiled from: PglDefaultEncryptType3.java */
/* loaded from: classes2.dex */
public class qMt implements IDefaultEncrypt {
    private final PangleEncryptConstant.CryptDataScene Qhi;

    public qMt(PangleEncryptConstant.CryptDataScene cryptDataScene) {
        this.Qhi = cryptDataScene;
    }

    @Override // com.bytedance.sdk.component.embedapplog.IDefaultEncrypt
    public JSONObject encrypt(JSONObject jSONObject, int i) {
        EBS.Qhi(1, this.Qhi, i);
        return com.bytedance.sdk.component.utils.Qhi.Qhi(jSONObject);
    }
}
