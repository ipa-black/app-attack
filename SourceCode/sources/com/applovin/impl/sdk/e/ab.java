package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class ab extends y {
    /* JADX INFO: Access modifiers changed from: protected */
    public ab(String str, com.applovin.impl.sdk.n nVar) {
        super(str, nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(JSONObject jSONObject) {
        com.applovin.impl.sdk.b.c c2 = c(jSONObject);
        if (c2 == null) {
            return;
        }
        a(c2);
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Pending reward handled: " + c2);
        }
    }

    private com.applovin.impl.sdk.b.c c(JSONObject jSONObject) {
        String str;
        try {
            JSONObject a2 = com.applovin.impl.sdk.utils.i.a(jSONObject);
            com.applovin.impl.sdk.utils.i.d(a2, this.f5674b);
            com.applovin.impl.sdk.utils.i.c(jSONObject, this.f5674b);
            com.applovin.impl.sdk.utils.i.e(jSONObject, this.f5674b);
            Map<String, String> stringMap = JsonUtils.toStringMap((JSONObject) a2.get(OutcomeEventsTable.COLUMN_NAME_PARAMS));
            try {
                str = a2.getString(IronSourceConstants.EVENTS_RESULT);
            } catch (Throwable unused) {
                str = "network_timeout";
            }
            return com.applovin.impl.sdk.b.c.a(str, stringMap);
        } catch (JSONException e2) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Unable to parse API response", e2);
                return null;
            }
            return null;
        }
    }

    protected abstract void a(com.applovin.impl.sdk.b.c cVar);

    protected abstract boolean b();

    @Override // com.applovin.impl.sdk.e.y
    protected int h() {
        return ((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.bB)).intValue();
    }

    @Override // java.lang.Runnable
    public void run() {
        a(i(), new b.c<JSONObject>() { // from class: com.applovin.impl.sdk.e.ab.1
            @Override // com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, JSONObject jSONObject) {
                if (ab.this.b()) {
                    com.applovin.impl.sdk.v vVar = ab.this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        ab.this.f5676d.e(ab.this.f5675c, "Reward validation failed with error code " + i + " but task was cancelled already");
                        return;
                    }
                    return;
                }
                com.applovin.impl.sdk.v vVar2 = ab.this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    ab.this.f5676d.e(ab.this.f5675c, "Reward validation failed with code " + i + " and error: " + str);
                }
                ab.this.a(i);
            }

            @Override // com.applovin.impl.sdk.network.b.c
            public void a(JSONObject jSONObject, int i) {
                if (!ab.this.b()) {
                    com.applovin.impl.sdk.v vVar = ab.this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        ab.this.f5676d.b(ab.this.f5675c, "Reward validation succeeded with code " + i + " and response: " + jSONObject);
                    }
                    ab.this.b(jSONObject);
                    return;
                }
                com.applovin.impl.sdk.v vVar2 = ab.this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    ab.this.f5676d.e(ab.this.f5675c, "Reward validation succeeded with code " + i + " but task was cancelled already");
                }
                com.applovin.impl.sdk.v vVar3 = ab.this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    ab.this.f5676d.e(ab.this.f5675c, "Response: " + jSONObject);
                }
            }
        });
    }
}
