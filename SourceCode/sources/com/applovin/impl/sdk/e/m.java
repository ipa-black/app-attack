package com.applovin.impl.sdk.e;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.utils.Utils;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class m extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final a f5713a;

    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    public m(com.applovin.impl.sdk.n nVar, a aVar) {
        super("TaskFetchVariables", nVar);
        this.f5713a = aVar;
    }

    private Map<String, String> a() {
        return Utils.stringifyObjectMap(this.f5674b.Y().a(null, false, false));
    }

    @Override // java.lang.Runnable
    public void run() {
        u<JSONObject> uVar = new u<JSONObject>(com.applovin.impl.sdk.network.c.a(this.f5674b).a(com.applovin.impl.sdk.utils.i.k(this.f5674b)).c(com.applovin.impl.sdk.utils.i.l(this.f5674b)).a(a()).b(ShareTarget.METHOD_GET).a((c.a) new JSONObject()).b(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.dj)).intValue()).a(), this.f5674b) { // from class: com.applovin.impl.sdk.e.m.1
            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, JSONObject jSONObject) {
                com.applovin.impl.sdk.v vVar = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "Unable to fetch variables: server returned " + i);
                }
                com.applovin.impl.sdk.v.i("AppLovinVariableService", "Failed to load variables.");
                m.this.f5713a.a();
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(JSONObject jSONObject, int i) {
                com.applovin.impl.sdk.utils.i.d(jSONObject, this.f5674b);
                com.applovin.impl.sdk.utils.i.c(jSONObject, this.f5674b);
                com.applovin.impl.sdk.utils.i.f(jSONObject, this.f5674b);
                com.applovin.impl.sdk.utils.i.e(jSONObject, this.f5674b);
                m.this.f5713a.a();
            }
        };
        uVar.a(com.applovin.impl.sdk.c.b.bg);
        uVar.b(com.applovin.impl.sdk.c.b.bh);
        this.f5674b.V().a((com.applovin.impl.sdk.e.a) uVar);
    }
}
