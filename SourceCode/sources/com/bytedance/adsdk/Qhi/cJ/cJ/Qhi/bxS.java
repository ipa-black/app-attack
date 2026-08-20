package com.bytedance.adsdk.Qhi.cJ.cJ.Qhi;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: VariableNode.java */
/* loaded from: classes2.dex */
public class bxS implements com.bytedance.adsdk.Qhi.cJ.cJ.Qhi {
    private final String Qhi;

    public bxS(String str) {
        this.Qhi = str;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public Object Qhi(Map<String, JSONObject> map) {
        Object Qhi;
        if (map == null || map.size() <= 0 || (Qhi = Qhi(this.Qhi, map.get("default_key"))) == JSONObject.NULL) {
            return null;
        }
        return Qhi;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public com.bytedance.adsdk.Qhi.cJ.CJ.Sf Qhi() {
        return com.bytedance.adsdk.Qhi.cJ.CJ.hm.VARIABLE;
    }

    public String toString() {
        return "VariableNode [literals=" + this.Qhi + "]";
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public String cJ() {
        return this.Qhi;
    }

    public Object Qhi(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Qhi(str.split("\\."), 0, jSONObject);
    }

    private Object Qhi(String[] strArr, int i, JSONObject jSONObject) {
        Object opt;
        if (strArr != null && strArr.length > 0 && i < strArr.length && jSONObject != null) {
            String str = strArr[i];
            int indexOf = str.indexOf("[");
            int indexOf2 = str.indexOf("]");
            if (indexOf < 0 || indexOf2 < 0 || indexOf > indexOf2) {
                opt = jSONObject.opt(str);
            } else {
                String substring = str.substring(0, indexOf);
                try {
                    int parseInt = Integer.parseInt(str.substring(indexOf + 1, indexOf2));
                    Object opt2 = jSONObject.opt(substring);
                    opt = opt2 instanceof JSONArray ? ((JSONArray) opt2).opt(parseInt) : null;
                } catch (NumberFormatException unused) {
                    return null;
                }
            }
            if (i == strArr.length - 1) {
                return opt;
            }
            if (opt instanceof String) {
                try {
                    return Qhi(strArr, i + 1, new JSONObject((String) opt));
                } catch (JSONException unused2) {
                    return opt;
                }
            } else if (opt instanceof JSONObject) {
                return Qhi(strArr, i + 1, (JSONObject) opt);
            }
        }
        return null;
    }
}
