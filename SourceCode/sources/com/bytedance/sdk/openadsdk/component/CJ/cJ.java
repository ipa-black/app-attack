package com.bytedance.sdk.openadsdk.component.CJ;

import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.Gm.Qhi.fl;
import com.bytedance.sdk.openadsdk.Gm.ac;
import com.bytedance.sdk.openadsdk.core.model.CQU;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.Jma;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TTAppOpenAdReport.java */
/* loaded from: classes2.dex */
public class cJ {
    public static void Qhi(final int i, final int i2) {
        ac.Qhi("openad_load_ad_timeout", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.component.CJ.cJ.1
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("timeout_type", i);
                jSONObject.put("user_timeout_time", i2);
                return fl.cJ().Qhi("openad_load_ad_timeout").cJ(jSONObject.toString());
            }
        });
    }

    public static void Qhi(tP tPVar, int i, int i2, float f2) {
        JSONObject jSONObject = new JSONObject();
        try {
            Qhi(jSONObject, tPVar);
            jSONObject.put("openad_creative_type", tP.fl(tPVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("skip_time", i);
            jSONObject.put("skip_show_time", i2);
            jSONObject.put("total_time", f2);
        } catch (JSONException e2) {
            ABk.Qhi("TTAppOpenAdReport", "reportSkip json error", e2);
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, "skip", i, jSONObject);
    }

    public static void Qhi(tP tPVar, long j, float f2, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            Qhi(jSONObject, tPVar);
            jSONObject.put("openad_creative_type", tP.fl(tPVar) ? "video_normal_ad" : "image_normal_ad");
            if (z) {
                double d2 = f2;
                jSONObject.put("video_duration", d2);
                jSONObject.put("video_percent", (int) (((j * 1.0d) / 10.0d) / d2));
            } else {
                jSONObject.put("image_duration", f2);
            }
        } catch (JSONException e2) {
            ABk.Qhi("TTAppOpenAdReport", "reportDestroy json error", e2);
        }
        com.bytedance.sdk.openadsdk.cJ.ac.CJ(tPVar, "destroy", jSONObject);
    }

    public static void Qhi(tP tPVar) {
        com.bytedance.sdk.openadsdk.cJ.ac.CJ(tPVar, "cache_expire", (JSONObject) null);
    }

    public static void cJ(tP tPVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("openad_creative_type", tP.fl(tPVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException e2) {
            ABk.Qhi("TTAppOpenAdReport", "reportCacheLoss json error", e2);
        }
        com.bytedance.sdk.openadsdk.cJ.ac.CJ(tPVar, "cache_loss", jSONObject);
    }

    public static void Qhi(tP tPVar, long j, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("order", z ? 1 : 2);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, "download_image_duration", j, jSONObject);
    }

    public static void cJ(tP tPVar, long j, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("size", tPVar.FQ().fl());
            jSONObject.put("video_duration", tPVar.FQ().Tgh());
            jSONObject.put("order", z ? 1 : 2);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, "download_video_duration", j, jSONObject);
    }

    public static void Qhi(tP tPVar, int i, CQU cqu) {
        JSONObject jSONObject = new JSONObject();
        long j = 0;
        try {
            jSONObject.put("openad_creative_type", tP.fl(tPVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("open_ad_cache_type", i);
            if (cqu != null) {
                cqu.cJ(Jma.Qhi());
                Qhi(jSONObject, tPVar);
                jSONObject.put("client_start_time", cqu.cJ());
                jSONObject.put("sever_time", cqu.CJ());
                jSONObject.put("network_time", cqu.ac());
                jSONObject.put("client_end_time", cqu.fl());
                jSONObject.put("download_resource_duration", cqu.ROR());
                jSONObject.put("resource_source", cqu.Sf());
                jSONObject.put("is_bidding", cqu.Qhi ? 1 : 0);
                if (cqu.Qhi) {
                    jSONObject.put("load_wait_time", cqu.cJ);
                }
                j = cqu.Tgh();
            }
        } catch (JSONException e2) {
            ABk.Qhi("TTAppOpenAdReport", "reportLoadNetDuration json error", e2);
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, "load_net_duration", j, jSONObject);
    }

    public static void Qhi(tP tPVar, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            Qhi(jSONObject, tPVar);
            jSONObject.put("openad_creative_type", tP.fl(tPVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException unused) {
            ABk.Qhi("TTAppOpenAdReport", "reportLoadCacheDuration json error");
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, "load_cache_duration", j, jSONObject);
    }

    private static void Qhi(JSONObject jSONObject, tP tPVar) {
        int i;
        if (tPVar != null) {
            try {
                if (tPVar.czB()) {
                    i = 1;
                    jSONObject.put("is_icon_only", i);
                }
            } catch (JSONException e2) {
                ABk.Qhi("TTAppOpenAdReport", e2.getMessage());
                return;
            }
        }
        i = 0;
        jSONObject.put("is_icon_only", i);
    }
}
