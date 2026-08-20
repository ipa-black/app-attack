package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import com.onesignal.outcomes.OSOutcomeConstants;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: MediationInitConfigs.java */
/* loaded from: classes2.dex */
public class WAv {
    public static final WAv Qhi = new WAv("");
    private final HashMap<String, Qhi> cJ = new HashMap<>();

    public WAv(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    Qhi qhi = new Qhi(optJSONObject);
                    this.cJ.put(qhi.Qhi, qhi);
                }
            }
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("MediationInitConfigs", e2.getMessage());
        }
    }

    /* compiled from: MediationInitConfigs.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        public int CJ;
        public final String Qhi;
        public int ac;
        public String cJ;
        public String fl;

        public Qhi(JSONObject jSONObject) {
            this.Qhi = jSONObject.optString("name");
            this.cJ = jSONObject.optString(OSOutcomeConstants.APP_ID);
            this.ac = jSONObject.optInt("init_thread", 2);
            this.CJ = jSONObject.optInt("request_after_init", 2);
            this.fl = jSONObject.optString("class_name");
        }
    }
}
