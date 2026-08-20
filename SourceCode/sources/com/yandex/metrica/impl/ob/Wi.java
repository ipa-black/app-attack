package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1909ui;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Tl;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Wi {

    /* renamed from: a  reason: collision with root package name */
    private static final If.u f14199a = new If.u();

    public C1909ui a(Tl.a aVar, String str) {
        C1909ui.a aVar2;
        JSONObject optJSONObject = aVar.optJSONObject(str);
        C1909ui.a aVar3 = null;
        if (optJSONObject != null) {
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("cell");
            if (optJSONObject2 != null) {
                If.u uVar = f14199a;
                aVar2 = new C1909ui.a(optJSONObject2.optInt("refresh_event_count", uVar.f13171a), optJSONObject2.optLong("refresh_period_seconds", uVar.f13172b));
            } else {
                aVar2 = null;
            }
            JSONObject optJSONObject3 = optJSONObject.optJSONObject("wifi");
            if (optJSONObject3 != null) {
                If.u uVar2 = f14199a;
                aVar3 = new C1909ui.a(optJSONObject3.optInt("refresh_event_count", uVar2.f13171a), optJSONObject3.optLong("refresh_period_seconds", uVar2.f13172b));
            }
            return new C1909ui(aVar2, aVar3);
        }
        return null;
    }
}
