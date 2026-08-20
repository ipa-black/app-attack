package com.applovin.impl.sdk.e;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class h extends a {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.ad.d f5702a;

    public h(com.applovin.impl.sdk.ad.d dVar, String str, com.applovin.impl.sdk.n nVar) {
        super(str, nVar);
        this.f5702a = dVar;
    }

    private void a(com.applovin.impl.sdk.d.g gVar) {
        long b2 = gVar.b(com.applovin.impl.sdk.d.f.f5656d);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - b2 > TimeUnit.MINUTES.toMillis(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.dr)).intValue())) {
            gVar.b(com.applovin.impl.sdk.d.f.f5656d, currentTimeMillis);
            gVar.c(com.applovin.impl.sdk.d.f.f5657e);
            gVar.c(com.applovin.impl.sdk.d.f.f5658f);
        }
    }

    private Map<String, String> i() {
        Map<String, String> map = CollectionUtils.map(3);
        map.put("AppLovin-Zone-Id", this.f5702a.a());
        if (this.f5702a.c() != null) {
            map.put("AppLovin-Ad-Size", this.f5702a.c().getLabel());
        }
        if (this.f5702a.d() != null) {
            map.put("AppLovin-Ad-Type", this.f5702a.d().getLabel());
        }
        return map;
    }

    protected abstract a a(JSONObject jSONObject);

    protected Map<String, String> a() {
        Map<String, String> map = CollectionUtils.map(4);
        map.put("zone_id", this.f5702a.a());
        if (this.f5702a.c() != null) {
            map.put("size", this.f5702a.c().getLabel());
        }
        if (this.f5702a.d() != null) {
            map.put("require", this.f5702a.d().getLabel());
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.e(this.f5675c, "Unable to fetch " + this.f5702a + " ad: server returned " + i);
        }
        if (i == -800) {
            this.f5674b.W().a(com.applovin.impl.sdk.d.f.j);
        }
    }

    protected abstract String b();

    protected void b(JSONObject jSONObject) {
        com.applovin.impl.sdk.utils.i.d(jSONObject, this.f5674b);
        com.applovin.impl.sdk.utils.i.c(jSONObject, this.f5674b);
        com.applovin.impl.sdk.utils.i.e(jSONObject, this.f5674b);
        com.applovin.impl.sdk.ad.d.a(jSONObject);
        this.f5674b.V().a(a(jSONObject));
    }

    protected abstract String c();

    /* JADX INFO: Access modifiers changed from: protected */
    public com.applovin.impl.sdk.ad.b h() {
        return this.f5702a.e() ? com.applovin.impl.sdk.ad.b.APPLOVIN_PRIMARY_ZONE : com.applovin.impl.sdk.ad.b.APPLOVIN_CUSTOM_ZONE;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map<String, String> map;
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Fetching next ad of zone: " + this.f5702a);
        }
        if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dO)).booleanValue() && Utils.isVPNConnected()) {
            com.applovin.impl.sdk.v vVar2 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "User is connected to a VPN");
            }
        }
        com.applovin.impl.sdk.d.g W = this.f5674b.W();
        W.a(com.applovin.impl.sdk.d.f.f5653a);
        if (W.b(com.applovin.impl.sdk.d.f.f5656d) == 0) {
            W.b(com.applovin.impl.sdk.d.f.f5656d, System.currentTimeMillis());
        }
        try {
            JSONObject andResetCustomPostBody = this.f5674b.v().getAndResetCustomPostBody();
            boolean booleanValue = ((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dl)).booleanValue();
            String str = ShareTarget.METHOD_POST;
            if (booleanValue) {
                JSONObject jSONObject = new JSONObject(this.f5674b.Y().a(a(), false, true));
                map = CollectionUtils.map();
                map.put("rid", UUID.randomUUID().toString());
                if (!((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.eA)).booleanValue()) {
                    map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5674b.C());
                }
                if (andResetCustomPostBody != null) {
                    JsonUtils.putAll(jSONObject, andResetCustomPostBody);
                }
                andResetCustomPostBody = jSONObject;
            } else {
                Map<String, String> stringifyObjectMap = Utils.stringifyObjectMap(this.f5674b.Y().a(a(), false, false));
                if (andResetCustomPostBody == null) {
                    andResetCustomPostBody = null;
                    str = ShareTarget.METHOD_GET;
                }
                map = stringifyObjectMap;
            }
            if (Utils.isDspDemoApp(f())) {
                map.putAll(this.f5674b.v().getAndResetCustomQueryParams());
            }
            a(W);
            c.a b2 = com.applovin.impl.sdk.network.c.a(this.f5674b).a(b()).c(c()).a(map).b(str).b(i()).a((c.a) new JSONObject()).a(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.cZ)).intValue()).a(((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.da)).booleanValue()).b(((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.db)).booleanValue()).b(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.cY)).intValue());
            if (andResetCustomPostBody != null) {
                b2.a(andResetCustomPostBody);
                b2.d(((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.eI)).booleanValue());
            }
            u<JSONObject> uVar = new u<JSONObject>(b2.a(), this.f5674b) { // from class: com.applovin.impl.sdk.e.h.1
                @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
                public void a(int i, String str2, JSONObject jSONObject2) {
                    h.this.a(i);
                }

                @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
                public void a(JSONObject jSONObject2, int i) {
                    if (i != 200) {
                        h.this.a(i);
                        return;
                    }
                    JsonUtils.putLong(jSONObject2, "ad_fetch_latency_millis", this.f5766f.a());
                    JsonUtils.putLong(jSONObject2, "ad_fetch_response_size", this.f5766f.b());
                    h.this.b(jSONObject2);
                }
            };
            uVar.a(com.applovin.impl.sdk.c.b.ba);
            uVar.b(com.applovin.impl.sdk.c.b.bb);
            this.f5674b.V().a((a) uVar);
        } catch (Throwable th) {
            com.applovin.impl.sdk.v vVar3 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Unable to fetch ad " + this.f5702a, th);
            }
            a(0);
        }
    }
}
