package com.applovin.impl.mediation;

import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.b.b;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final n f4870a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, c> f4871b = CollectionUtils.map(4);

    /* renamed from: c  reason: collision with root package name */
    private final Object f4872c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, com.applovin.impl.mediation.a.a> f4873d = CollectionUtils.map(4);

    /* renamed from: e  reason: collision with root package name */
    private final Object f4874e = new Object();

    /* loaded from: classes.dex */
    public enum a {
        PUBLISHER_INITIATED("publisher_initiated"),
        SEQUENTIAL_OR_PRECACHE("sequential_or_precache"),
        REFRESH("refresh"),
        EXPONENTIAL_RETRY("exponential_retry"),
        EXPIRED("expired"),
        NATIVE_AD_PLACER("native_ad_placer");
        

        /* renamed from: g  reason: collision with root package name */
        private final String f4890g;

        a(String str) {
            this.f4890g = str;
        }

        public String a() {
            return this.f4890g;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements a.InterfaceC0065a {

        /* renamed from: a  reason: collision with root package name */
        private final n f4891a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<Context> f4892b;

        /* renamed from: c  reason: collision with root package name */
        private final d f4893c;

        /* renamed from: d  reason: collision with root package name */
        private final c f4894d;

        /* renamed from: e  reason: collision with root package name */
        private final MaxAdFormat f4895e;

        /* renamed from: f  reason: collision with root package name */
        private final Map<String, Object> f4896f;

        /* renamed from: g  reason: collision with root package name */
        private final Map<String, Object> f4897g;

        /* renamed from: h  reason: collision with root package name */
        private final Map<String, Object> f4898h;
        private final int i;
        private long j;

        private b(Map<String, Object> map, Map<String, Object> map2, Map<String, Object> map3, c cVar, MaxAdFormat maxAdFormat, long j, d dVar, n nVar, Context context) {
            this.f4891a = nVar;
            this.f4892b = new WeakReference<>(context);
            this.f4893c = dVar;
            this.f4894d = cVar;
            this.f4895e = maxAdFormat;
            this.f4897g = map2;
            this.f4896f = map;
            this.f4898h = map3;
            this.j = j;
            this.i = CollectionUtils.getBoolean(map2, AppLovinSdkExtraParameterKey.DISABLE_AUTO_RETRIES) ? -1 : (maxAdFormat.isAdViewAd() && CollectionUtils.getBoolean(map2, "auto_refresh_stopped")) ? Math.min(2, ((Integer) nVar.a(com.applovin.impl.sdk.c.a.O)).intValue()) : ((Integer) nVar.a(com.applovin.impl.sdk.c.a.O)).intValue();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            throw new IllegalStateException("Wrong callback invoked for ad: " + maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, MaxError maxError) {
            if (this.f4891a.a(com.applovin.impl.sdk.c.a.P, this.f4895e) && this.f4894d.f4904c < this.i) {
                c.e(this.f4894d);
                final int pow = (int) Math.pow(2.0d, this.f4894d.f4904c);
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.d.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.f4897g.put("retry_delay_sec", Integer.valueOf(pow));
                        b.this.f4897g.put("retry_attempt", Integer.valueOf(b.this.f4894d.f4904c));
                        Context context = (Context) b.this.f4892b.get();
                        if (context == null) {
                            context = b.this.f4891a.P();
                        }
                        b.this.f4898h.put("art", a.EXPONENTIAL_RETRY.a());
                        b.this.f4898h.put("era", Integer.valueOf(b.this.f4894d.f4904c));
                        b.this.f4893c.a(str, b.this.f4895e, b.this.f4896f, b.this.f4897g, b.this.f4898h, context, b.this);
                    }
                }, TimeUnit.SECONDS.toMillis(pow));
                return;
            }
            this.f4894d.f4904c = 0;
            this.f4894d.f4903b.set(false);
            if (this.f4894d.f4905d != null) {
                MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxError;
                maxErrorImpl.setLoadTag(this.f4894d.f4902a);
                maxErrorImpl.setRequestLatencyMillis(SystemClock.elapsedRealtime() - this.j);
                k.a(this.f4894d.f4905d, str, maxError);
                this.f4894d.f4905d = null;
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            com.applovin.impl.mediation.a.a aVar = (com.applovin.impl.mediation.a.a) maxAd;
            aVar.a(this.f4894d.f4902a);
            aVar.a(SystemClock.elapsedRealtime() - this.j);
            this.f4894d.f4904c = 0;
            if (this.f4894d.f4905d != null) {
                aVar.g().e().a(this.f4894d.f4905d);
                this.f4894d.f4905d.onAdLoaded(aVar);
                if (aVar.d().endsWith("load")) {
                    this.f4894d.f4905d.onAdRevenuePaid(aVar);
                }
                this.f4894d.f4905d = null;
                if ((this.f4891a.b(com.applovin.impl.sdk.c.a.N).contains(maxAd.getAdUnitId()) || this.f4891a.a(com.applovin.impl.sdk.c.a.M, maxAd.getFormat())) && !this.f4891a.N().a() && !this.f4891a.N().b()) {
                    Context context = this.f4892b.get();
                    if (context == null) {
                        context = this.f4891a.P();
                    }
                    this.j = SystemClock.elapsedRealtime();
                    this.f4898h.put("art", a.SEQUENTIAL_OR_PRECACHE.a());
                    this.f4893c.a(maxAd.getAdUnitId(), maxAd.getFormat(), this.f4896f, this.f4897g, this.f4898h, context, this);
                    return;
                }
            } else {
                this.f4893c.a(aVar);
            }
            this.f4894d.f4903b.set(false);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f4902a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f4903b;

        /* renamed from: c  reason: collision with root package name */
        private int f4904c;

        /* renamed from: d  reason: collision with root package name */
        private volatile a.InterfaceC0065a f4905d;

        private c(String str) {
            this.f4903b = new AtomicBoolean();
            this.f4902a = str;
        }

        static /* synthetic */ int e(c cVar) {
            int i = cVar.f4904c;
            cVar.f4904c = i + 1;
            return i;
        }
    }

    public d(n nVar) {
        this.f4870a = nVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.a.a aVar) {
        synchronized (this.f4874e) {
            if (this.f4873d.containsKey(aVar.getAdUnitId())) {
                v.i("AppLovinSdk", "Ad in cache already: " + aVar.getAdUnitId());
            }
            this.f4873d.put(aVar.getAdUnitId(), aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final MaxAdFormat maxAdFormat, final Map<String, Object> map, final Map<String, Object> map2, final Map<String, Object> map3, final Context context, final a.InterfaceC0065a interfaceC0065a) {
        this.f4870a.V().a(new com.applovin.impl.mediation.b.b(maxAdFormat, map, context, this.f4870a, new b.a() { // from class: com.applovin.impl.mediation.d.1
            @Override // com.applovin.impl.mediation.b.b.a
            public void a(JSONArray jSONArray) {
                d.this.f4870a.V().a((com.applovin.impl.sdk.e.a) new com.applovin.impl.mediation.b.c(str, maxAdFormat, map, map2, map3, jSONArray, context, d.this.f4870a, interfaceC0065a));
            }
        }), com.applovin.impl.mediation.c.c.a(maxAdFormat));
    }

    private com.applovin.impl.mediation.a.a b(String str) {
        com.applovin.impl.mediation.a.a aVar;
        synchronized (this.f4874e) {
            aVar = this.f4873d.get(str);
            this.f4873d.remove(str);
        }
        return aVar;
    }

    private c b(String str, String str2) {
        c cVar;
        synchronized (this.f4872c) {
            String c2 = c(str, str2);
            cVar = this.f4871b.get(c2);
            if (cVar == null) {
                cVar = new c(str2);
                this.f4871b.put(c2, cVar);
            }
        }
        return cVar;
    }

    private String c(String str, String str2) {
        return str + (str2 != null ? "-" + str2 : "");
    }

    public void a(String str, String str2) {
        synchronized (this.f4872c) {
            this.f4871b.remove(c(str, str2));
        }
    }

    public void a(String str, String str2, MaxAdFormat maxAdFormat, a aVar, Map<String, Object> map, Map<String, Object> map2, Context context, a.InterfaceC0065a interfaceC0065a) {
        com.applovin.impl.mediation.a.a b2 = (this.f4870a.N().b() || Utils.isDspDemoApp(this.f4870a.P())) ? null : b(str);
        if (b2 != null) {
            b2.a(str2);
            b2.g().e().a(interfaceC0065a);
            interfaceC0065a.onAdLoaded(b2);
            if (b2.d().endsWith("load")) {
                interfaceC0065a.onAdRevenuePaid(b2);
            }
        }
        c b3 = b(str, str2);
        if (!b3.f4903b.compareAndSet(false, true)) {
            if (b3.f4905d != null && b3.f4905d != interfaceC0065a) {
                v.h("MediationAdLoadManager", "Attempting to load ad for same ad unit id (" + str + ") while another ad load is already in progress!");
            }
            b3.f4905d = interfaceC0065a;
            return;
        }
        if (b2 == null) {
            b3.f4905d = interfaceC0065a;
        }
        Map<String, Object> synchronizedMap = Collections.synchronizedMap(CollectionUtils.map());
        synchronizedMap.put("art", aVar.a());
        if (StringUtils.isValidString(str2)) {
            synchronizedMap.put("alt", str2);
        }
        a(str, maxAdFormat, map, map2, synchronizedMap, context, new b(map, map2, synchronizedMap, b3, maxAdFormat, SystemClock.elapsedRealtime(), this, this.f4870a, context));
    }

    public boolean a(String str) {
        boolean z;
        synchronized (this.f4874e) {
            z = this.f4873d.get(str) != null;
        }
        return z;
    }
}
