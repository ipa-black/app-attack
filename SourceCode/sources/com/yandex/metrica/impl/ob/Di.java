package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Di {

    /* renamed from: a  reason: collision with root package name */
    private final C1948w9 f12820a;

    public Di() {
        this(new C1948w9());
    }

    public Ph a(JSONObject jSONObject) {
        If.c cVar = new If.c();
        JSONObject optJSONObject = jSONObject.optJSONObject("cache_control");
        if (optJSONObject != null) {
            Long a2 = Tl.a(optJSONObject, "cells_around_ttl", (Long) null);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            cVar.f13086a = Tl.a(a2, timeUnit, cVar.f13086a);
            cVar.f13087b = Tl.a(Tl.a(optJSONObject, "wifi_networks_ttl", (Long) null), timeUnit, cVar.f13087b);
            cVar.f13088c = Tl.a(Tl.a(optJSONObject, "last_known_location_ttl", (Long) null), timeUnit, cVar.f13088c);
            cVar.f13089d = Tl.a(Tl.a(optJSONObject, "net_interfaces_ttl", (Long) null), timeUnit, cVar.f13089d);
        }
        return this.f12820a.toModel(cVar);
    }

    Di(C1948w9 c1948w9) {
        this.f12820a = c1948w9;
    }
}
