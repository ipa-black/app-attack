package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Vi {

    /* renamed from: a  reason: collision with root package name */
    private final Y9 f14166a;

    public Vi(Y9 y9) {
        this.f14166a = y9;
    }

    public final void a(Ui ui, JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("startup_update");
        If.r rVar = new If.r();
        Integer it = Tl.a(optJSONObject, "interval_seconds", (Integer) null);
        if (it != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            rVar.f13167a = it.intValue();
        }
        ui.a(this.f14166a.toModel(rVar));
    }

    public Vi() {
        this(new Y9());
    }
}
