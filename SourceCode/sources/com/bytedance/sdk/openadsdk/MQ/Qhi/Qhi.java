package com.bytedance.sdk.openadsdk.MQ.Qhi;

import io.bidmachine.utils.IabUtils;
import org.json.JSONObject;
/* compiled from: PAGAdViewInfo.java */
/* loaded from: classes2.dex */
public class Qhi {
    private final int Qhi;
    private final float ac;
    private final int cJ;

    public Qhi(int i, int i2, float f2) {
        this.Qhi = i;
        this.cJ = i2;
        this.ac = f2;
    }

    public static JSONObject Qhi(Qhi qhi) throws Throwable {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(IabUtils.KEY_WIDTH, qhi.Qhi);
        jSONObject.put(IabUtils.KEY_HEIGHT, qhi.cJ);
        jSONObject.put("alpha", qhi.ac);
        return jSONObject;
    }
}
