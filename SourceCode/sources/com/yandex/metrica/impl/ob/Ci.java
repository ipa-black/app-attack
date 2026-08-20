package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import org.json.JSONObject;
/* loaded from: classes5.dex */
class Ci {

    /* renamed from: a  reason: collision with root package name */
    private final C1876t9 f12768a;

    public Ci() {
        this(new C1876t9());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, JSONObject jSONObject) {
        C1876t9 c1876t9 = this.f12768a;
        If.b bVar = new If.b();
        JSONObject optJSONObject = jSONObject.optJSONObject("auto_inapp_collecting");
        if (optJSONObject != null) {
            bVar.f13084a = optJSONObject.optInt("send_frequency_seconds", bVar.f13084a);
            bVar.f13085b = optJSONObject.optInt("first_collecting_inapp_max_age_seconds", bVar.f13085b);
        }
        ui.a(c1876t9.toModel(bVar));
    }

    Ci(C1876t9 c1876t9) {
        this.f12768a = c1876t9;
    }
}
