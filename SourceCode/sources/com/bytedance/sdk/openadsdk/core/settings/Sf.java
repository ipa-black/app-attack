package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: JsConfiglInfo.java */
/* loaded from: classes2.dex */
public class Sf {
    public static final Sf Qhi = new Sf(null);
    public static String cJ = "";
    public boolean CJ;
    public boolean Tgh;
    public String ac;
    public boolean fl;

    public Sf(String str) {
        this.ac = "https://sf19-static.i18n-pglstatp.com/obj/ad-pattern-sg/3p_monitor.9db44671.js";
        this.CJ = true;
        this.fl = true;
        this.Tgh = true;
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject("performance_js");
            String optString = optJSONObject.optString("url", "https://sf19-static.i18n-pglstatp.com/obj/ad-pattern-sg/3p_monitor.9db44671.js");
            if (!TextUtils.isEmpty(optString)) {
                this.ac = optString;
            }
            JSONArray optJSONArray = optJSONObject.optJSONArray("execute_time");
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                arrayList.add(optJSONArray.optString(i));
            }
            this.CJ = arrayList.contains("load_finish");
            this.Tgh = arrayList.contains("load_fail");
            this.fl = arrayList.contains("load");
        } catch (Exception unused) {
        }
    }
}
