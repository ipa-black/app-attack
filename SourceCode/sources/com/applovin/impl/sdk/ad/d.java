package com.applovin.impl.sdk.ad;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, d> f5509a = CollectionUtils.map();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f5510b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f5511c;

    /* renamed from: d  reason: collision with root package name */
    private final String f5512d;

    /* renamed from: e  reason: collision with root package name */
    private AppLovinAdSize f5513e;

    /* renamed from: f  reason: collision with root package name */
    private AppLovinAdType f5514f;

    private d(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str) {
        if (TextUtils.isEmpty(str) && (appLovinAdType == null || appLovinAdSize == null)) {
            throw new IllegalArgumentException("No zone identifier or type or size specified");
        }
        this.f5513e = appLovinAdSize;
        this.f5514f = appLovinAdType;
        this.f5512d = (StringUtils.isValidString(str) ? str.trim() : appLovinAdSize.getLabel() + "_" + appLovinAdType.getLabel()).toLowerCase(Locale.ENGLISH);
    }

    public static d a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        return a(appLovinAdSize, appLovinAdType, null);
    }

    public static d a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str) {
        d dVar = new d(appLovinAdSize, appLovinAdType, str);
        synchronized (f5510b) {
            String str2 = dVar.f5512d;
            Map<String, d> map = f5509a;
            if (map.containsKey(str2)) {
                dVar = map.get(str2);
            } else {
                map.put(str2, dVar);
            }
        }
        return dVar;
    }

    public static d a(String str) {
        return a(null, null, str);
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.has("ad_size") && jSONObject.has("ad_type")) {
            synchronized (f5510b) {
                d dVar = f5509a.get(JsonUtils.getString(jSONObject, "zone_id", ""));
                if (dVar != null) {
                    dVar.f5513e = AppLovinAdSize.fromString(JsonUtils.getString(jSONObject, "ad_size", ""));
                    dVar.f5514f = AppLovinAdType.fromString(JsonUtils.getString(jSONObject, "ad_type", ""));
                }
            }
        }
    }

    public static d b(String str) {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, str);
    }

    public static Collection<d> f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(7);
        Collections.addAll(linkedHashSet, g(), h(), i(), j(), k(), l(), m());
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public static d g() {
        return a(AppLovinAdSize.BANNER, AppLovinAdType.REGULAR);
    }

    public static d h() {
        return a(AppLovinAdSize.MREC, AppLovinAdType.REGULAR);
    }

    public static d i() {
        return a(AppLovinAdSize.LEADER, AppLovinAdType.REGULAR);
    }

    public static d j() {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.REGULAR);
    }

    public static d k() {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.APP_OPEN);
    }

    public static d l() {
        return a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED);
    }

    public static d m() {
        return a(AppLovinAdSize.NATIVE, AppLovinAdType.NATIVE);
    }

    public String a() {
        return this.f5512d;
    }

    public MaxAdFormat b() {
        AppLovinAdSize c2 = c();
        if (c2 == AppLovinAdSize.BANNER) {
            return MaxAdFormat.BANNER;
        }
        if (c2 == AppLovinAdSize.LEADER) {
            return MaxAdFormat.LEADER;
        }
        if (c2 == AppLovinAdSize.MREC) {
            return MaxAdFormat.MREC;
        }
        if (c2 == AppLovinAdSize.CROSS_PROMO) {
            return MaxAdFormat.CROSS_PROMO;
        }
        if (c2 != AppLovinAdSize.INTERSTITIAL) {
            if (c2 == AppLovinAdSize.NATIVE) {
                return MaxAdFormat.NATIVE;
            }
            return null;
        } else if (d() == AppLovinAdType.REGULAR) {
            return MaxAdFormat.INTERSTITIAL;
        } else {
            if (d() == AppLovinAdType.APP_OPEN) {
                return MaxAdFormat.APP_OPEN;
            }
            if (d() == AppLovinAdType.INCENTIVIZED) {
                return MaxAdFormat.REWARDED;
            }
            if (d() == AppLovinAdType.AUTO_INCENTIVIZED) {
                return MaxAdFormat.REWARDED_INTERSTITIAL;
            }
            return null;
        }
    }

    public AppLovinAdSize c() {
        if (this.f5513e == null && JsonUtils.valueExists(this.f5511c, "ad_size")) {
            this.f5513e = AppLovinAdSize.fromString(JsonUtils.getString(this.f5511c, "ad_size", null));
        }
        return this.f5513e;
    }

    public AppLovinAdType d() {
        if (this.f5514f == null && JsonUtils.valueExists(this.f5511c, "ad_type")) {
            this.f5514f = AppLovinAdType.fromString(JsonUtils.getString(this.f5511c, "ad_type", null));
        }
        return this.f5514f;
    }

    public boolean e() {
        return f().contains(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f5512d.equalsIgnoreCase(((d) obj).f5512d);
    }

    public int hashCode() {
        return this.f5512d.hashCode();
    }

    public String toString() {
        return "AdZone{id=" + this.f5512d + ", zoneObject=" + this.f5511c + '}';
    }
}
