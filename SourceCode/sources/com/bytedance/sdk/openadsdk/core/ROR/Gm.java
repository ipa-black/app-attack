package com.bytedance.sdk.openadsdk.core.ROR;

import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ViewabilityVendor.java */
/* loaded from: classes2.dex */
public class Gm {
    private final String CJ;
    private final String Qhi;
    private final String ac;
    private final URL cJ;

    private Gm(String str, String str2, String str3, String str4) throws MalformedURLException {
        this.Qhi = str2;
        this.cJ = new URL(str);
        this.ac = str3;
        this.CJ = str4;
    }

    public String Qhi() {
        return this.Qhi;
    }

    public String cJ() {
        return this.ac;
    }

    public URL ac() {
        return this.cJ;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Gm) {
            Gm gm = (Gm) obj;
            if (Qhi(this.Qhi, gm.Qhi) && Qhi(this.cJ, gm.cJ) && Qhi(this.ac, gm.ac)) {
                return Qhi(this.CJ, gm.CJ);
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.Qhi;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + this.cJ.hashCode()) * 31;
        String str2 = this.ac;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.CJ;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    private boolean Qhi(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public JSONObject CJ() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("apiFramework", "omid");
            jSONObject.put("javascriptResourceUrl", this.cJ.toString());
            if (!TextUtils.isEmpty(this.Qhi)) {
                jSONObject.put("vendorKey", this.Qhi);
            }
            if (!TextUtils.isEmpty(this.ac)) {
                jSONObject.put("verificationParameters", this.ac);
            }
            if (!TextUtils.isEmpty(this.CJ)) {
                jSONObject.put("verificationNotExecuted", this.CJ);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Gm Qhi(String str, String str2, String str3, String str4, String str5) {
        if ("omid".equalsIgnoreCase(str) && !TextUtils.isEmpty(str2)) {
            try {
                return new Gm(str2, str3, str4, str5);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static Gm Qhi(JSONObject jSONObject) {
        try {
            String optString = jSONObject.optString("apiFramework");
            String optString2 = jSONObject.optString("javascriptResourceUrl");
            if ("omid".equalsIgnoreCase(optString) && !TextUtils.isEmpty(optString2)) {
                return new Gm(optString2, jSONObject.optString("vendorKey"), jSONObject.optString("verificationParameters"), jSONObject.optString("verificationNotExecuted"));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static Set<Gm> Qhi(JSONArray jSONArray) {
        HashSet hashSet = new HashSet();
        if (jSONArray == null) {
            return hashSet;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                hashSet.add(Qhi(jSONArray.getJSONObject(i)));
            } catch (Throwable unused) {
            }
        }
        return hashSet;
    }
}
