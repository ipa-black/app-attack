package com.ironsource.sdk.d;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.messaging.Constants;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.sdk.controller.FeaturesManager;
import com.ironsource.sdk.controller.g;
import com.ironsource.sdk.controller.j;
import com.ironsource.sdk.e;
import com.ironsource.sdk.f;
import com.ironsource.sdk.g.d;
import com.ironsource.sdk.j.a.d;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import io.bidmachine.utils.IabUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class b implements c, e, f, com.ironsource.sdk.j.a.a, com.ironsource.sdk.j.a.b, com.ironsource.sdk.j.a.c, d {

    /* renamed from: g  reason: collision with root package name */
    private static b f11935g;

    /* renamed from: a  reason: collision with root package name */
    public g f11936a;

    /* renamed from: b  reason: collision with root package name */
    com.ironsource.sdk.j.e f11937b;

    /* renamed from: c  reason: collision with root package name */
    String f11938c;

    /* renamed from: d  reason: collision with root package name */
    String f11939d;

    /* renamed from: e  reason: collision with root package name */
    j f11940e;

    /* renamed from: h  reason: collision with root package name */
    private long f11942h;
    private com.ironsource.sdk.service.d i;
    private com.ironsource.sdk.service.c j;
    private com.ironsource.sdk.controller.c l;

    /* renamed from: f  reason: collision with root package name */
    private final String f11941f = IronSourceConstants.SUPERSONIC_CONFIG_NAME;
    private boolean k = false;

    private b(Context context) {
        b(context);
    }

    private b(String str, String str2, Context context) {
        this.f11938c = str;
        this.f11939d = str2;
        b(context);
    }

    public static synchronized b a(Context context) {
        b a2;
        synchronized (b.class) {
            a2 = a(context, 0);
        }
        return a2;
    }

    public static synchronized b a(Context context, int i) {
        b bVar;
        synchronized (b.class) {
            Logger.i("IronSourceAdsPublisherAgent", "getInstance()");
            if (f11935g == null) {
                f11935g = new b(context);
            }
            bVar = f11935g;
        }
        return bVar;
    }

    public static synchronized e a(String str, String str2, Context context) {
        b bVar;
        synchronized (b.class) {
            if (f11935g == null) {
                com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.f11509a);
                f11935g = new b(str, str2, context);
            } else {
                com.ironsource.sdk.service.d.a().b(str);
                com.ironsource.sdk.service.d.a().a(str2);
            }
            bVar = f11935g;
        }
        return bVar;
    }

    private static com.ironsource.sdk.j.f a(com.ironsource.sdk.g.c cVar) {
        if (cVar == null) {
            return null;
        }
        return (com.ironsource.sdk.j.f) cVar.f12031g;
    }

    private void a(Context context, JSONObject jSONObject) {
        boolean optBoolean = jSONObject.optBoolean("enableLifeCycleListeners", false);
        this.k = optBoolean;
        if (optBoolean) {
            try {
                ((Application) context).registerActivityLifecycleCallbacks(new a(this));
            } catch (Throwable th) {
                com.ironsource.sdk.a.a aVar = new com.ironsource.sdk.a.a();
                aVar.a("generalmessage", th.getMessage());
                com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.q, aVar.f11500a);
            }
        }
    }

    private static com.ironsource.sdk.j.c b(com.ironsource.sdk.g.c cVar) {
        if (cVar == null) {
            return null;
        }
        return (com.ironsource.sdk.j.c) cVar.f12031g;
    }

    private void b(Context context) {
        try {
            JSONObject networkConfiguration = SDKUtils.getNetworkConfiguration();
            com.ironsource.sdk.utils.b.a(context);
            IronSourceStorageUtils.initializeCacheDirectory(context, new com.ironsource.sdk.h.e(SDKUtils.getNetworkConfiguration().optJSONObject("storage")));
            com.ironsource.sdk.utils.b.a().a(SDKUtils.getSDKVersion());
            this.i = c(context);
            this.f11940e = new j();
            com.ironsource.sdk.controller.c cVar = new com.ironsource.sdk.controller.c();
            this.l = cVar;
            if (context instanceof Activity) {
                cVar.a((Activity) context);
            }
            this.f11936a = new g(context, this.l, this.i, this.f11940e, com.ironsource.environment.e.a.f10578a);
            Logger.enableLogging(FeaturesManager.getInstance().getDebugMode());
            Logger.i("IronSourceAdsPublisherAgent", "C'tor");
            a(context, networkConfiguration);
            this.j = new com.ironsource.sdk.service.c();
            com.ironsource.mediationsdk.adunit.a.a.a("sdkv", "5.113");
            this.j.a();
            this.j.a(context);
            this.j.b();
            this.j.c();
            this.j.b(context);
            this.f11942h = 0L;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void b(com.ironsource.sdk.b bVar, Map<String, String> map) {
        if (bVar.f11526h) {
            c(bVar, map);
        } else {
            d(bVar, map);
        }
    }

    private static com.ironsource.sdk.j.b c(com.ironsource.sdk.g.c cVar) {
        if (cVar == null) {
            return null;
        }
        return (com.ironsource.sdk.j.b) cVar.f12031g;
    }

    private com.ironsource.sdk.service.d c(Context context) {
        com.ironsource.sdk.service.d a2 = com.ironsource.sdk.service.d.a();
        a2.b();
        a2.a(context, this.f11938c, this.f11939d);
        return a2;
    }

    private void c(final com.ironsource.sdk.b bVar, final Map<String, String> map) {
        Logger.d("IronSourceAdsPublisherAgent", "loadOnInitializedInstance " + bVar.f11520b);
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.5
            @Override // java.lang.Runnable
            public final void run() {
                com.ironsource.sdk.g.c a2 = b.this.f11940e.a(d.e.Interstitial, bVar.f11520b);
                if (a2 != null) {
                    b.this.f11936a.a(a2, map, (com.ironsource.sdk.j.a.c) b.this);
                }
            }
        });
    }

    private com.ironsource.sdk.g.c d(d.e eVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f11940e.a(eVar, str);
    }

    private void d(final com.ironsource.sdk.b bVar, final Map<String, String> map) {
        Logger.d("IronSourceAdsPublisherAgent", "loadOnNewInstance " + bVar.f11520b);
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.6
            @Override // java.lang.Runnable
            public final void run() {
                d.e eVar = bVar.a() ? d.e.Banner : d.e.Interstitial;
                j jVar = b.this.f11940e;
                com.ironsource.sdk.b bVar2 = bVar;
                String str = bVar2.f11520b;
                String str2 = bVar2.f11521c;
                HashMap hashMap = new HashMap();
                hashMap.put(Constants.FirelogAnalytics.PARAM_INSTANCE_ID, bVar2.f11520b);
                hashMap.put("instanceName", bVar2.f11521c);
                hashMap.put("rewarded", Boolean.toString(bVar2.f11519a));
                hashMap.put("inAppBidding", Boolean.toString(bVar2.f11522d));
                hashMap.put("apiVersion", "2");
                hashMap.put(IabUtils.KEY_WIDTH, bVar2.f11523e != null ? Integer.toString(bVar2.f11523e.f11497a) : "0");
                hashMap.put(IabUtils.KEY_HEIGHT, bVar2.f11523e != null ? Integer.toString(bVar2.f11523e.f11498b) : "0");
                hashMap.put("label", bVar2.f11523e != null ? bVar2.f11523e.f11499c : "");
                hashMap.put("isBanner", Boolean.toString(bVar2.a()));
                if (bVar2.f11524f != null) {
                    hashMap.putAll(bVar2.f11524f);
                }
                com.ironsource.sdk.g.c cVar = new com.ironsource.sdk.g.c(str, str2, hashMap, bVar2.f11525g);
                jVar.a(eVar, str, cVar);
                com.ironsource.sdk.a.a aVar = new com.ironsource.sdk.a.a();
                com.ironsource.sdk.a.a a2 = aVar.a("isbiddinginstance", Boolean.valueOf(bVar.f11522d)).a("demandsourcename", bVar.f11521c).a("producttype", com.ironsource.sdk.d.a(bVar));
                com.ironsource.sdk.service.a aVar2 = com.ironsource.sdk.service.a.f12109a;
                a2.a("custom_c", Long.valueOf(com.ironsource.sdk.service.a.c(bVar.f11520b)));
                com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.f11515g, aVar.f11500a);
                if (eVar == d.e.Banner) {
                    b.this.f11936a.a(b.this.f11938c, b.this.f11939d, cVar, (com.ironsource.sdk.j.a.b) b.this);
                    bVar.f11526h = true;
                    b.this.f11936a.a(cVar, map, (com.ironsource.sdk.j.a.b) b.this);
                    return;
                }
                b.this.f11936a.a(b.this.f11938c, b.this.f11939d, cVar, (com.ironsource.sdk.j.a.c) b.this);
                bVar.f11526h = true;
                b.this.f11936a.a(cVar, map, (com.ironsource.sdk.j.a.c) b.this);
            }
        });
    }

    @Override // com.ironsource.sdk.e
    public final void a() {
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.3
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.d();
            }
        });
    }

    @Override // com.ironsource.sdk.e
    public final void a(Activity activity) {
        try {
            Logger.i("IronSourceAdsPublisherAgent", "release()");
            com.ironsource.sdk.utils.a.a();
            this.l.b();
            this.f11936a.b(activity);
            this.f11936a.destroy();
            this.f11936a = null;
        } catch (Exception unused) {
        }
        f11935g = null;
    }

    @Override // com.ironsource.sdk.e
    public final void a(Activity activity, com.ironsource.sdk.b bVar, Map<String, String> map) {
        this.l.a(activity);
        long currentTimeMillis = System.currentTimeMillis();
        map.put("loadStartTime", String.valueOf(currentTimeMillis));
        com.ironsource.sdk.service.a aVar = com.ironsource.sdk.service.a.f12109a;
        com.ironsource.sdk.service.a.a(bVar.f11520b, currentTimeMillis);
        com.ironsource.sdk.a.a aVar2 = new com.ironsource.sdk.a.a();
        aVar2.a("isbiddinginstance", Boolean.valueOf(bVar.f11522d)).a("demandsourcename", bVar.f11521c).a("producttype", com.ironsource.sdk.d.a(bVar)).a("custom_c", Long.valueOf(currentTimeMillis));
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.f11513e, aVar2.f11500a);
        Logger.d("IronSourceAdsPublisherAgent", "loadAd " + bVar.f11520b);
        if (!bVar.f11522d) {
            b(bVar, map);
            return;
        }
        try {
            map.put("adm", SDKUtils.decodeString(map.get("adm")));
        } catch (Exception e2) {
            com.ironsource.sdk.a.a a2 = new com.ironsource.sdk.a.a().a("callfailreason", e2.getMessage()).a("generalmessage", bVar.f11526h ? com.ironsource.sdk.f.b.f12008a : com.ironsource.sdk.f.b.f12009b).a("isbiddinginstance", Boolean.valueOf(bVar.f11522d)).a("demandsourcename", bVar.f11521c).a("producttype", com.ironsource.sdk.d.a(bVar));
            com.ironsource.sdk.service.a aVar3 = com.ironsource.sdk.service.a.f12109a;
            com.ironsource.sdk.a.a a3 = a2.a("custom_c", Long.valueOf(com.ironsource.sdk.service.a.c(bVar.f11520b)));
            com.ironsource.sdk.service.a aVar4 = com.ironsource.sdk.service.a.f12109a;
            com.ironsource.sdk.service.a.b(bVar.f11520b);
            com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.j, a3.f11500a);
            e2.printStackTrace();
            Logger.d("IronSourceAdsPublisherAgent", "loadInAppBiddingAd failed decoding  ADM " + e2.getMessage());
        }
        b(bVar, map);
    }

    @Override // com.ironsource.sdk.e, com.ironsource.sdk.f
    public final void a(Activity activity, final Map<String, String> map) {
        if (activity != null) {
            this.l.a(activity);
        }
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.11
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(map, b.this.f11937b);
            }
        });
    }

    @Override // com.ironsource.sdk.e
    public final void a(com.ironsource.sdk.b bVar, final Map<String, String> map) {
        Logger.i("IronSourceAdsPublisherAgent", "showAd " + bVar.f11520b);
        final com.ironsource.sdk.g.c a2 = this.f11940e.a(d.e.Interstitial, bVar.f11520b);
        if (a2 == null) {
            return;
        }
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.7
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.b(a2, map, b.this);
            }
        });
    }

    @Override // com.ironsource.sdk.j.a.a
    public final void a(d.e eVar, String str) {
        com.ironsource.sdk.j.c b2;
        com.ironsource.sdk.g.c d2 = d(eVar, str);
        if (d2 != null) {
            if (eVar == d.e.RewardedVideo) {
                com.ironsource.sdk.j.f a2 = a(d2);
                if (a2 != null) {
                    a2.onRVAdClosed();
                }
            } else if (eVar != d.e.Interstitial || (b2 = b(d2)) == null) {
            } else {
                b2.onInterstitialClose();
            }
        }
    }

    @Override // com.ironsource.sdk.j.a.a
    public final void a(d.e eVar, String str, com.ironsource.sdk.g.a aVar) {
        com.ironsource.sdk.j.b c2;
        com.ironsource.sdk.g.c d2 = d(eVar, str);
        if (d2 != null) {
            d2.a(2);
            if (eVar == d.e.RewardedVideo) {
                com.ironsource.sdk.j.f a2 = a(d2);
                if (a2 != null) {
                    a2.onRVInitSuccess(aVar);
                }
            } else if (eVar == d.e.Interstitial) {
                com.ironsource.sdk.j.c b2 = b(d2);
                if (b2 != null) {
                    b2.onInterstitialInitSuccess();
                }
            } else if (eVar != d.e.Banner || (c2 = c(d2)) == null) {
            } else {
                c2.onBannerInitSuccess();
            }
        }
    }

    @Override // com.ironsource.sdk.j.a.a
    public final void a(d.e eVar, String str, String str2) {
        com.ironsource.sdk.j.b c2;
        com.ironsource.sdk.g.c d2 = d(eVar, str);
        com.ironsource.sdk.a.a a2 = new com.ironsource.sdk.a.a().a("demandsourcename", str).a("producttype", eVar).a("callfailreason", str2);
        com.ironsource.sdk.service.a aVar = com.ironsource.sdk.service.a.f12109a;
        com.ironsource.sdk.a.a a3 = a2.a("custom_c", Long.valueOf(com.ironsource.sdk.service.a.c(d2.f12026b)));
        com.ironsource.sdk.service.a aVar2 = com.ironsource.sdk.service.a.f12109a;
        com.ironsource.sdk.service.a.b(d2.f12026b);
        if (d2 != null) {
            a3.a("isbiddinginstance", Boolean.valueOf(com.ironsource.sdk.a.e.a(d2)));
            d2.a(3);
            if (eVar == d.e.RewardedVideo) {
                com.ironsource.sdk.j.f a4 = a(d2);
                if (a4 != null) {
                    a4.onRVInitFail(str2);
                }
            } else if (eVar == d.e.Interstitial) {
                com.ironsource.sdk.j.c b2 = b(d2);
                if (b2 != null) {
                    b2.onInterstitialInitFailed(str2);
                }
            } else if (eVar == d.e.Banner && (c2 = c(d2)) != null) {
                c2.onBannerInitFailed(str2);
            }
        }
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.f11516h, a3.f11500a);
    }

    @Override // com.ironsource.sdk.j.a.a
    public final void a(d.e eVar, String str, String str2, JSONObject jSONObject) {
        com.ironsource.sdk.j.b c2;
        com.ironsource.sdk.g.c d2 = d(eVar, str);
        if (d2 == null || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            Logger.i("IronSourceAdsPublisherAgent", "Received Event Notification: " + str2 + " for demand source: " + d2.f12025a);
            if (eVar == d.e.Interstitial) {
                com.ironsource.sdk.j.c b2 = b(d2);
                if (b2 != null) {
                    jSONObject.put("demandSourceName", str);
                    b2.onInterstitialEventNotificationReceived(str2, jSONObject);
                }
            } else if (eVar == d.e.RewardedVideo) {
                com.ironsource.sdk.j.f a2 = a(d2);
                if (a2 != null) {
                    jSONObject.put("demandSourceName", str);
                    a2.onRVEventNotificationReceived(str2, jSONObject);
                }
            } else if (eVar != d.e.Banner || (c2 = c(d2)) == null) {
            } else {
                jSONObject.put("demandSourceName", str);
                if (str2.equalsIgnoreCase("impressions")) {
                    c2.onBannerShowSuccess();
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ironsource.sdk.e
    public final void a(final com.ironsource.sdk.j.e eVar) {
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.13
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(b.this.f11938c, b.this.f11939d, eVar);
            }
        });
    }

    @Override // com.ironsource.sdk.j.a.d
    public final void a(String str, int i) {
        com.ironsource.sdk.j.f a2;
        com.ironsource.sdk.g.c d2 = d(d.e.RewardedVideo, str);
        if (d2 == null || (a2 = a(d2)) == null) {
            return;
        }
        a2.onRVAdCredited(i);
    }

    @Override // com.ironsource.sdk.j.a.b
    public final void a(String str, com.ironsource.sdk.c.a aVar) {
        com.ironsource.sdk.j.b c2;
        com.ironsource.sdk.g.c d2 = d(d.e.Banner, str);
        if (d2 == null || (c2 = c(d2)) == null) {
            return;
        }
        c2.onBannerLoadSuccess(aVar);
    }

    @Override // com.ironsource.sdk.j.a.d
    public final void a(String str, String str2) {
        com.ironsource.sdk.j.f a2;
        com.ironsource.sdk.g.c d2 = d(d.e.RewardedVideo, str);
        if (d2 == null || (a2 = a(d2)) == null) {
            return;
        }
        a2.onRVShowFail(str2);
    }

    @Override // com.ironsource.sdk.f
    public final void a(String str, String str2, int i) {
        d.e productType;
        com.ironsource.sdk.g.c a2;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (productType = SDKUtils.getProductType(str)) == null || (a2 = this.f11940e.a(productType, str2)) == null) {
            return;
        }
        a2.f12027c = i;
    }

    @Override // com.ironsource.sdk.f
    public final void a(final String str, final String str2, final com.ironsource.sdk.j.e eVar) {
        this.f11938c = str;
        this.f11939d = str2;
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.12
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(str, str2, eVar);
            }
        });
    }

    @Override // com.ironsource.sdk.f
    public final void a(final String str, final String str2, String str3, Map<String, String> map, com.ironsource.sdk.j.c cVar) {
        this.f11938c = str;
        this.f11939d = str2;
        final com.ironsource.sdk.g.c a2 = this.f11940e.a(d.e.Interstitial, str3, map, cVar);
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.14
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(str, str2, a2, (com.ironsource.sdk.j.a.c) b.this);
            }
        });
    }

    @Override // com.ironsource.sdk.f
    public final void a(final String str, final String str2, String str3, Map<String, String> map, com.ironsource.sdk.j.f fVar) {
        this.f11938c = str;
        this.f11939d = str2;
        final com.ironsource.sdk.g.c a2 = this.f11940e.a(d.e.RewardedVideo, str3, map, fVar);
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.1
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(str, str2, a2, (com.ironsource.sdk.j.a.d) b.this);
            }
        });
    }

    @Override // com.ironsource.sdk.f
    public final void a(final String str, final String str2, final Map<String, String> map, final com.ironsource.sdk.j.e eVar) {
        this.f11938c = str;
        this.f11939d = str2;
        this.f11937b = eVar;
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.9
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(str, str2, map, eVar);
            }
        });
    }

    @Override // com.ironsource.sdk.e
    public final void a(final Map<String, String> map, final com.ironsource.sdk.j.e eVar) {
        this.f11937b = eVar;
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.10
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(b.this.f11938c, b.this.f11939d, map, eVar);
            }
        });
    }

    @Override // com.ironsource.sdk.e, com.ironsource.sdk.f
    public final void a(final JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.has("gdprConsentStatus")) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("consent", Boolean.parseBoolean(jSONObject.getString("gdprConsentStatus")));
                this.i.a(jSONObject2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.4
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(jSONObject);
            }
        });
    }

    @Override // com.ironsource.sdk.e
    public final boolean a(com.ironsource.sdk.b bVar) {
        Logger.d("IronSourceAdsPublisherAgent", "isAdAvailable " + bVar.f11520b);
        com.ironsource.sdk.g.c a2 = this.f11940e.a(d.e.Interstitial, bVar.f11520b);
        if (a2 == null) {
            return false;
        }
        return a2.f12030f;
    }

    @Override // com.ironsource.sdk.f
    public final boolean a(String str) {
        return this.f11936a.c(str);
    }

    @Override // com.ironsource.sdk.e, com.ironsource.sdk.f
    public final void b(Activity activity) {
        if (this.k) {
            return;
        }
        d(activity);
    }

    @Override // com.ironsource.sdk.j.a.a
    public final void b(d.e eVar, String str) {
        com.ironsource.sdk.j.b c2;
        com.ironsource.sdk.g.c d2 = d(eVar, str);
        if (d2 != null) {
            if (eVar == d.e.RewardedVideo) {
                com.ironsource.sdk.j.f a2 = a(d2);
                if (a2 != null) {
                    a2.onRVAdClicked();
                }
            } else if (eVar == d.e.Interstitial) {
                com.ironsource.sdk.j.c b2 = b(d2);
                if (b2 != null) {
                    b2.onInterstitialClick();
                }
            } else if (eVar != d.e.Banner || (c2 = c(d2)) == null) {
            } else {
                c2.onBannerClick();
            }
        }
    }

    @Override // com.ironsource.sdk.j.a.d
    public final void b(String str) {
        com.ironsource.sdk.j.f a2;
        com.ironsource.sdk.g.c d2 = d(d.e.RewardedVideo, str);
        if (d2 == null || (a2 = a(d2)) == null) {
            return;
        }
        a2.onRVNoMoreOffers();
    }

    @Override // com.ironsource.sdk.j.a.c
    public final void b(String str, int i) {
        com.ironsource.sdk.g.c d2 = d(d.e.Interstitial, str);
        com.ironsource.sdk.j.c b2 = b(d2);
        if (d2 == null || b2 == null) {
            return;
        }
        b2.onInterstitialAdRewarded(str, i);
    }

    @Override // com.ironsource.sdk.j.a.c
    public final void b(String str, String str2) {
        com.ironsource.sdk.g.c d2 = d(d.e.Interstitial, str);
        com.ironsource.sdk.a.a aVar = new com.ironsource.sdk.a.a();
        aVar.a("callfailreason", str2).a("demandsourcename", str);
        if (d2 != null) {
            com.ironsource.sdk.a.a a2 = aVar.a("producttype", com.ironsource.sdk.a.e.a(d2, d.e.Interstitial)).a("generalmessage", d2.f12029e == 2 ? com.ironsource.sdk.f.b.f12008a : com.ironsource.sdk.f.b.f12009b).a("isbiddinginstance", Boolean.valueOf(com.ironsource.sdk.a.e.a(d2)));
            com.ironsource.sdk.service.a aVar2 = com.ironsource.sdk.service.a.f12109a;
            a2.a("custom_c", Long.valueOf(com.ironsource.sdk.service.a.c(d2.f12026b)));
            com.ironsource.sdk.service.a aVar3 = com.ironsource.sdk.service.a.f12109a;
            com.ironsource.sdk.service.a.b(d2.f12026b);
            com.ironsource.sdk.j.c b2 = b(d2);
            if (b2 != null) {
                b2.onInterstitialLoadFailed(str2);
            }
        }
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.f11514f, aVar.f11500a);
    }

    @Override // com.ironsource.sdk.f
    public final void b(final JSONObject jSONObject) {
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.8
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(jSONObject, (com.ironsource.sdk.j.a.d) b.this);
            }
        });
    }

    @Override // com.ironsource.sdk.e, com.ironsource.sdk.f
    public final void c(Activity activity) {
        if (this.k) {
            return;
        }
        e(activity);
    }

    @Override // com.ironsource.sdk.j.a.a
    public final void c(d.e eVar, String str) {
        com.ironsource.sdk.j.f a2;
        com.ironsource.sdk.g.c d2 = d(eVar, str);
        if (d2 != null) {
            if (eVar == d.e.Interstitial) {
                com.ironsource.sdk.j.c b2 = b(d2);
                if (b2 != null) {
                    b2.onInterstitialOpen();
                }
            } else if (eVar != d.e.RewardedVideo || (a2 = a(d2)) == null) {
            } else {
                a2.onRVAdOpened();
            }
        }
    }

    @Override // com.ironsource.sdk.j.a.c
    public final void c(String str) {
        com.ironsource.sdk.g.c d2 = d(d.e.Interstitial, str);
        com.ironsource.sdk.a.a a2 = new com.ironsource.sdk.a.a().a("demandsourcename", str);
        if (d2 != null) {
            com.ironsource.sdk.a.a a3 = a2.a("producttype", com.ironsource.sdk.a.e.a(d2, d.e.Interstitial)).a("isbiddinginstance", Boolean.valueOf(com.ironsource.sdk.a.e.a(d2)));
            com.ironsource.sdk.service.a aVar = com.ironsource.sdk.service.a.f12109a;
            a3.a("custom_c", Long.valueOf(com.ironsource.sdk.service.a.c(d2.f12026b)));
            com.ironsource.sdk.service.a aVar2 = com.ironsource.sdk.service.a.f12109a;
            com.ironsource.sdk.service.a.b(d2.f12026b);
            com.ironsource.sdk.j.c b2 = b(d2);
            if (b2 != null) {
                b2.onInterstitialLoadSuccess();
            }
        }
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.k, a2.f11500a);
    }

    @Override // com.ironsource.sdk.j.a.c
    public final void c(String str, String str2) {
        com.ironsource.sdk.j.c b2;
        com.ironsource.sdk.g.c d2 = d(d.e.Interstitial, str);
        if (d2 == null || (b2 = b(d2)) == null) {
            return;
        }
        b2.onInterstitialShowFailed(str2);
    }

    @Override // com.ironsource.sdk.f
    public final void c(JSONObject jSONObject) {
        final String optString = jSONObject.optString("demandSourceName");
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.15
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(optString, b.this);
            }
        });
    }

    @Override // com.ironsource.sdk.d.c
    public final void d(Activity activity) {
        try {
            this.f11936a.f();
            this.f11936a.b(activity);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ironsource.sdk.j.a.c
    public final void d(String str) {
        com.ironsource.sdk.j.c b2;
        com.ironsource.sdk.g.c d2 = d(d.e.Interstitial, str);
        if (d2 == null || (b2 = b(d2)) == null) {
            return;
        }
        b2.onInterstitialShowSuccess();
    }

    @Override // com.ironsource.sdk.j.a.b
    public final void d(String str, String str2) {
        com.ironsource.sdk.j.b c2;
        com.ironsource.sdk.g.c d2 = d(d.e.Banner, str);
        if (d2 == null || (c2 = c(d2)) == null) {
            return;
        }
        c2.onBannerLoadFail(str2);
    }

    @Override // com.ironsource.sdk.f
    public final void d(final JSONObject jSONObject) {
        this.f11936a.a(new Runnable() { // from class: com.ironsource.sdk.d.b.2
            @Override // java.lang.Runnable
            public final void run() {
                b.this.f11936a.a(jSONObject, (com.ironsource.sdk.j.a.c) b.this);
            }
        });
    }

    @Override // com.ironsource.sdk.d.c
    public final void e(Activity activity) {
        this.l.a(activity);
        this.f11936a.e();
        this.f11936a.a(activity);
    }
}
