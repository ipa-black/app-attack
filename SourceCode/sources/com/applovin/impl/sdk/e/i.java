package com.applovin.impl.sdk.e;

import android.app.ActivityManager;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.gms.security.ProviderInstaller;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class i extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f5704a = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private final int f5705e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f5706f;

    /* renamed from: g  reason: collision with root package name */
    private a f5707g;

    /* loaded from: classes.dex */
    public interface a {
        void a(JSONObject jSONObject);
    }

    /* loaded from: classes.dex */
    private class b extends com.applovin.impl.sdk.e.a {
        public b(com.applovin.impl.sdk.n nVar) {
            super("TaskTimeoutFetchBasicSettings", nVar, true);
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (i.this.f5706f) {
                if (i.this.f5707g != null) {
                    com.applovin.impl.sdk.v vVar = this.f5676d;
                    if (com.applovin.impl.sdk.v.a()) {
                        this.f5676d.e(this.f5675c, "Timing out fetch basic settings...");
                    }
                    i.this.a(new JSONObject());
                }
            }
        }
    }

    public i(int i, com.applovin.impl.sdk.n nVar, a aVar) {
        super("TaskFetchBasicSettings", nVar, true);
        this.f5706f = new Object();
        this.f5705e = i;
        this.f5707g = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        synchronized (this.f5706f) {
            a aVar = this.f5707g;
            if (aVar != null) {
                aVar.a(jSONObject);
                this.f5707g = null;
            }
        }
    }

    private String c() {
        return com.applovin.impl.sdk.utils.i.a((String) this.f5674b.a(com.applovin.impl.sdk.c.b.aY), "5.0/i", d());
    }

    private String h() {
        return com.applovin.impl.sdk.utils.i.a((String) this.f5674b.a(com.applovin.impl.sdk.c.b.aZ), "5.0/i", d());
    }

    protected Map<String, String> a() {
        Map<String, String> map = CollectionUtils.map();
        map.put("rid", UUID.randomUUID().toString());
        if (!((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.eA)).booleanValue()) {
            map.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f5674b.C());
        }
        Boolean a2 = com.applovin.impl.sdk.k.b().a(f());
        if (a2 != null) {
            map.put(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT, a2.toString());
        }
        Boolean a3 = com.applovin.impl.sdk.k.a().a(f());
        if (a3 != null) {
            map.put(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER, a3.toString());
        }
        Boolean a4 = com.applovin.impl.sdk.k.c().a(f());
        if (a4 != null) {
            map.put(AppLovinSdkExtraParameterKey.DO_NOT_SELL, a4.toString());
        }
        return map;
    }

    protected JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_version", AppLovinSdk.VERSION);
            jSONObject.put("is_cross_promo", this.f5674b.e());
            jSONObject.put("init_count", this.f5705e);
            jSONObject.put("server_installed_at", this.f5674b.a(com.applovin.impl.sdk.c.b.ai));
            if (this.f5674b.S()) {
                jSONObject.put("first_install", true);
            }
            if (!this.f5674b.T()) {
                jSONObject.put("first_install_v2", true);
            }
            String str = (String) this.f5674b.a(com.applovin.impl.sdk.c.b.dI);
            if (StringUtils.isValidString(str)) {
                jSONObject.put("plugin_version", str);
            }
            String u = this.f5674b.u();
            if (StringUtils.isValidString(u)) {
                jSONObject.put("mediation_provider", u);
            }
            jSONObject.put("installed_mediation_adapters", com.applovin.impl.mediation.c.c.a(this.f5674b));
            Map<String, Object> h2 = this.f5674b.Y().h();
            jSONObject.put("package_name", h2.get("package_name"));
            jSONObject.put("app_version", h2.get("app_version"));
            jSONObject.put("test_ads", h2.get("test_ads"));
            jSONObject.put(Constants.DEBUG_INTERSTITIAL, h2.get(Constants.DEBUG_INTERSTITIAL));
            jSONObject.put("tg", h2.get("tg"));
            jSONObject.put("target_sdk", h2.get("target_sdk"));
            List<String> initializationAdUnitIds = this.f5674b.q().getInitializationAdUnitIds();
            if (initializationAdUnitIds != null && initializationAdUnitIds.size() > 0) {
                List<String> removeTrimmedEmptyStrings = CollectionUtils.removeTrimmedEmptyStrings(initializationAdUnitIds);
                jSONObject.put("ad_unit_ids", CollectionUtils.implode(removeTrimmedEmptyStrings, removeTrimmedEmptyStrings.size()));
            }
            jSONObject.put("IABTCF_TCString", h2.get("IABTCF_TCString"));
            jSONObject.put("IABTCF_gdprApplies", h2.get("IABTCF_gdprApplies"));
            Map<String, Object> b2 = this.f5674b.Y().b();
            jSONObject.put("platform", b2.get("platform"));
            jSONObject.put("os", b2.get("os"));
            jSONObject.put("locale", b2.get("locale"));
            jSONObject.put("brand", b2.get("brand"));
            jSONObject.put("brand_name", b2.get("brand_name"));
            jSONObject.put("hardware", b2.get("hardware"));
            jSONObject.put("model", b2.get("model"));
            jSONObject.put("revision", b2.get("revision"));
            jSONObject.put("is_tablet", b2.get("is_tablet"));
            jSONObject.put("screen_size_in", b2.get("screen_size_in"));
            if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dR)).booleanValue()) {
                jSONObject.put("mtl", this.f5674b.ag().getLastTrimMemoryLevel());
            }
            try {
                ActivityManager activityManager = (ActivityManager) this.f5674b.P().getSystemService("activity");
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                if (activityManager != null) {
                    activityManager.getMemoryInfo(memoryInfo);
                    jSONObject.put("fm", memoryInfo.availMem);
                    jSONObject.put("tm", memoryInfo.totalMem);
                    jSONObject.put("lmt", memoryInfo.threshold);
                    jSONObject.put("lm", memoryInfo.lowMemory);
                }
            } catch (Throwable unused) {
            }
            Map<String, String> allData = this.f5674b.s().getAllData();
            if (!allData.isEmpty()) {
                jSONObject.put("targeting_data", new JSONObject(allData));
            }
            o.a k = this.f5674b.Y().k();
            jSONObject.put("dnt", k.f6005a);
            jSONObject.put("dnt_code", k.f6007c.a());
            Boolean a2 = com.applovin.impl.sdk.k.a().a(f());
            if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dE)).booleanValue() && StringUtils.isValidString(k.f6006b) && !Boolean.TRUE.equals(a2)) {
                jSONObject.put("idfa", k.f6006b);
            }
            o.b l = this.f5674b.Y().l();
            if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dx)).booleanValue() && l != null && !Boolean.TRUE.equals(a2)) {
                jSONObject.put("idfv", l.f6008a);
                jSONObject.put("idfv_scope", l.f6009b);
            }
            String name = this.f5674b.r().getName();
            if (StringUtils.isValidString(name)) {
                jSONObject.put("user_segment_name", StringUtils.encodeUriString(name, this.f5674b));
            }
            if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dA)).booleanValue()) {
                jSONObject.put("compass_random_token", this.f5674b.o());
            }
            if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.dC)).booleanValue()) {
                jSONObject.put("applovin_random_token", this.f5674b.p());
            }
            if (this.f5674b.N().a()) {
                jSONObject.put("test_mode", true);
            }
            String c2 = this.f5674b.N().c();
            if (StringUtils.isValidString(c2)) {
                jSONObject.put("test_mode_network", c2);
            }
            jSONObject.put("sdk_extra_parameters", new JSONObject(this.f5674b.q().getExtraParameters()));
        } catch (JSONException e2) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Failed to construct JSON body", e2);
            }
        }
        return jSONObject;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!com.applovin.impl.sdk.utils.h.i() && f5704a.compareAndSet(false, true)) {
            try {
                ProviderInstaller.installIfNeeded(this.f5674b.P());
            } catch (Throwable th) {
                com.applovin.impl.sdk.v vVar = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "Cannot update security provider", th);
                }
            }
        }
        Map<String, String> a2 = a();
        com.applovin.impl.sdk.network.c a3 = com.applovin.impl.sdk.network.c.a(this.f5674b).a(c()).c(h()).a(a2).a(b()).d(((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.eG)).booleanValue()).b(ShareTarget.METHOD_POST).a((c.a) new JSONObject()).a(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.df)).intValue()).c(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.di)).intValue()).b(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.de)).intValue()).a();
        this.f5674b.V().a(new b(this.f5674b), o.a.TIMEOUT, ((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.de)).intValue() + 250);
        u<JSONObject> uVar = new u<JSONObject>(a3, this.f5674b, g()) { // from class: com.applovin.impl.sdk.e.i.1
            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, JSONObject jSONObject) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.e(this.f5675c, "Unable to fetch basic SDK settings: server returned " + i);
                }
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                i.this.a(jSONObject);
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(JSONObject jSONObject, int i) {
                i.this.a(jSONObject);
            }
        };
        uVar.a(com.applovin.impl.sdk.c.b.aY);
        uVar.b(com.applovin.impl.sdk.c.b.aZ);
        this.f5674b.V().a((com.applovin.impl.sdk.e.a) uVar);
    }
}
