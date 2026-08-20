package com.applovin.impl.mediation.b;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.e.u;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.i;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f4830a;

    /* renamed from: e  reason: collision with root package name */
    private final MaxAdFormat f4831e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, Object> f4832f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, Object> f4833g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, Object> f4834h;
    private final JSONArray i;
    private final Context j;
    private final a.InterfaceC0065a k;

    public c(String str, MaxAdFormat maxAdFormat, Map<String, Object> map, Map<String, Object> map2, Map<String, Object> map3, JSONArray jSONArray, Context context, n nVar, a.InterfaceC0065a interfaceC0065a) {
        super("TaskFetchMediatedAd " + str, nVar);
        this.f4830a = str;
        this.f4831e = maxAdFormat;
        this.f4832f = map;
        this.f4833g = map2;
        this.f4834h = map3;
        this.i = jSONArray;
        this.j = context;
        this.k = interfaceC0065a;
    }

    private String a() {
        return com.applovin.impl.mediation.c.b.a(this.f5674b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str) {
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.e(this.f5675c, "Unable to fetch " + this.f4830a + " ad: server returned " + i);
        }
        if (i == -800) {
            this.f5674b.W().a(com.applovin.impl.sdk.d.f.q);
        }
        k.a(this.k, this.f4830a, i == -1009 ? new MaxErrorImpl(-1009, str) : i == -1001 ? new MaxErrorImpl(-1001, str) : StringUtils.isValidString(str) ? new MaxErrorImpl(-1000, str) : new MaxErrorImpl(-1));
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

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        try {
            i.d(jSONObject, this.f5674b);
            i.c(jSONObject, this.f5674b);
            i.e(jSONObject, this.f5674b);
            i.f(jSONObject, this.f5674b);
            com.applovin.impl.mediation.c.b.a(jSONObject, this.f5674b);
            com.applovin.impl.mediation.c.b.b(jSONObject, this.f5674b);
            com.applovin.impl.sdk.f.a(this.f5674b);
            if (this.f4831e != MaxAdFormat.formatFromString(JsonUtils.getString(jSONObject, FirebaseAnalytics.Param.AD_FORMAT, null))) {
                v.i(this.f5675c, "Ad format requested does not match ad unit id's format.");
            }
            this.f5674b.V().a((com.applovin.impl.sdk.e.a) b(jSONObject));
        } catch (Throwable th) {
            v vVar = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Unable to process mediated ad response", th);
            }
            throw new RuntimeException("Unable to process ad: " + th);
        }
    }

    private e b(JSONObject jSONObject) {
        return new e(this.f4830a, this.f4831e, this.f4832f, jSONObject, this.j, this.f5674b, this.k);
    }

    private String b() {
        return com.applovin.impl.mediation.c.b.b(this.f5674b);
    }

    private Map<String, String> c() {
        Map<String, String> map = CollectionUtils.map(2);
        map.put("AppLovin-Ad-Unit-Id", this.f4830a);
        map.put("AppLovin-Ad-Format", this.f4831e.getLabel());
        return map;
    }

    private void c(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(LogConstants.MSG_AD_TYPE_DISABLED, new JSONArray((Collection) this.f5674b.F().c()));
            jSONObject2.put("installed", com.applovin.impl.mediation.c.c.a(this.f5674b));
            jSONObject2.put("initialized", this.f5674b.G().c());
            jSONObject2.put("initialized_classnames", new JSONArray((Collection) this.f5674b.G().b().keySet()));
            jSONObject2.put("loaded_classnames", new JSONArray((Collection) this.f5674b.F().a()));
            jSONObject2.put("failed_classnames", new JSONArray((Collection) this.f5674b.F().b()));
            jSONObject.put("adapters_info", jSONObject2);
        } catch (Exception e2) {
            v vVar = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Failed to populate adapter classNames", e2);
            }
            throw new RuntimeException("Failed to populate classNames: " + e2);
        }
    }

    private void d(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = this.i;
        if (jSONArray != null) {
            jSONObject.put("signal_data", jSONArray);
        }
    }

    private void e(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("ad_unit_id", this.f4830a);
        jSONObject2.put(FirebaseAnalytics.Param.AD_FORMAT, this.f4831e.getLabel());
        Map map = CollectionUtils.map(this.f4833g);
        com.applovin.impl.mediation.a.a a2 = this.f5674b.J().a(this.f4830a);
        if (a2 != null) {
            map.put("previous_winning_network", a2.S());
            map.put("previous_winning_network_name", a2.getNetworkName());
        }
        jSONObject2.put("extra_parameters", CollectionUtils.toJson(map));
        jSONObject.put("ad_info", jSONObject2);
    }

    private void f(JSONObject jSONObject) {
        JSONObject andResetCustomPostBodyData = this.f5674b.H().getAndResetCustomPostBodyData();
        if (andResetCustomPostBodyData == null || !Utils.isDspDemoApp(this.f5674b.P())) {
            return;
        }
        JsonUtils.putAll(jSONObject, andResetCustomPostBodyData);
    }

    private void g(JSONObject jSONObject) {
        JsonUtils.putObject(jSONObject, "sdk_extra_parameters", new JSONObject(this.f5674b.q().getExtraParameters()));
    }

    private JSONObject h() throws JSONException {
        Map<String, Object> a2 = this.f5674b.Y().a(null, false, true);
        a2.putAll(this.f4834h);
        JSONObject jSONObject = new JSONObject(a2);
        e(jSONObject);
        d(jSONObject);
        c(jSONObject);
        f(jSONObject);
        g(jSONObject);
        return jSONObject;
    }

    @Override // java.lang.Runnable
    public void run() {
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Fetching next ad for ad unit id: " + this.f4830a + " and format: " + this.f4831e);
        }
        if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dO)).booleanValue() && Utils.isVPNConnected()) {
            v vVar2 = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "User is connected to a VPN");
            }
        }
        com.applovin.impl.sdk.d.g W = this.f5674b.W();
        W.a(com.applovin.impl.sdk.d.f.p);
        if (W.b(com.applovin.impl.sdk.d.f.f5656d) == 0) {
            W.b(com.applovin.impl.sdk.d.f.f5656d, System.currentTimeMillis());
        }
        try {
            JSONObject h2 = h();
            Map<String, String> map = CollectionUtils.map();
            map.put("rid", UUID.randomUUID().toString());
            if (!((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.eA)).booleanValue()) {
                map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5674b.C());
            }
            if (this.f5674b.N().a()) {
                map.put("test_mode", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            }
            String c2 = this.f5674b.N().c();
            if (StringUtils.isValidString(c2)) {
                map.put("filter_ad_network", c2);
                if (!this.f5674b.N().a()) {
                    map.put("fhkZsVqYC7", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                }
                if (this.f5674b.N().b()) {
                    map.put("force_ad_network", c2);
                }
            }
            a(W);
            u<JSONObject> uVar = new u<JSONObject>(com.applovin.impl.sdk.network.c.a(this.f5674b).b(ShareTarget.METHOD_POST).b(c()).a(a()).c(b()).a(map).a(h2).d(((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.a.X)).booleanValue()).a((c.a) new JSONObject()).b(((Long) this.f5674b.a(com.applovin.impl.sdk.c.a.f5596f)).intValue()).a(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.cZ)).intValue()).c(((Long) this.f5674b.a(com.applovin.impl.sdk.c.a.f5595e)).intValue()).a(), this.f5674b) { // from class: com.applovin.impl.mediation.b.c.1
                @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
                public void a(int i, String str, JSONObject jSONObject) {
                    c.this.a(i, str);
                }

                @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
                public void a(JSONObject jSONObject, int i) {
                    if (i != 200) {
                        c.this.a(i, (String) null);
                        return;
                    }
                    JsonUtils.putLong(jSONObject, "ad_fetch_latency_millis", this.f5766f.a());
                    JsonUtils.putLong(jSONObject, "ad_fetch_response_size", this.f5766f.b());
                    c.this.a(jSONObject);
                }
            };
            uVar.a(com.applovin.impl.sdk.c.a.f5593c);
            uVar.b(com.applovin.impl.sdk.c.a.f5594d);
            this.f5674b.V().a((com.applovin.impl.sdk.e.a) uVar);
        } catch (Throwable th) {
            v vVar3 = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Unable to fetch ad " + this.f4830a, th);
            }
            throw new RuntimeException("Unable to fetch ad: " + th);
        }
    }
}
