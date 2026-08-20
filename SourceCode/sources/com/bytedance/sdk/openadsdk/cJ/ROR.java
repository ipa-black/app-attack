package com.bytedance.sdk.openadsdk.cJ;

import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONObject;
/* compiled from: AdEventV3.java */
/* loaded from: classes2.dex */
public class ROR extends Qhi {
    public static final SimpleDateFormat ac = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    public ROR(String str, JSONObject jSONObject) {
        super(str, jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.Qhi
    public JSONObject ac() {
        return this.cJ;
    }
}
