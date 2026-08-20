package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Sh;
import com.yandex.metrica.impl.ob.Tl;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Hi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        If.i iVar = new If.i();
        try {
            Object jSONObject = new JSONObject();
            try {
                jSONObject = aVar.get("features");
            } catch (Throwable unused) {
            }
            JSONObject optJSONObject = ((JSONObject) jSONObject).optJSONObject("list");
            if (optJSONObject != null) {
                Sh sh = new Sh(new Sh.a().d(a(optJSONObject, "easy_collecting", iVar.f13104a)).e(a(optJSONObject, "egress", iVar.w)).m(a(optJSONObject, "package_info", iVar.f13105b)).n(a(optJSONObject, "permissions_collecting", iVar.f13106c)).f(a(optJSONObject, "features_collecting", iVar.f13107d)).o(a(optJSONObject, "sdk_list", iVar.j)).g(a(optJSONObject, "google_aid", iVar.f13108e)).q(a(optJSONObject, "throttling", iVar.r)).v(a(optJSONObject, "wifi_around", iVar.f13109f)).w(a(optJSONObject, "wifi_connected", iVar.f13110g)).c(a(optJSONObject, "cells_around", iVar.f13111h)).p(a(optJSONObject, "sim_info", iVar.i)).j(a(optJSONObject, "identity_light_collecting", iVar.k)).l(a(optJSONObject, "location_collecting", iVar.l)).k(a(optJSONObject, "lbs_collecting", iVar.m)).h(a(optJSONObject, "gpl_collecting", iVar.n)).t(a(optJSONObject, "ui_parsing", iVar.o)).s(a(optJSONObject, "ui_event_sending", iVar.p)).u(a(optJSONObject, "ui_raw_event_sending", iVar.p)).r(a(optJSONObject, "ui_collecting_for_bridge", iVar.q)).a(a(optJSONObject, "cell_additional_info", iVar.s)).b(a(optJSONObject, "cell_additional_info_connected_only", iVar.t)).i(a(optJSONObject, "huawei_oaid", iVar.v)).a(optJSONObject.has("ssl_pinning") ? Boolean.valueOf(optJSONObject.getJSONObject("ssl_pinning").getBoolean("enabled")) : null));
                ui.a(a(optJSONObject, "socket", false));
                ui.a(sh);
            }
        } catch (Throwable unused2) {
        }
    }

    private boolean a(JSONObject jSONObject, String str, boolean z) throws JSONException {
        Boolean valueOf = jSONObject.has(str) ? Boolean.valueOf(jSONObject.getJSONObject(str).getBoolean("enabled")) : null;
        Boolean valueOf2 = Boolean.valueOf(z);
        if (valueOf == null) {
            valueOf = valueOf2;
        }
        return valueOf.booleanValue();
    }
}
