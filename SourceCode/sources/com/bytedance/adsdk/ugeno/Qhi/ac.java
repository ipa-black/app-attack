package com.bytedance.adsdk.ugeno.Qhi;

import android.text.TextUtils;
import android.util.Log;
import org.json.JSONObject;
/* compiled from: UGExpressionParser.java */
/* loaded from: classes2.dex */
public class ac {
    public static String Qhi(String str, JSONObject jSONObject) {
        Object Qhi;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (jSONObject != null) {
            try {
                if (!str.startsWith("${") || !str.endsWith("}")) {
                    return str;
                }
                com.bytedance.adsdk.Qhi.cJ.Qhi Qhi2 = com.bytedance.adsdk.Qhi.cJ.Qhi.Qhi(str.substring(2, str.length() - 1));
                Qhi = Qhi2.Qhi(jSONObject);
                Log.d("ELParser", "el: " + str + "; result: " + Qhi);
                if (Qhi instanceof String) {
                    return (String) Qhi2.Qhi(jSONObject);
                }
                if (Qhi instanceof com.bytedance.adsdk.Qhi.cJ.Qhi.Qhi) {
                    return String.valueOf(fl.Qhi((com.bytedance.adsdk.Qhi.cJ.Qhi.Qhi) Qhi));
                }
            } catch (Throwable unused) {
                return str;
            }
        }
        return String.valueOf(Qhi);
    }
}
