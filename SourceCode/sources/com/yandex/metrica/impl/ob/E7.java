package com.yandex.metrica.impl.ob;

import android.util.Base64;
import com.yandex.metrica.CounterConfiguration;
import org.json.JSONObject;
/* loaded from: classes5.dex */
class E7 {

    /* renamed from: a  reason: collision with root package name */
    private static String[] f12861a = {"arg_ak", "arg_pn", "arg_pd", "arg_ps", "arg_rt"};

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1602i4 a(String str) {
        try {
            return a(new JSONObject(new String(Base64.decode(str, 0))).getJSONObject("arg_cd"));
        } catch (Exception unused) {
            return null;
        }
    }

    private C1602i4 a(JSONObject jSONObject) {
        try {
            for (String str : f12861a) {
                if (!jSONObject.has(str)) {
                    return null;
                }
            }
            int i = jSONObject.getInt("arg_pd");
            if (i == 0) {
                i = Integer.parseInt(jSONObject.getString("arg_pd"));
            }
            return new C1602i4(jSONObject.getString("arg_ak"), jSONObject.getString("arg_pn"), Integer.valueOf(i), jSONObject.getString("arg_ps"), CounterConfiguration.b.a(jSONObject.getString("arg_rt")));
        } catch (Exception unused) {
            return null;
        }
    }
}
