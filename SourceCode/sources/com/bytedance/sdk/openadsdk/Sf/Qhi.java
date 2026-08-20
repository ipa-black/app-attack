package com.bytedance.sdk.openadsdk.Sf;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.utils.js;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: JsAppAdDownloadManager.java */
/* loaded from: classes2.dex */
public class Qhi implements ac {
    private final tP Qhi;
    private final Map<String, com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl> ac = new HashMap();
    private final cJ cJ;

    private Qhi(cJ cJVar, tP tPVar) {
        this.cJ = cJVar;
        this.Qhi = tPVar;
    }

    public static Qhi Qhi(cJ cJVar, tP tPVar) {
        return new Qhi(cJVar, tPVar);
    }

    @Override // com.bytedance.sdk.openadsdk.Sf.ac
    public void Qhi() {
        this.ac.clear();
    }

    private tP Qhi(JSONObject jSONObject, String str) {
        String Qhi;
        if (jSONObject == null) {
            return null;
        }
        tP ac = tP.ac();
        ac.ac(jSONObject);
        if (!TextUtils.isEmpty(str)) {
            ac.MQ(str);
        }
        if (this.Qhi == null) {
            return ac;
        }
        String Qhi2 = ac.pv() != null ? ac.pv().Qhi() : null;
        if (TextUtils.isEmpty(Qhi2)) {
            return this.Qhi;
        }
        com.bytedance.sdk.openadsdk.core.model.ac pv = this.Qhi.pv();
        if (pv != null && Qhi2.equals(pv.Qhi())) {
            return this.Qhi;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (pv != null) {
            try {
                Qhi = pv.Qhi();
            } catch (JSONException unused) {
            }
        } else {
            Qhi = "null";
        }
        jSONObject2.put("lu", Qhi);
        jSONObject2.put("ju", Qhi2);
        tP tPVar = this.Qhi;
        com.bytedance.sdk.openadsdk.core.fl.Qhi(tPVar, js.Qhi(tPVar), -5, jSONObject2);
        if (pv != null && Qhi2.contains("play.google.com/store") && !Qhi2.contains("referrer")) {
            ac.pv().Qhi(pv.Qhi());
        }
        return ac;
    }

    @Override // com.bytedance.sdk.openadsdk.Sf.ac
    public void Qhi(Context context, JSONObject jSONObject, String str, int i, boolean z) {
        JSONObject optJSONObject;
        if (context == null || jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        Qhi(context, Qhi(optJSONObject, str), optJSONObject, i, z);
    }

    private void Qhi(Context context, tP tPVar, JSONObject jSONObject, int i, boolean z) {
        if (context == null || tPVar == null || tPVar.pv() == null || jSONObject == null || this.cJ == null || this.ac.get(tPVar.pv().Qhi()) != null) {
            return;
        }
        String cJ = js.cJ(i);
        if (TextUtils.isEmpty(cJ)) {
            return;
        }
        this.ac.put(tPVar.pv().Qhi(), Qhi(context, tPVar, jSONObject, cJ, z));
    }

    @Override // com.bytedance.sdk.openadsdk.Sf.ac
    public void Qhi(Context context, JSONObject jSONObject, String str) {
        tP tPVar;
        if (context == null || (tPVar = this.Qhi) == null) {
            return;
        }
        Tgh.Qhi(context, tPVar, str).CJ();
    }

    @Override // com.bytedance.sdk.openadsdk.Sf.ac
    public void Qhi(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        Qhi(Qhi(optJSONObject, (String) null), optJSONObject);
    }

    private void Qhi(tP tPVar, JSONObject jSONObject) {
        if (this.cJ == null || tPVar == null || tPVar.pv() == null) {
            return;
        }
        String Qhi = tPVar.pv().Qhi();
        if (this.ac.containsKey(Qhi)) {
            this.ac.remove(Qhi);
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("message", FirebaseAnalytics.Param.SUCCESS);
                jSONObject2.put("status", "unsubscribed");
                jSONObject2.put("appad", jSONObject);
                this.cJ.Qhi("app_ad_event", jSONObject2);
            } catch (JSONException e2) {
                ABk.Qhi("JsAppAdDownloadManager", e2.getMessage());
            }
        }
    }

    private com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl Qhi(Context context, tP tPVar, JSONObject jSONObject, String str, boolean z) {
        com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl Qhi = Tgh.Qhi(context, tPVar, str);
        Qhi.Qhi(true);
        return Qhi;
    }
}
