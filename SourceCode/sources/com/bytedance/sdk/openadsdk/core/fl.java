package com.bytedance.sdk.openadsdk.core;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ConvertTracker.java */
/* loaded from: classes2.dex */
public class fl {
    public static void Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar, String str, int i, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put(SessionDescription.ATTR_TYPE, i);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(tPVar, str, "convert_track", jSONObject);
    }
}
