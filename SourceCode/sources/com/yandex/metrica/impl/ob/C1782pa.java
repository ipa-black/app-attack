package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1918v3;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.pa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1782pa implements InterfaceC1853sa<C1918v3> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC1853sa
    public JSONObject a(C1918v3 c1918v3) {
        C1918v3 c1918v32 = c1918v3;
        JSONObject jSONObject = new JSONObject();
        if (c1918v32 != null) {
            try {
                JSONArray jSONArray = new JSONArray();
                for (C1918v3.a aVar : c1918v32.a()) {
                    jSONArray.put(a(aVar));
                }
                jSONObject.putOpt("chosen", a(c1918v32.c())).putOpt("candidates", jSONArray);
            } catch (Throwable unused) {
            }
        }
        return jSONObject;
    }

    private JSONObject a(C1918v3.a aVar) throws JSONException {
        if (aVar == null) {
            return null;
        }
        return new JSONObject().putOpt("clids", Tl.e(aVar.b())).putOpt("source", aVar.a().a());
    }
}
