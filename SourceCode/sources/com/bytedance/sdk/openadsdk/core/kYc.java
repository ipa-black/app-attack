package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.cJ.cJ;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: JsbDeepLinkJump.java */
/* loaded from: classes2.dex */
public class kYc {
    public static void Qhi(Context context, boolean z, JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.tP tPVar, String str, int i, WebView webView, com.bytedance.sdk.openadsdk.core.widget.ac acVar) {
        int optInt = jSONObject.optInt("landingStyle");
        String optString = jSONObject.optString("url");
        String optString2 = jSONObject.optString("fallback_url");
        try {
            jSONObject.put("is_activity", z);
        } catch (JSONException unused) {
        }
        boolean z2 = true;
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, str, 1, jSONObject);
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        if (optInt == 0) {
            if (webView != null) {
                webView.loadUrl(optString);
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, str, 2, (JSONObject) null);
            } else {
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, str, -1, (JSONObject) null);
            }
        } else if (optInt == 1 || optInt == 8) {
            com.bytedance.sdk.openadsdk.Gm.Qhi.cJ cJVar = new com.bytedance.sdk.openadsdk.Gm.Qhi.cJ();
            cJVar.Qhi(cJ.Qhi.cJ);
            cJVar.Qhi(tPVar);
            cJVar.cJ(str);
            cJVar.Qhi(-1);
            cJVar.Qhi(false);
            cJVar.cJ(tPVar.ip());
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(cJVar);
            com.bytedance.sdk.openadsdk.utils.MQ.Qhi(context, optString, tPVar, cJ.Qhi.cJ);
        } else if (optInt == 2) {
            if (!com.bytedance.sdk.openadsdk.utils.MQ.cJ(context, optString, tPVar, str)) {
                com.bytedance.sdk.openadsdk.Gm.Qhi.cJ cJVar2 = new com.bytedance.sdk.openadsdk.Gm.Qhi.cJ();
                cJVar2.Qhi(cJ.Qhi.cJ);
                cJVar2.Qhi(tPVar);
                cJVar2.cJ(str);
                cJVar2.Qhi(-1);
                cJVar2.Qhi(false);
                cJVar2.cJ(tPVar.ip());
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(cJVar2);
                HashMap hashMap = new HashMap();
                hashMap.put("deeplink_url", optString);
                hashMap.put("fallback_url", optString2);
                hashMap.put("jsb_deeplink", 1);
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, str, "open_fallback_url", hashMap);
                com.bytedance.sdk.openadsdk.utils.MQ.Qhi(context, optString2, tPVar, cJ.Qhi.cJ);
            }
        } else if (optInt != 3) {
            z2 = false;
        } else if (lB.cJ(context, optString, tPVar, i, str, false)) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, str, 3, (JSONObject) null);
        } else {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, str, -2, (JSONObject) null);
        }
        if (acVar == null || !z2) {
            return;
        }
        acVar.Qhi();
    }
}
