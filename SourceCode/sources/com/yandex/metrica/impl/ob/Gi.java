package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Gi {

    /* renamed from: a  reason: collision with root package name */
    private final C9 f12988a;

    public Gi(C9 c9) {
        this.f12988a = c9;
    }

    public final void a(Ui ui, JSONObject jSONObject) {
        If.h hVar = new If.h();
        JSONObject optJSONObject = jSONObject.optJSONObject("egress");
        if (optJSONObject != null) {
            hVar.f13099a = optJSONObject.optString("url", hVar.f13099a);
            hVar.f13100b = optJSONObject.optInt("repeated_delay", hVar.f13100b);
            hVar.f13101c = optJSONObject.optInt("random_delay_window", hVar.f13101c);
            hVar.f13102d = optJSONObject.optBoolean("background_allowed", hVar.f13102d);
            hVar.f13103e = optJSONObject.optBoolean("diagnostic_enabled", hVar.f13103e);
        }
        ui.a(this.f12988a.toModel(hVar));
    }

    public Gi() {
        this(new C9());
    }
}
