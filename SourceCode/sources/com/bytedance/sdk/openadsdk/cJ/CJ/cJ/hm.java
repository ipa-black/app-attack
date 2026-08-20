package com.bytedance.sdk.openadsdk.cJ.CJ.cJ;

import org.json.JSONObject;
/* compiled from: FeedPlayModel.java */
/* loaded from: classes2.dex */
public class hm implements ac {
    private long Qhi;
    private int ac;
    private long cJ;

    public void Qhi(long j) {
        this.Qhi = j;
    }

    public void cJ(long j) {
        this.cJ = j;
    }

    public void Qhi(int i) {
        this.ac = i;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ac
    public void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("video_start_duration", this.Qhi);
            jSONObject.put("video_cache_size", this.cJ);
            jSONObject.put("is_auto_play", this.ac);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("FeedPlayModel", th.getMessage());
        }
    }
}
