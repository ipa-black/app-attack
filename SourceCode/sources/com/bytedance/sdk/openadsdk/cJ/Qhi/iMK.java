package com.bytedance.sdk.openadsdk.cJ.Qhi;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: TrackLinkResultSendListener.java */
/* loaded from: classes2.dex */
public class iMK implements com.bytedance.sdk.openadsdk.Gm.cJ {
    private final com.bytedance.sdk.component.Tgh.Qhi.Tgh.fl Qhi;
    private final boolean cJ;

    public iMK(boolean z, com.bytedance.sdk.component.Tgh.Qhi.Tgh.fl flVar) {
        this.Qhi = flVar;
        this.cJ = z;
    }

    @Override // com.bytedance.sdk.openadsdk.Gm.cJ
    public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
        int i;
        if (this.Qhi == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(FirebaseAnalytics.Param.SUCCESS, this.cJ);
        jSONObject.put("url", this.Qhi.cJ());
        int CJ = this.Qhi.CJ();
        if (CJ <= 0) {
            CJ = 0;
        }
        jSONObject.put("retry_times", CJ);
        jSONObject.put("ad_id", this.Qhi.Tgh());
        jSONObject.put("track_type", this.Qhi.fl());
        if (!this.cJ) {
            i = 4;
        } else if (this.Qhi.WAv()) {
            i = 3;
        } else {
            i = this.Qhi.CJ() <= 0 ? 1 : 2;
        }
        jSONObject.put("upload_scene", i);
        String ROR = this.Qhi.ROR();
        if (!TextUtils.isEmpty(ROR)) {
            JSONArray jSONArray = new JSONArray();
            for (String str : ROR.split(",")) {
                jSONArray.put(str);
            }
            jSONObject.put("error_code", jSONArray);
        }
        String hm = this.Qhi.hm();
        if (!TextUtils.isEmpty(hm)) {
            JSONArray jSONArray2 = new JSONArray();
            for (String str2 : hm.split(",")) {
                jSONArray2.put(str2);
            }
            jSONObject.put("error_msg", jSONArray2);
        }
        return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("track_link_result").cJ(jSONObject.toString());
    }
}
