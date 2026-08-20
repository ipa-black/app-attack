package com.yandex.metrica.impl.ob;

import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.fk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1543fk implements Gk {
    @Override // com.yandex.metrica.impl.ob.Gk
    public JSONObject a(Object obj) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cxts", obj);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
