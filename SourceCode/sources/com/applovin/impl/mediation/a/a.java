package com.applovin.impl.mediation.a;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class a extends f implements MaxAd {

    /* renamed from: a  reason: collision with root package name */
    protected com.applovin.impl.mediation.g f4685a;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f4686c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f4687d;

    /* renamed from: e  reason: collision with root package name */
    private final String f4688e;

    /* renamed from: f  reason: collision with root package name */
    private MaxAdWaterfallInfo f4689f;

    /* renamed from: g  reason: collision with root package name */
    private long f4690g;

    /* renamed from: h  reason: collision with root package name */
    private String f4691h;
    private String i;
    private com.applovin.mediation.hybridAds.c j;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.mediation.g gVar, n nVar) {
        super(map, jSONObject, jSONObject2, nVar);
        this.f4686c = new AtomicBoolean();
        this.f4687d = new AtomicBoolean();
        this.f4685a = gVar;
        this.f4688e = gVar != null ? gVar.i() : null;
    }

    public static a a(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, n nVar) {
        String string = JsonUtils.getString(jSONObject2, FirebaseAnalytics.Param.AD_FORMAT, null);
        MaxAdFormat formatFromString = MaxAdFormat.formatFromString(string);
        if (formatFromString.isAdViewAd()) {
            return new b(map, jSONObject, jSONObject2, nVar);
        }
        if (formatFromString == MaxAdFormat.NATIVE) {
            return new d(map, jSONObject, jSONObject2, nVar);
        }
        if (formatFromString.isFullscreenAd()) {
            return new c(map, jSONObject, jSONObject2, nVar);
        }
        throw new IllegalArgumentException("Unsupported ad format: " + string);
    }

    private long z() {
        return b("load_started_time_ms", 0L);
    }

    public abstract a a(com.applovin.impl.mediation.g gVar);

    public String a() {
        return this.f4691h;
    }

    public void a(long j) {
        this.f4690g = j;
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            if (bundle.containsKey("creative_id") && !c("creative_id")) {
                c("creative_id", BundleUtils.getString("creative_id", bundle));
            }
            if (!bundle.containsKey("ad_width") || c("ad_width") || !bundle.containsKey("ad_height") || c("ad_height")) {
                return;
            }
            int i = BundleUtils.getInt("ad_width", bundle);
            int i2 = BundleUtils.getInt("ad_height", bundle);
            c("ad_width", i);
            c("ad_height", i2);
        }
    }

    public void a(MaxAdWaterfallInfo maxAdWaterfallInfo) {
        this.f4689f = maxAdWaterfallInfo;
    }

    public void a(String str) {
        this.f4691h = str;
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        JSONObject b2 = b();
        JsonUtils.putAll(b2, jSONObject);
        a(Utils.KEY_AD_VALUES, (Object) b2);
    }

    public JSONObject b() {
        return a(Utils.KEY_AD_VALUES, new JSONObject());
    }

    public void b(String str) {
        this.i = str;
    }

    public JSONObject c() {
        return a("revenue_parameters", new JSONObject());
    }

    public String d() {
        return JsonUtils.getString(c(), "revenue_event", "");
    }

    public boolean e() {
        com.applovin.impl.mediation.g gVar = this.f4685a;
        return gVar != null && gVar.f() && this.f4685a.g();
    }

    public String f() {
        return a("event_id", "");
    }

    public com.applovin.impl.mediation.g g() {
        return this.f4685a;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdReviewCreativeId() {
        return this.i;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str) {
        return getAdValue(str, null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str, String str2) {
        JSONObject b2 = b();
        if (b2.has(str)) {
            return JsonUtils.getString(b2, str, str2);
        }
        Bundle ab = ab();
        return ab.containsKey(str) ? ab.getString(str) : b(str, str2);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getCreativeId() {
        return b("creative_id", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getDspId() {
        return b("dsp_id", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getDspName() {
        return b("dsp_name", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdFormat getFormat() {
        return MaxAdFormat.formatFromString(b(FirebaseAnalytics.Param.AD_FORMAT, a(FirebaseAnalytics.Param.AD_FORMAT, (String) null)));
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxNativeAd getNativeAd() {
        com.applovin.impl.mediation.g gVar = this.f4685a;
        if (gVar != null) {
            return gVar.b();
        }
        return null;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkName() {
        return b("network_name", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkPlacement() {
        return StringUtils.emptyIfNull(p());
    }

    @Override // com.applovin.mediation.MaxAd
    public long getRequestLatencyMillis() {
        return this.f4690g;
    }

    @Override // com.applovin.mediation.MaxAd
    public double getRevenue() {
        if (((Boolean) this.f4701b.a(com.applovin.impl.sdk.c.a.U)).booleanValue() && getFormat().isFullscreenAd() && !w().get()) {
            this.f4701b.D();
            if (v.a()) {
                this.f4701b.D().e("MediatedAd", "Attempting to retrieve revenue when not available yet");
                return 0.0d;
            }
            return 0.0d;
        }
        return JsonUtils.getDouble(a("revenue_parameters", (JSONObject) null), "revenue", -1.0d);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getRevenuePrecision() {
        return JsonUtils.getString(a("revenue_parameters", (JSONObject) null), "precision", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public AppLovinSdkUtils.Size getSize() {
        int b2 = b("ad_width", -3);
        int b3 = b("ad_height", -3);
        return (b2 == -3 || b3 == -3) ? getFormat().getSize() : new AppLovinSdkUtils.Size(b2, b3);
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdWaterfallInfo getWaterfall() {
        return this.f4689f;
    }

    public String h() {
        return this.f4688e;
    }

    public Bundle i() {
        JSONObject a2;
        if (c("credentials")) {
            a2 = a("credentials", new JSONObject());
        } else {
            a2 = a("server_parameters", new JSONObject());
            JsonUtils.putString(a2, "placement_id", p());
        }
        return JsonUtils.toBundle(a2);
    }

    public String j() {
        return b("bid_response", (String) null);
    }

    public long k() {
        return b("bid_expiration_ms", BundleUtils.getLong("bid_expiration_ms", -1L, ab()));
    }

    public boolean l() {
        return b("is_js_tag_ad", (Boolean) false).booleanValue();
    }

    public MaxAdFormat m() {
        String b2 = b("haf", (String) null);
        if (StringUtils.isValidString(b2)) {
            return MaxAdFormat.formatFromString(b2);
        }
        return null;
    }

    public com.applovin.mediation.hybridAds.c n() {
        com.applovin.mediation.hybridAds.c cVar = this.j;
        if (cVar != null) {
            return cVar;
        }
        com.applovin.mediation.hybridAds.c cVar2 = new com.applovin.mediation.hybridAds.c(a("hybrid_ad_config", (JSONObject) null));
        this.j = cVar2;
        return cVar2;
    }

    public View o() {
        com.applovin.impl.mediation.g gVar;
        if (!e() || (gVar = this.f4685a) == null) {
            return null;
        }
        return gVar.a();
    }

    public String p() {
        return b("third_party_ad_placement_id", (String) null);
    }

    public String q() {
        return a("waterfall_name", "");
    }

    public String r() {
        return a("waterfall_test_name", "");
    }

    public long s() {
        if (z() > 0) {
            return u() - z();
        }
        return -1L;
    }

    public void t() {
        c("load_started_time_ms", SystemClock.elapsedRealtime());
    }

    @Override // com.applovin.impl.mediation.a.f
    public String toString() {
        return "MediatedAd{thirdPartyAdPlacementId=" + p() + ", adUnitId=" + getAdUnitId() + ", format=" + getFormat().getLabel() + ", networkName='" + getNetworkName() + "'}";
    }

    public long u() {
        return b("load_completed_time_ms", 0L);
    }

    public void v() {
        c("load_completed_time_ms", SystemClock.elapsedRealtime());
    }

    public AtomicBoolean w() {
        return this.f4686c;
    }

    public AtomicBoolean x() {
        return this.f4687d;
    }

    public void y() {
        this.f4685a = null;
        this.f4689f = null;
    }
}
