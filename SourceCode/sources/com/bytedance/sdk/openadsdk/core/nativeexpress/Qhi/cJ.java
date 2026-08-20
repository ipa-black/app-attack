package com.bytedance.sdk.openadsdk.core.nativeexpress.Qhi;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.MQ;
import com.bytedance.sdk.openadsdk.core.model.Qhi;
import com.bytedance.sdk.openadsdk.core.model.hpZ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import io.bidmachine.utils.IabUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: TemplateUtils.java */
/* loaded from: classes2.dex */
public class cJ {
    public static boolean Qhi() {
        return true;
    }

    public static JSONObject Qhi(float f2, float f3, boolean z, tP tPVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IabUtils.KEY_WIDTH, f2);
            jSONObject2.put(IabUtils.KEY_HEIGHT, f3);
            if (z) {
                jSONObject2.put("isLandscape", true);
            }
            jSONObject.put("AdSize", jSONObject2);
            if ((tPVar instanceof MQ) && ((MQ) tPVar).mvd()) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject.put("choose_ui_data", jSONObject3);
                Qhi.C0225Qhi Xw = ((MQ) tPVar).Xw();
                JSONObject cJ = Xw.cJ();
                if (TextUtils.isEmpty(Xw.Sf())) {
                    cJ.put("data", cJ(Xw));
                }
                jSONObject3.put("tpl_info", cJ);
                JSONArray jSONArray = new JSONArray();
                jSONObject.put("creatives", jSONArray);
                for (tP tPVar2 : ((MQ) tPVar).Gf()) {
                    JSONObject Qhi = Qhi(false, tPVar2);
                    if (Qhi != null) {
                        Qhi.put("template_Plugin", cJ(tPVar2.es()));
                        Qhi.put("diff_template_Plugin", Qhi(tPVar2.es()));
                        jSONArray.put(Qhi);
                    }
                }
                return jSONObject;
            }
            jSONObject.put("creative", Qhi(false, tPVar));
            jSONObject.put("template_Plugin", cJ(tPVar.es()));
            jSONObject.put("diff_template_Plugin", Qhi(tPVar.es()));
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String Qhi(tP.Qhi qhi) {
        if (qhi == null) {
            return "";
        }
        return qhi.hm();
    }

    private static String cJ(tP.Qhi qhi) {
        com.bytedance.sdk.component.adexpress.Qhi.ac.cJ ac;
        if (qhi == null) {
            return "";
        }
        String Sf = qhi.Sf();
        return (!TextUtils.isEmpty(Sf) || (ac = com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.ac(qhi.fl())) == null) ? Sf : ac.fl();
    }

    public static JSONObject Qhi(boolean z, tP tPVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("button_text", tPVar.ots());
            if (tPVar.dIT() != null) {
                if (tPVar.dIT() != null && !TextUtils.isEmpty(tPVar.dIT().Qhi())) {
                    jSONObject.put("icon", tPVar.dIT().Qhi());
                } else {
                    jSONObject.put("icon", "");
                }
            }
            JSONArray jSONArray = new JSONArray();
            if (tPVar.cjC() != null) {
                for (int i = 0; i < tPVar.cjC().size(); i++) {
                    hpZ hpz = tPVar.cjC().get(i);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(IabUtils.KEY_HEIGHT, hpz.ac());
                    jSONObject2.put(IabUtils.KEY_WIDTH, hpz.cJ());
                    jSONObject2.put("url", hpz.Qhi());
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("image", jSONArray);
            jSONObject.put("image_mode", tPVar.gga());
            jSONObject.put("interaction_type", tPVar.ip());
            jSONObject.put("interaction_method", tPVar.HzH());
            jSONObject.put("is_compliance_template", Qhi());
            jSONObject.put("title", tPVar.dVA());
            jSONObject.put("description", tPVar.zjb());
            jSONObject.put("source", tPVar.PAe());
            if (tPVar.pv() != null) {
                jSONObject.put("comment_num", tPVar.pv().fl());
                jSONObject.put(FirebaseAnalytics.Param.SCORE, tPVar.pv().CJ());
                jSONObject.put("app_size", tPVar.pv().Tgh());
                jSONObject.put("app", tPVar.pv().Sf());
            }
            com.bykv.vk.openvk.component.video.api.ac.cJ FQ = tPVar.FQ();
            if (FQ != null) {
                JSONObject kYc = FQ.kYc();
                kYc.put("video_duration", FQ.Tgh() * FQ.EBS());
                jSONObject.put("video", kYc);
            }
            if (tPVar.es() != null) {
                jSONObject.put("dynamic_creative", tPVar.es().WAv());
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String Qhi(tP tPVar, String str) {
        List<hpZ> cjC;
        if (tPVar != null && (cjC = tPVar.cjC()) != null && cjC.size() > 0) {
            for (hpZ hpz : cjC) {
                if (hpz != null && TextUtils.equals(str, hpz.Qhi())) {
                    return hpz.ROR();
                }
            }
        }
        return null;
    }

    public static Map<String, String> Qhi(tP tPVar) {
        HashMap hashMap = null;
        if (tPVar == null) {
            return null;
        }
        List<hpZ> cjC = tPVar.cjC();
        if (cjC != null && cjC.size() > 0) {
            hashMap = new HashMap();
            for (hpZ hpz : cjC) {
                if (hpz != null) {
                    hashMap.put(hpz.Qhi(), hpz.ROR());
                }
            }
        }
        return hashMap;
    }
}
