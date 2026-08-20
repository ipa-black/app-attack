package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Ud;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.xa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1973xa implements InterfaceC1853sa<Ud> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC1853sa
    public JSONObject a(Ud ud) {
        Ud ud2 = ud;
        JSONObject jSONObject = new JSONObject();
        if (ud2 != null) {
            try {
                JSONArray jSONArray = new JSONArray();
                Iterator<Ud.a> it = ud2.f14031b.iterator();
                while (it.hasNext()) {
                    Ud.a next = it.next();
                    jSONArray.put(next == null ? null : new JSONObject().putOpt("tracking_id", next.f14032a).put("additional_parameters", next.f14033b).put("source", next.f14034c.a()));
                }
                JSONObject put = jSONObject.put("candidates", jSONArray);
                C1512ee c1512ee = ud2.f14030a;
                put.put("chosen", new JSONObject().putOpt("tracking_id", c1512ee.f14676a).put("additional_parameters", c1512ee.f14677b).put("source", c1512ee.f14680e.a()).put("auto_tracking_enabled", c1512ee.f14679d));
            } catch (Throwable unused) {
            }
        }
        return jSONObject;
    }
}
