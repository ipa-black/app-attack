package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AutoTestModel.java */
/* loaded from: classes2.dex */
public class Sf {
    private String Qhi;
    private List<String> cJ;

    public Sf(String str) {
        this.Qhi = "";
        this.cJ = new ArrayList();
        HashMap<String, Object> hashMap = TextUtils.isEmpty(str) ? new HashMap<>() : Qhi(str);
        try {
            this.Qhi = (String) hashMap.get("auto_test_param");
            JSONArray jSONArray = new JSONArray((String) hashMap.get("auto_test_hosts"));
            this.cJ = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                this.cJ.add(jSONArray.optString(i));
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("AutoTestModel", e2.getMessage());
        }
    }

    public String Qhi() {
        return this.Qhi;
    }

    public List<String> cJ() {
        return this.cJ;
    }

    private static final HashMap<String, Object> Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap<>();
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                hashMap.put(optJSONObject.optString("name"), optJSONObject.optString("value"));
            }
            return hashMap;
        } catch (Exception unused) {
            return new HashMap<>();
        }
    }
}
