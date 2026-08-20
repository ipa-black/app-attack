package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Fi {

    /* renamed from: a  reason: collision with root package name */
    private final B9 f12947a;

    public Fi(B9 b9) {
        this.f12947a = b9;
    }

    public final void a(Ui ui, JSONObject jSONObject) {
        If.g gVar = new If.g();
        JSONObject optJSONObject = jSONObject.optJSONObject("easy_collecting");
        if (optJSONObject != null) {
            gVar.f13098a = optJSONObject.optLong("first_delay_seconds", gVar.f13098a);
        }
        ui.a(this.f12947a.toModel(gVar));
    }

    public Fi() {
        this(new B9());
    }
}
