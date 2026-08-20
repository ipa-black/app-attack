package com.applovin.impl.mediation.c;

import com.applovin.impl.sdk.c.d;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.i;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b extends i {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f4864a = {"ads", com.appnext.core.a.b.hW, "auto_init_adapters", "test_mode_idfas", "test_mode_auto_init_adapters"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f4865b = {"ads", com.appnext.core.a.b.hW, "signal_providers"};

    public static String a(n nVar) {
        return i.a((String) nVar.a(com.applovin.impl.sdk.c.a.f5593c), "1.0/mediate", nVar);
    }

    public static void a(JSONObject jSONObject, n nVar) {
        if (JsonUtils.valueExists(jSONObject, "signal_providers")) {
            JSONObject shallowCopy = JsonUtils.shallowCopy(jSONObject);
            JsonUtils.removeObjectsForKeys(shallowCopy, f4864a);
            nVar.a((d<d<String>>) d.x, (d<String>) shallowCopy.toString());
            if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.ff)).booleanValue()) {
                com.applovin.impl.mediation.b.b.a(shallowCopy);
            }
        }
    }

    public static String b(n nVar) {
        return i.a((String) nVar.a(com.applovin.impl.sdk.c.a.f5594d), "1.0/mediate", nVar);
    }

    public static void b(JSONObject jSONObject, n nVar) {
        if (jSONObject.length() == 0) {
            return;
        }
        if (!JsonUtils.valueExists(jSONObject, "auto_init_adapters") && !JsonUtils.valueExists(jSONObject, "test_mode_auto_init_adapters")) {
            nVar.b(d.y);
            return;
        }
        JSONObject shallowCopy = JsonUtils.shallowCopy(jSONObject);
        JsonUtils.removeObjectsForKeys(shallowCopy, f4865b);
        nVar.a((d<d<String>>) d.y, (d<String>) shallowCopy.toString());
    }

    public static String c(n nVar) {
        return i.a((String) nVar.a(com.applovin.impl.sdk.c.a.f5593c), "1.0/mediate_debug", nVar);
    }

    public static String d(n nVar) {
        return i.a((String) nVar.a(com.applovin.impl.sdk.c.a.f5594d), "1.0/mediate_debug", nVar);
    }
}
