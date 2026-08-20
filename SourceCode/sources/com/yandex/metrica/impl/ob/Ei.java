package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Tl;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Ei {

    /* renamed from: a  reason: collision with root package name */
    private final C2020z9 f12898a;

    public Ei() {
        this(new C2020z9());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        JSONArray optJSONArray;
        JSONObject optJSONObject = aVar.optJSONObject("diagnostics");
        if (optJSONObject == null || (optJSONArray = optJSONObject.optJSONArray("functionalities")) == null) {
            return;
        }
        C1806qa c1806qa = null;
        C1806qa c1806qa2 = null;
        C1806qa c1806qa3 = null;
        for (int i = 0; i < optJSONArray.length(); i++) {
            try {
                JSONObject jSONObject = optJSONArray.getJSONObject(i);
                String string = jSONObject.getString("tag");
                C2020z9 c2020z9 = this.f12898a;
                If.e eVar = new If.e();
                eVar.f13093a = jSONObject.getLong("expiration_timestamp");
                eVar.f13094b = jSONObject.optInt(com.appnext.base.b.d.fn, eVar.f13094b);
                C1806qa model = c2020z9.toModel(eVar);
                if ("activation".equals(string)) {
                    c1806qa = model;
                } else if ("clids_info".equals(string)) {
                    c1806qa3 = model;
                } else if ("preload_info".equals(string)) {
                    c1806qa2 = model;
                }
            } catch (Throwable unused) {
            }
        }
        ui.a(new C1829ra(c1806qa, c1806qa3, c1806qa2));
    }

    Ei(C2020z9 c2020z9) {
        this.f12898a = c2020z9;
    }
}
