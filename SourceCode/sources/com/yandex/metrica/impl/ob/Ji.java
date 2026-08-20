package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Tl;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Ji {

    /* renamed from: a  reason: collision with root package name */
    private final J9 f13317a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ji() {
        this(new J9());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        if (ui.e().f13890f) {
            If.j jVar = new If.j();
            JSONObject optJSONObject = aVar.optJSONObject("identity_light_collecting");
            if (optJSONObject != null) {
                jVar.f13112a = optJSONObject.optLong("min_interval_seconds", jVar.f13112a);
            }
            ui.a(this.f13317a.toModel(jVar));
        }
    }

    Ji(J9 j9) {
        this.f13317a = j9;
    }
}
