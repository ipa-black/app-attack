package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Tl;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Ri {

    /* renamed from: a  reason: collision with root package name */
    private final U9 f13826a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ri() {
        this(new U9());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Ui ui, Tl.a aVar) {
        If.p pVar = new If.p();
        JSONObject optJSONObject = aVar.optJSONObject("sdk_list");
        if (optJSONObject != null) {
            Long a2 = Tl.a(optJSONObject, "min_collecting_interval_seconds", (Long) null);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            pVar.f13155a = Tl.a(a2, timeUnit, pVar.f13155a);
            pVar.f13156b = Tl.a(Tl.a(optJSONObject, "min_first_collecting_delay_seconds", (Long) null), timeUnit, pVar.f13156b);
            pVar.f13157c = Tl.a(Tl.a(optJSONObject, "min_collecting_delay_after_launch_seconds", (Long) null), timeUnit, pVar.f13157c);
            pVar.f13158d = Tl.a(Tl.a(optJSONObject, "min_request_retry_interval_seconds", (Long) null), timeUnit, pVar.f13158d);
        }
        ui.a(this.f13826a.toModel(pVar));
    }

    Ri(U9 u9) {
        this.f13826a = u9;
    }
}
