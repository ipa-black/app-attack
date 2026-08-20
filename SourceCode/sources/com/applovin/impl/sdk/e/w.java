package com.applovin.impl.sdk.e;

import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class w extends y {
    /* JADX INFO: Access modifiers changed from: protected */
    public w(String str, com.applovin.impl.sdk.n nVar) {
        super(str, nVar);
    }

    private JSONObject a(com.applovin.impl.sdk.b.c cVar) {
        JSONObject i = i();
        JsonUtils.putString(i, IronSourceConstants.EVENTS_RESULT, cVar.b());
        Map<String, String> a2 = cVar.a();
        if (a2 != null) {
            JsonUtils.putJSONObject(i, OutcomeEventsTable.COLUMN_NAME_PARAMS, new JSONObject(a2));
        }
        return i;
    }

    protected abstract com.applovin.impl.sdk.b.c b();

    protected abstract void b(JSONObject jSONObject);

    protected abstract void c();

    @Override // com.applovin.impl.sdk.e.y
    protected int h() {
        return ((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.bC)).intValue();
    }

    @Override // java.lang.Runnable
    public void run() {
        com.applovin.impl.sdk.b.c b2 = b();
        if (b2 != null) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Reporting pending reward: " + b2 + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            a(a(b2), new b.c<JSONObject>() { // from class: com.applovin.impl.sdk.e.w.1
                @Override // com.applovin.impl.sdk.network.b.c
                public void a(int i, String str, JSONObject jSONObject) {
                    w.this.a(i);
                }

                @Override // com.applovin.impl.sdk.network.b.c
                public void a(JSONObject jSONObject, int i) {
                    w.this.b(jSONObject);
                }
            });
            return;
        }
        com.applovin.impl.sdk.v vVar2 = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.e(this.f5675c, "Pending reward not found");
        }
        c();
    }
}
