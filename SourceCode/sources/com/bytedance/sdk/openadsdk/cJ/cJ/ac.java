package com.bytedance.sdk.openadsdk.cJ.cJ;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EventStartListenerWrapper.java */
/* loaded from: classes2.dex */
public class ac implements cJ {
    cJ Qhi;

    @Override // com.bytedance.sdk.openadsdk.cJ.cJ.cJ
    public void Qhi(JSONObject jSONObject, long j) throws JSONException {
        cJ cJVar = this.Qhi;
        if (cJVar != null) {
            cJVar.Qhi(jSONObject, j);
        }
        if (j <= 0) {
            j = System.currentTimeMillis();
        }
        jSONObject.put("event_ts", j);
    }
}
