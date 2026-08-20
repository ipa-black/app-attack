package com.bytedance.sdk.openadsdk.pA.Qhi.Qhi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.js;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: DeepLinkUtils.java */
/* loaded from: classes2.dex */
public class cJ {
    public static boolean Qhi(Context context, String str, tP tPVar) {
        String Qhi = js.Qhi(tPVar);
        com.bytedance.sdk.openadsdk.core.fl.Qhi(tPVar, Qhi, 1, null);
        Intent Qhi2 = Qhi(context, str);
        if (TextUtils.isEmpty(str) || Qhi2 == null) {
            com.bytedance.sdk.openadsdk.core.fl.Qhi(tPVar, Qhi, -2, tPVar.ReL().CJ());
            return false;
        }
        boolean Sf = js.Sf(context);
        HashMap hashMap = new HashMap();
        hashMap.put("url", str);
        if (Sf) {
            js.cJ cJ = js.cJ(context, Qhi2);
            if (cJ.cJ > 0) {
                try {
                    Qhi(context, tPVar, hashMap);
                    hashMap.put("matched_count", Integer.valueOf(cJ.cJ));
                    if (cJ.Qhi != null) {
                        Qhi2.setComponent(cJ.Qhi);
                    }
                } catch (Throwable th) {
                    ABk.Qhi("DeepLinkUtils", th.getMessage());
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("intent", Qhi2.toString());
                    jSONObject.put("can_query_install", 1);
                } catch (Exception unused) {
                }
                com.bytedance.sdk.openadsdk.core.fl.Qhi(tPVar, Qhi, -3, jSONObject);
                return false;
            }
        }
        try {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, Qhi, "open_url_app", hashMap);
            context.startActivity(Qhi2);
            com.bytedance.sdk.openadsdk.cJ.ABk.Qhi().Qhi(hashMap).Qhi(tPVar, Qhi);
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi("dp_start_act_success", tPVar, Qhi, hashMap);
            return true;
        } catch (Throwable th2) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("exception", th2.getMessage());
                jSONObject2.put("intent", Qhi2.toString());
                jSONObject2.put("can_query_install", Sf ? 1 : 0);
            } catch (Exception unused2) {
            }
            com.bytedance.sdk.openadsdk.core.fl.Qhi(tPVar, Qhi, -4, jSONObject2);
            return false;
        }
    }

    private static Intent Qhi(Context context, String str) {
        try {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            return intent;
        } catch (Throwable th) {
            ABk.Qhi("DeepLinkUtils", th.getMessage());
            return null;
        }
    }

    private static void Qhi(Context context, tP tPVar, Map<String, Object> map) {
        if (tPVar != null && tPVar.nR() == 0) {
            map.put("auto_click", Boolean.valueOf((tPVar == null || tPVar.CJ()) ? false : true));
        }
        map.put("can_query_install", Integer.valueOf(js.Sf(context) ? 1 : 0));
    }
}
