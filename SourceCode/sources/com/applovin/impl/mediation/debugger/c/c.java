package com.applovin.impl.mediation.debugger.c;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.e.u;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final b.c<JSONObject> f4995a;

    public c(b.c<JSONObject> cVar, n nVar) {
        super("TaskFetchMediationDebuggerInfo", nVar, true);
        this.f4995a = cVar;
    }

    private JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("installed_mediation_adapters", com.applovin.impl.mediation.c.c.a(this.f5674b));
            Boolean a2 = k.a().a(f());
            if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dG)).booleanValue() && !Boolean.TRUE.equals(a2)) {
                o.a k = this.f5674b.Y().k();
                if (StringUtils.isValidString(k.f6006b)) {
                    jSONObject.put("idfa", k.f6006b);
                }
            }
        } catch (JSONException e2) {
            v vVar = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Failed to construct JSON body", e2);
            }
        }
        return jSONObject;
    }

    protected Map<String, String> a() {
        Map<String, String> map = CollectionUtils.map();
        map.put("sdk_version", AppLovinSdk.VERSION);
        if (!((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.eA)).booleanValue()) {
            map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5674b.C());
        }
        Map<String, Object> h2 = this.f5674b.Y().h();
        map.put("package_name", String.valueOf(h2.get("package_name")));
        map.put("app_version", String.valueOf(h2.get("app_version")));
        Map<String, Object> b2 = this.f5674b.Y().b();
        map.put("platform", String.valueOf(b2.get("platform")));
        map.put("os", String.valueOf(b2.get("os")));
        return map;
    }

    @Override // java.lang.Runnable
    public void run() {
        u<JSONObject> uVar = new u<JSONObject>(com.applovin.impl.sdk.network.c.a(this.f5674b).b(ShareTarget.METHOD_POST).a(com.applovin.impl.mediation.c.b.c(this.f5674b)).c(com.applovin.impl.mediation.c.b.d(this.f5674b)).a(a()).a((c.a) new JSONObject()).b(((Long) this.f5674b.a(com.applovin.impl.sdk.c.a.f5597g)).intValue()).a(b()).a(), this.f5674b, g()) { // from class: com.applovin.impl.mediation.debugger.c.c.1
            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, JSONObject jSONObject) {
                c.this.f4995a.a(i, str, jSONObject);
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(JSONObject jSONObject, int i) {
                c.this.f4995a.a(jSONObject, i);
            }
        };
        uVar.a(com.applovin.impl.sdk.c.a.f5593c);
        uVar.b(com.applovin.impl.sdk.c.a.f5594d);
        this.f5674b.V().a((com.applovin.impl.sdk.e.a) uVar);
    }
}
