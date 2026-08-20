package com.applovin.impl.sdk.e;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class y extends a {
    /* JADX INFO: Access modifiers changed from: protected */
    public y(String str, com.applovin.impl.sdk.n nVar) {
        super(str, nVar);
    }

    protected abstract String a();

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
        com.applovin.impl.sdk.utils.i.a(i, this.f5674b);
    }

    protected abstract void a(JSONObject jSONObject);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject, final b.c<JSONObject> cVar) {
        u<JSONObject> uVar = new u<JSONObject>(com.applovin.impl.sdk.network.c.a(this.f5674b).a(com.applovin.impl.sdk.utils.i.a(a(), this.f5674b)).c(com.applovin.impl.sdk.utils.i.b(a(), this.f5674b)).a(com.applovin.impl.sdk.utils.i.e(this.f5674b)).b(ShareTarget.METHOD_POST).a(jSONObject).d(((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.eL)).booleanValue()).a((c.a) new JSONObject()).a(h()).a(), this.f5674b) { // from class: com.applovin.impl.sdk.e.y.1
            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, JSONObject jSONObject2) {
                cVar.a(i, str, jSONObject2);
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(JSONObject jSONObject2, int i) {
                cVar.a(jSONObject2, i);
            }
        };
        uVar.a(com.applovin.impl.sdk.c.b.bc);
        uVar.b(com.applovin.impl.sdk.c.b.bd);
        this.f5674b.V().a((a) uVar);
    }

    protected abstract int h();

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        String n = this.f5674b.n();
        if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dz)).booleanValue() && StringUtils.isValidString(n)) {
            JsonUtils.putString(jSONObject, "cuid", n);
        }
        if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dB)).booleanValue()) {
            JsonUtils.putString(jSONObject, "compass_random_token", this.f5674b.o());
        }
        if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dD)).booleanValue()) {
            JsonUtils.putString(jSONObject, "applovin_random_token", this.f5674b.p());
        }
        a(jSONObject);
        return jSONObject;
    }
}
