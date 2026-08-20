package com.applovin.impl.mediation.b;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.mediation.MaxAdWaterfallInfoImpl;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MaxMediatedNetworkInfoImpl;
import com.applovin.impl.mediation.MaxNetworkResponseInfoImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f4841a = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private final String f4842e;

    /* renamed from: f  reason: collision with root package name */
    private final MaxAdFormat f4843f;

    /* renamed from: g  reason: collision with root package name */
    private final JSONObject f4844g;

    /* renamed from: h  reason: collision with root package name */
    private final List<com.applovin.impl.mediation.a.a> f4845h;
    private final a.InterfaceC0065a i;
    private final WeakReference<Context> j;
    private long k;
    private final List<MaxNetworkResponseInfo> l;

    /* loaded from: classes.dex */
    private class a extends com.applovin.impl.sdk.e.a {

        /* renamed from: e  reason: collision with root package name */
        private final long f4850e;

        /* renamed from: f  reason: collision with root package name */
        private final int f4851f;

        /* renamed from: g  reason: collision with root package name */
        private final com.applovin.impl.mediation.a.a f4852g;

        /* renamed from: h  reason: collision with root package name */
        private final List<com.applovin.impl.mediation.a.a> f4853h;

        a(int i, List<com.applovin.impl.mediation.a.a> list) {
            super(e.this.f5675c, e.this.f5674b);
            this.f4850e = SystemClock.elapsedRealtime();
            this.f4851f = i;
            this.f4852g = list.get(i);
            this.f4853h = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.applovin.impl.mediation.a.a aVar, MaxNetworkResponseInfo.AdLoadState adLoadState, long j, MaxError maxError) {
            e.this.l.add(new MaxNetworkResponseInfoImpl(adLoadState, aVar.i(), new MaxMediatedNetworkInfoImpl(com.applovin.impl.mediation.c.c.a(aVar.R(), this.f5674b)), j, maxError));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
        }

        @Override // java.lang.Runnable
        public void run() {
            v vVar = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Loading ad " + (this.f4851f + 1) + " of " + this.f4853h.size() + ": " + this.f4852g.S());
            }
            a("started to load ad");
            Context context = (Context) e.this.j.get();
            this.f5674b.H().loadThirdPartyMediatedAd(e.this.f4842e, this.f4852g, context instanceof Activity ? (Activity) context : this.f5674b.ar(), new com.applovin.impl.mediation.c.a(e.this.i) { // from class: com.applovin.impl.mediation.b.e.a.1
                @Override // com.applovin.impl.mediation.c.a, com.applovin.mediation.MaxAdListener
                public void onAdLoadFailed(String str, MaxError maxError) {
                    long elapsedRealtime = SystemClock.elapsedRealtime() - a.this.f4850e;
                    v unused = a.this.f5676d;
                    if (v.a()) {
                        a.this.f5676d.b(a.this.f5675c, "Ad failed to load in " + elapsedRealtime + " ms with error: " + maxError);
                    }
                    a.this.a("failed to load ad: " + maxError.getCode());
                    a aVar = a.this;
                    aVar.a(aVar.f4852g, MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD, elapsedRealtime, maxError);
                    if (a.this.f4851f >= a.this.f4853h.size() - 1) {
                        e.this.a(new MaxErrorImpl(-5001, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."));
                        return;
                    }
                    a.this.f5674b.V().a(new a(a.this.f4851f + 1, a.this.f4853h), com.applovin.impl.mediation.c.c.a(e.this.f4843f));
                }

                @Override // com.applovin.impl.mediation.c.a, com.applovin.mediation.MaxAdListener
                public void onAdLoaded(MaxAd maxAd) {
                    a.this.a("loaded ad");
                    long elapsedRealtime = SystemClock.elapsedRealtime() - a.this.f4850e;
                    v unused = a.this.f5676d;
                    if (v.a()) {
                        a.this.f5676d.b(a.this.f5675c, "Ad loaded in " + elapsedRealtime + "ms");
                    }
                    com.applovin.impl.mediation.a.a aVar = (com.applovin.impl.mediation.a.a) maxAd;
                    a.this.a(aVar, MaxNetworkResponseInfo.AdLoadState.AD_LOADED, elapsedRealtime, null);
                    int i = a.this.f4851f;
                    while (true) {
                        i++;
                        if (i >= a.this.f4853h.size()) {
                            e.this.a(aVar);
                            return;
                        } else {
                            a aVar2 = a.this;
                            aVar2.a((com.applovin.impl.mediation.a.a) aVar2.f4853h.get(i), MaxNetworkResponseInfo.AdLoadState.AD_LOAD_NOT_ATTEMPTED, -1L, null);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, MaxAdFormat maxAdFormat, Map<String, Object> map, JSONObject jSONObject, Context context, n nVar, a.InterfaceC0065a interfaceC0065a) {
        super("TaskProcessMediationWaterfall:" + str + ":" + maxAdFormat.getLabel(), nVar);
        this.f4842e = str;
        this.f4843f = maxAdFormat;
        this.f4844g = jSONObject;
        this.i = interfaceC0065a;
        this.j = new WeakReference<>(context);
        this.f4845h = new ArrayList(jSONObject.length());
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ads", new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            this.f4845h.add(com.applovin.impl.mediation.a.a.a(map, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, nVar));
        }
        this.l = new ArrayList(this.f4845h.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.a.a aVar) {
        this.f5674b.J().a(aVar);
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.k;
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.c(this.f5675c, "Waterfall loaded in " + elapsedRealtime + "ms for " + aVar.S());
        }
        aVar.a(new MaxAdWaterfallInfoImpl(aVar, elapsedRealtime, this.l));
        k.a((MaxAdListener) this.i, (MaxAd) aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxError maxError) {
        com.applovin.impl.sdk.d.g W;
        com.applovin.impl.sdk.d.f fVar;
        if (maxError.getCode() == 204) {
            W = this.f5674b.W();
            fVar = com.applovin.impl.sdk.d.f.r;
        } else if (maxError.getCode() == -5001) {
            W = this.f5674b.W();
            fVar = com.applovin.impl.sdk.d.f.s;
        } else {
            W = this.f5674b.W();
            fVar = com.applovin.impl.sdk.d.f.t;
        }
        W.a(fVar);
        ArrayList arrayList = new ArrayList(this.l.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : this.l) {
            if (maxNetworkResponseInfo.getAdLoadState() == MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD) {
                arrayList.add(maxNetworkResponseInfo);
            }
        }
        if (arrayList.size() > 0) {
            StringBuilder sb = new StringBuilder("======FAILED AD LOADS======\n");
            int i = 0;
            while (i < arrayList.size()) {
                MaxNetworkResponseInfo maxNetworkResponseInfo2 = (MaxNetworkResponseInfo) arrayList.get(i);
                i++;
                sb.append(i).append(") ").append(maxNetworkResponseInfo2.getMediatedNetwork().getName()).append("\n..code: ").append(maxNetworkResponseInfo2.getError().getCode()).append("\n..message: ").append(maxNetworkResponseInfo2.getError().getMessage()).append("\n");
            }
            ((MaxErrorImpl) maxError).setAdLoadFailureInfo(sb.toString());
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.k;
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.c(this.f5675c, "Waterfall failed in " + elapsedRealtime + "ms with error: " + maxError);
        }
        ((MaxErrorImpl) maxError).setWaterfall(new MaxAdWaterfallInfoImpl(null, JsonUtils.getString(this.f4844g, "waterfall_name", ""), JsonUtils.getString(this.f4844g, "waterfall_test_name", ""), elapsedRealtime, this.l));
        k.a(this.i, this.f4842e, maxError);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.k = SystemClock.elapsedRealtime();
        if (this.f4844g.optBoolean("is_testing", false) && !this.f5674b.N().a() && f4841a.compareAndSet(false, true)) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.b.e.1
                @Override // java.lang.Runnable
                public void run() {
                    Utils.showAlert("MAX SDK Not Initialized In Test Mode", "Test ads may not load. Please force close and restart the app if you experience issues.", e.this.f5674b.ar());
                }
            });
        }
        if (this.f4845h.size() > 0) {
            v vVar = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Starting waterfall for " + this.f4845h.size() + " ad(s)...");
            }
            this.f5674b.V().a((com.applovin.impl.sdk.e.a) new a(0, this.f4845h));
            return;
        }
        v vVar2 = this.f5676d;
        if (v.a()) {
            this.f5676d.d(this.f5675c, "No ads were returned from the server");
        }
        Utils.maybeHandleNoFillResponseForPublisher(this.f4842e, this.f4843f, this.f4844g, this.f5674b);
        JSONObject jSONObject = JsonUtils.getJSONObject(this.f4844g, com.appnext.core.a.b.hW, new JSONObject());
        long j = JsonUtils.getLong(jSONObject, "alfdcs", 0L);
        final MaxErrorImpl maxErrorImpl = new MaxErrorImpl(204, "MAX returned no eligible ads from any mediated networks for this app/device.");
        if (j <= 0) {
            a(maxErrorImpl);
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(j);
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.b.e.2
            @Override // java.lang.Runnable
            public void run() {
                e.this.a(maxErrorImpl);
            }
        };
        if (JsonUtils.getBoolean(jSONObject, "alfdcs_iba", false).booleanValue()) {
            com.applovin.impl.sdk.utils.f.a(millis, this.f5674b, runnable);
        } else {
            AppLovinSdkUtils.runOnUiThreadDelayed(runnable, millis);
        }
    }
}
