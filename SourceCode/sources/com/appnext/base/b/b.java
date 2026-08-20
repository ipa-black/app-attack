package com.appnext.base.b;

import android.text.TextUtils;
import com.appnext.base.b.d;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class b {
    public static boolean d(com.appnext.base.a.b.c cVar) {
        if (cVar == null) {
            return false;
        }
        try {
            int i = i.aR().getInt(cVar.getKey() + i.fA, 0);
            return i >= Integer.parseInt(cVar.an()) || i == 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static List<com.appnext.base.a.b.b> E(String str) {
        try {
            return com.appnext.base.a.a.X().aa().v(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean F(String str) {
        List<com.appnext.base.a.b.b> E = E(str);
        return E == null || E.size() == 0;
    }

    public static JSONObject a(String str, Date date, d.a aVar) {
        String L;
        JSONObject jSONObject = new JSONObject();
        try {
            L = h.aO().L(str);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(L)) {
            return jSONObject;
        }
        jSONObject.put("data", j.b(L, aVar));
        jSONObject.put("date", j.a(date));
        return jSONObject;
    }

    public static void G(String str) {
        if (str == null) {
            return;
        }
        try {
            i.aR().putInt(str + i.fA, 0);
        } catch (Throwable unused) {
        }
    }

    public static void H(String str) {
        try {
            i.aR().putLong(str + i.fy, System.currentTimeMillis());
            String str2 = str + i.fA;
            i.aR().putInt(str2, i.aR().getInt(str2, 0) + 1);
        } catch (Throwable unused) {
        }
    }

    public static JSONArray a(List<com.appnext.base.a.b.b> list, boolean z) {
        try {
            JSONArray jSONArray = new JSONArray();
            for (com.appnext.base.a.b.b bVar : list) {
                String ai = bVar.ai();
                if (!ai.isEmpty()) {
                    String K = h.aO().K(ai);
                    if (!TextUtils.isEmpty(K)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(com.appnext.base.a.c.d.ec, bVar.ah());
                        jSONObject.put(com.appnext.base.a.c.d.COLUMN_TYPE, bVar.getType());
                        jSONObject.put(com.appnext.base.a.c.d.ed, K);
                        jSONObject.put(com.appnext.base.a.c.d.ef, bVar.getDataType());
                        jSONArray.put(jSONObject);
                    }
                }
            }
            return jSONArray;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean a(String str, Map<String, String> map) {
        try {
            return j.b(str, map);
        } catch (Throwable unused) {
            return false;
        }
    }
}
