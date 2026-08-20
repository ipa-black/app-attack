package com.bytedance.sdk.component.adexpress.dynamic.ac;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DynamicDiffPlugin.java */
/* loaded from: classes2.dex */
public class fl {
    public String CJ;
    public List<Qhi> Qhi;
    public String ac;
    public String cJ;

    /* compiled from: DynamicDiffPlugin.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        public int Qhi;
        public JSONObject cJ;
    }

    public static fl Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        fl flVar = new fl();
        String optString = jSONObject.optString("custom_components");
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(optString);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    Qhi qhi = new Qhi();
                    qhi.Qhi = optJSONObject.optInt("id");
                    qhi.cJ = new JSONObject(optJSONObject.optString("componentLayout"));
                    arrayList.add(qhi);
                }
            }
        } catch (JSONException unused) {
        }
        flVar.Qhi = arrayList;
        flVar.cJ = jSONObject.optString("diff_data");
        flVar.ac = jSONObject.optString("style_diff");
        flVar.CJ = jSONObject.optString("tag_diff");
        return flVar;
    }
}
