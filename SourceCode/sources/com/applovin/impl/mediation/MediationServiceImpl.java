package com.applovin.impl.mediation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.mediation.a.g;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.d;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class MediationServiceImpl implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final n f4638a;

    /* renamed from: b  reason: collision with root package name */
    private final v f4639b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicReference<JSONObject> f4640c = new AtomicReference<>();

    /* loaded from: classes.dex */
    public class a implements a.InterfaceC0065a, MaxAdListener, MaxAdRevenueListener, MaxAdViewAdListener, MaxRewardedAdListener {

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.impl.mediation.a.a f4675b;

        /* renamed from: c  reason: collision with root package name */
        private a.InterfaceC0065a f4676c;

        public a(com.applovin.impl.mediation.a.a aVar, a.InterfaceC0065a interfaceC0065a) {
            this.f4675b = aVar;
            this.f4676c = interfaceC0065a;
        }

        public void a(a.InterfaceC0065a interfaceC0065a) {
            this.f4676c = interfaceC0065a;
        }

        public void a(MaxAd maxAd, Bundle bundle) {
            this.f4675b.v();
            this.f4675b.a(bundle);
            MediationServiceImpl.this.a(this.f4675b);
            k.a((MaxAdListener) this.f4676c, maxAd);
        }

        public void b(MaxAd maxAd, Bundle bundle) {
            v unused = MediationServiceImpl.this.f4639b;
            if (v.a()) {
                MediationServiceImpl.this.f4639b.b("MediationService", "Scheduling impression for ad via callback...");
            }
            MediationServiceImpl.this.processCallbackAdImpressionPostback(this.f4675b, this.f4676c);
            MediationServiceImpl.this.f4638a.W().a(com.applovin.impl.sdk.d.f.f5655c);
            MediationServiceImpl.this.f4638a.W().a(com.applovin.impl.sdk.d.f.f5658f);
            this.f4675b.a(bundle);
            if (maxAd.getFormat().isFullscreenAd()) {
                com.applovin.impl.mediation.a.c cVar = (com.applovin.impl.mediation.a.c) maxAd;
                if (!cVar.N()) {
                    v unused2 = MediationServiceImpl.this.f4639b;
                    if (v.a()) {
                        MediationServiceImpl.this.f4639b.d("MediationService", "Received ad display callback before attempting show".concat(cVar.m() != null ? " for hybrid ad" : ""));
                        return;
                    }
                    return;
                }
                MediationServiceImpl.this.f4638a.aj().a(this.f4675b, "DID_DISPLAY");
                MediationServiceImpl.this.f4638a.ah().a(this.f4675b);
            } else {
                MediationServiceImpl.this.f4638a.aj().a(this.f4675b, "DID_DISPLAY");
            }
            k.b(this.f4676c, maxAd);
        }

        public void c(final MaxAd maxAd, Bundle bundle) {
            if (bundle != null && bundle.size() > 0) {
                ((com.applovin.impl.mediation.a.a) maxAd).a(BundleUtils.toJSONObject(bundle.getBundle(Utils.KEY_AD_VALUES)));
            }
            MediationServiceImpl.this.f4638a.aj().a((com.applovin.impl.mediation.a.a) maxAd, "DID_HIDE");
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (maxAd.getFormat().isFullscreenAd()) {
                        MediationServiceImpl.this.f4638a.ah().b(maxAd);
                    }
                    k.c(a.this.f4676c, maxAd);
                }
            }, maxAd instanceof com.applovin.impl.mediation.a.c ? ((com.applovin.impl.mediation.a.c) maxAd).F() : 0L);
        }

        public void d(MaxAd maxAd, Bundle bundle) {
            if (bundle != null && bundle.size() > 0) {
                ((com.applovin.impl.mediation.a.a) maxAd).a(BundleUtils.toJSONObject(bundle.getBundle(Utils.KEY_AD_VALUES)));
            }
            MediationServiceImpl.this.a(this.f4675b, this.f4676c);
            k.d(this.f4676c, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            d(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            k.h(this.f4676c, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            MediationServiceImpl.this.b(this.f4675b, maxError, this.f4676c);
            if ((maxAd.getFormat() == MaxAdFormat.REWARDED || maxAd.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) && (maxAd instanceof com.applovin.impl.mediation.a.c)) {
                ((com.applovin.impl.mediation.a.c) maxAd).K();
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            b(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            k.g(this.f4676c, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            c(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            this.f4675b.v();
            MediationServiceImpl.this.a(this.f4675b, maxError, this.f4676c);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            a(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoCompleted(MaxAd maxAd) {
            k.f(this.f4676c, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoStarted(MaxAd maxAd) {
            k.e(this.f4676c, maxAd);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            k.a(this.f4676c, maxAd, maxReward);
            MediationServiceImpl.this.f4638a.V().a(new com.applovin.impl.mediation.b.f((com.applovin.impl.mediation.a.c) maxAd, MediationServiceImpl.this.f4638a), o.a.MEDIATION_REWARD);
        }
    }

    public MediationServiceImpl(n nVar) {
        this.f4638a = nVar;
        this.f4639b = nVar.D();
        nVar.am().registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
    }

    private g a(com.applovin.impl.mediation.a.c cVar) {
        g g2 = cVar.g();
        if (g2 == null) {
            this.f4638a.ah().a(false);
            if (v.a()) {
                this.f4639b.d("MediationService", "Failed to show " + cVar + ": adapter not found");
            }
            v.i("MediationService", "There may be an integration problem with the adapter for ad unit id '" + cVar.getAdUnitId() + "'. Please check if you have a supported version of that SDK integrated into your project.");
            throw new IllegalStateException("Could not find adapter for provided ad");
        }
        return g2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.a.a aVar) {
        this.f4638a.aj().a(aVar, "DID_LOAD");
        if (aVar.d().endsWith("load")) {
            this.f4638a.aj().a(aVar);
        }
        long s = aVar.s();
        Map<String, String> map = CollectionUtils.map(1);
        map.put("{LOAD_TIME_MS}", String.valueOf(s));
        a("load", map, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.applovin.impl.mediation.a.a aVar, final a.InterfaceC0065a interfaceC0065a) {
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.8
            @Override // java.lang.Runnable
            public void run() {
                MediationServiceImpl.this.f4638a.aj().a(aVar, "DID_CLICKED");
                MediationServiceImpl.this.f4638a.aj().a(aVar, "DID_CLICK");
                if (aVar.d().endsWith(Constants.CLICK)) {
                    MediationServiceImpl.this.f4638a.aj().a(aVar);
                    k.a((MaxAdRevenueListener) interfaceC0065a, (MaxAd) aVar);
                }
                Map map = CollectionUtils.map(1);
                String emptyIfNull = StringUtils.emptyIfNull(MediationServiceImpl.this.f4638a.n());
                if (!((Boolean) MediationServiceImpl.this.f4638a.a(com.applovin.impl.sdk.c.b.dF)).booleanValue()) {
                    emptyIfNull = "";
                }
                map.put("{CUID}", emptyIfNull);
                MediationServiceImpl.this.a("mclick", map, aVar);
            }
        };
        if (((Boolean) this.f4638a.a(com.applovin.impl.sdk.c.a.V)).booleanValue()) {
            this.f4638a.V().a(new z(this.f4638a, runnable), o.a.MEDIATION_POSTBACKS);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.a.a aVar, MaxError maxError, MaxAdListener maxAdListener) {
        a(maxError, aVar);
        destroyAd(aVar);
        k.a(maxAdListener, aVar.getAdUnitId(), maxError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.a.c cVar, a.InterfaceC0065a interfaceC0065a) {
        this.f4638a.ah().a(false);
        a(cVar, (MaxAdListener) interfaceC0065a);
        if (v.a()) {
            this.f4639b.b("MediationService", "Scheduling impression for ad manually...");
        }
        processRawAdImpressionPostback(cVar, interfaceC0065a);
        if (cVar.m() == null || !cVar.w().get()) {
            return;
        }
        if (v.a()) {
            this.f4639b.b("MediationService", "Running ad displayed logic");
        }
        this.f4638a.aj().a(cVar, "DID_DISPLAY");
        this.f4638a.ah().a(cVar);
        k.b((MaxAdListener) interfaceC0065a, (MaxAd) cVar, true);
    }

    private void a(final com.applovin.impl.mediation.a.c cVar, final MaxAdListener maxAdListener) {
        final long longValue = ((Long) this.f4638a.a(com.applovin.impl.sdk.c.a.G)).longValue();
        if (longValue <= 0) {
            return;
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.4
            @Override // java.lang.Runnable
            public void run() {
                if (cVar.w().get()) {
                    return;
                }
                String str = "Ad (" + cVar.T() + ") has not been displayed after " + longValue + "ms. Failing ad display...";
                v.i("MediationService", str);
                MediationServiceImpl.this.b(cVar, new MaxErrorImpl(-1, str), maxAdListener);
                MediationServiceImpl.this.f4638a.ah().b(cVar);
            }
        }, longValue);
    }

    private void a(MaxError maxError, com.applovin.impl.mediation.a.a aVar) {
        long s = aVar.s();
        Map<String, String> map = CollectionUtils.map(1);
        map.put("{LOAD_TIME_MS}", String.valueOf(s));
        a("mlerr", map, maxError, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.applovin.impl.mediation.a.h hVar, g gVar) {
        Map<String, String> map = CollectionUtils.map(2);
        Utils.putObjectForStringIfValid("{ADAPTER_VERSION}", gVar.i(), map);
        Utils.putObjectForStringIfValid("{SDK_VERSION}", gVar.h(), map);
        a("serr", map, new MaxErrorImpl(str), hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, Map<String, String> map, com.applovin.impl.mediation.a.f fVar) {
        a(str, map, (MaxError) null, fVar);
    }

    private void a(String str, Map<String, String> map, MaxError maxError, com.applovin.impl.mediation.a.f fVar) {
        Map map2 = CollectionUtils.map(map);
        map2.put("{PLACEMENT}", StringUtils.emptyIfNull(fVar.getPlacement()));
        map2.put("{CUSTOM_DATA}", StringUtils.emptyIfNull(fVar.ag()));
        if (fVar instanceof com.applovin.impl.mediation.a.a) {
            map2.put("{CREATIVE_ID}", StringUtils.emptyIfNull(((com.applovin.impl.mediation.a.a) fVar).getCreativeId()));
        }
        this.f4638a.V().a(new com.applovin.impl.mediation.b.d(str, map2, maxError, fVar, this.f4638a), o.a.MEDIATION_POSTBACKS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.applovin.impl.mediation.a.a aVar, MaxError maxError, MaxAdListener maxAdListener) {
        if (aVar.m() != null) {
            if (v.a()) {
                this.f4639b.e("MediationService", "Ignoring ad display failure for hybrid ad...");
                return;
            }
            return;
        }
        this.f4638a.aj().a(aVar, "DID_FAIL_DISPLAY");
        processAdDisplayErrorPostback(maxError, aVar);
        if (aVar.w().compareAndSet(false, true)) {
            k.a(maxAdListener, aVar, maxError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.applovin.impl.mediation.a.c cVar) {
        if (cVar.getFormat() == MaxAdFormat.REWARDED || cVar.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) {
            this.f4638a.V().a(new com.applovin.impl.mediation.b.g(cVar, this.f4638a), o.a.MEDIATION_REWARD);
        }
    }

    public void collectSignal(MaxAdFormat maxAdFormat, final com.applovin.impl.mediation.a.h hVar, Context context, final g.a aVar) {
        String str;
        v vVar;
        StringBuilder sb;
        if (hVar == null) {
            throw new IllegalArgumentException("No spec specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        final g a2 = this.f4638a.F().a(hVar, hVar.b());
        if (a2 != null) {
            Activity ar = context instanceof Activity ? (Activity) context : this.f4638a.ar();
            MaxAdapterParametersImpl a3 = MaxAdapterParametersImpl.a(hVar, maxAdFormat);
            if (((Boolean) this.f4638a.a(com.applovin.impl.sdk.c.a.R)).booleanValue()) {
                this.f4638a.G().a(hVar, ar);
            }
            MaxSignalCollectionListener maxSignalCollectionListener = new MaxSignalCollectionListener() { // from class: com.applovin.impl.mediation.MediationServiceImpl.3
                @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                public void onSignalCollected(String str2) {
                    aVar.a(com.applovin.impl.mediation.a.g.a(hVar, a2, str2));
                    a2.j();
                }

                @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                public void onSignalCollectionFailed(String str2) {
                    MediationServiceImpl.this.a(str2, hVar, a2);
                    aVar.a(com.applovin.impl.mediation.a.g.b(hVar, a2, str2));
                    a2.j();
                }
            };
            if (!hVar.a()) {
                if (v.a()) {
                    vVar = this.f4639b;
                    sb = new StringBuilder("Collecting signal for adapter: ");
                    vVar.b("MediationService", sb.append(a2.d()).toString());
                }
                a2.a(a3, hVar, ar, maxSignalCollectionListener);
                return;
            } else if (this.f4638a.G().a(hVar)) {
                if (v.a()) {
                    vVar = this.f4639b;
                    sb = new StringBuilder("Collecting signal for now-initialized adapter: ");
                    vVar.b("MediationService", sb.append(a2.d()).toString());
                }
                a2.a(a3, hVar, ar, maxSignalCollectionListener);
                return;
            } else {
                if (v.a()) {
                    this.f4639b.e("MediationService", "Skip collecting signal for not-initialized adapter: " + a2.d());
                }
                str = "Adapter not initialized yet";
            }
        } else {
            str = "Could not load adapter";
        }
        aVar.a(com.applovin.impl.mediation.a.g.a(hVar, str));
    }

    public void destroyAd(MaxAd maxAd) {
        if (maxAd instanceof com.applovin.impl.mediation.a.a) {
            if (v.a()) {
                this.f4639b.c("MediationService", "Destroying " + maxAd);
            }
            com.applovin.impl.mediation.a.a aVar = (com.applovin.impl.mediation.a.a) maxAd;
            g g2 = aVar.g();
            if (g2 != null) {
                g2.j();
                aVar.y();
            }
            this.f4638a.E().b(aVar.f());
        }
    }

    public JSONObject getAndResetCustomPostBodyData() {
        return this.f4640c.getAndSet(null);
    }

    public void loadAd(String str, String str2, MaxAdFormat maxAdFormat, d.a aVar, Map<String, Object> map, Map<String, Object> map2, Context context, a.InterfaceC0065a interfaceC0065a) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No ad unit ID specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        if (interfaceC0065a == null) {
            throw new IllegalArgumentException("No listener specified");
        }
        if (TextUtils.isEmpty(this.f4638a.u())) {
            v.i("AppLovinSdk", "Mediation provider is null. Please set AppLovin SDK mediation provider via AppLovinSdk.getInstance(context).setMediationProvider()");
        }
        if (!this.f4638a.d()) {
            v.h("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        this.f4638a.a();
        if (str.length() != 16 && !str.startsWith("test_mode") && !this.f4638a.C().startsWith("05TMD")) {
            v.i("MediationService", "Please double-check the ad unit " + str + " for " + maxAdFormat.getLabel() + " : " + Log.getStackTraceString(new Throwable("")));
        }
        if (this.f4638a.a(maxAdFormat)) {
            v.i("MediationService", "Ad load failed due to disabled ad format " + maxAdFormat.getLabel());
            k.a(interfaceC0065a, str, new MaxErrorImpl(-1, "Disabled ad format " + maxAdFormat.getLabel()));
            return;
        }
        k.a((MaxAdRequestListener) interfaceC0065a, str, true);
        this.f4638a.M().a(str, str2, maxAdFormat, aVar, map, map2, context, interfaceC0065a);
    }

    public void loadThirdPartyMediatedAd(String str, com.applovin.impl.mediation.a.a aVar, Activity activity, a.InterfaceC0065a interfaceC0065a) {
        if (aVar == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        }
        if (v.a()) {
            this.f4639b.b("MediationService", "Loading " + aVar + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        this.f4638a.aj().a(aVar, "WILL_LOAD");
        g a2 = this.f4638a.F().a(aVar);
        if (a2 == null) {
            String str2 = "Failed to load " + aVar + ": adapter not loaded";
            v.i("MediationService", str2);
            a(aVar, new MaxErrorImpl(-5001, str2), interfaceC0065a);
            return;
        }
        MaxAdapterParametersImpl a3 = MaxAdapterParametersImpl.a(aVar);
        if (((Boolean) this.f4638a.a(com.applovin.impl.sdk.c.a.S)).booleanValue()) {
            this.f4638a.G().a(aVar, activity);
        }
        com.applovin.impl.mediation.a.a a4 = aVar.a(a2);
        a2.a(str, a4);
        a4.t();
        a2.a(str, a3, a4, activity, new a(a4, interfaceC0065a));
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        if ("com.applovin.render_process_gone".equals(intent.getAction())) {
            Object c2 = this.f4638a.ah().c();
            if (c2 instanceof com.applovin.impl.mediation.a.a) {
                processAdDisplayErrorPostback(MaxAdapterError.WEBVIEW_ERROR, (com.applovin.impl.mediation.a.a) c2);
            }
        }
    }

    public void processAdDisplayErrorPostback(MaxError maxError, com.applovin.impl.mediation.a.a aVar) {
        a("mierr", Collections.EMPTY_MAP, maxError, aVar);
    }

    public void processAdLossPostback(com.applovin.impl.mediation.a.a aVar, Float f2) {
        String f3 = f2 != null ? f2.toString() : "";
        Map<String, String> map = CollectionUtils.map(1);
        map.put("{MBR}", f3);
        a("mloss", map, aVar);
    }

    public void processAdapterInitializationPostback(com.applovin.impl.mediation.a.f fVar, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        Map<String, String> map = CollectionUtils.map(2);
        map.put("{INIT_STATUS}", String.valueOf(initializationStatus.getCode()));
        map.put("{INIT_TIME_MS}", String.valueOf(j));
        a("minit", map, new MaxErrorImpl(str), fVar);
    }

    public void processCallbackAdImpressionPostback(final com.applovin.impl.mediation.a.a aVar, final a.InterfaceC0065a interfaceC0065a) {
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.7
            @Override // java.lang.Runnable
            public void run() {
                if (aVar.d().endsWith("cimp")) {
                    MediationServiceImpl.this.f4638a.aj().a(aVar);
                    k.a((MaxAdRevenueListener) interfaceC0065a, (MaxAd) aVar);
                }
                Map map = CollectionUtils.map(1);
                String emptyIfNull = StringUtils.emptyIfNull(MediationServiceImpl.this.f4638a.n());
                if (!((Boolean) MediationServiceImpl.this.f4638a.a(com.applovin.impl.sdk.c.b.dF)).booleanValue()) {
                    emptyIfNull = "";
                }
                map.put("{CUID}", emptyIfNull);
                MediationServiceImpl.this.a("mcimp", map, aVar);
            }
        };
        if (((Boolean) this.f4638a.a(com.applovin.impl.sdk.c.a.V)).booleanValue()) {
            this.f4638a.V().a(new z(this.f4638a, runnable), o.a.MEDIATION_POSTBACKS);
        } else {
            runnable.run();
        }
    }

    public void processRawAdImpressionPostback(final com.applovin.impl.mediation.a.a aVar, final a.InterfaceC0065a interfaceC0065a) {
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.5
            @Override // java.lang.Runnable
            public void run() {
                MediationServiceImpl.this.f4638a.aj().a(aVar, "WILL_DISPLAY");
                if (aVar.d().endsWith("mimp")) {
                    MediationServiceImpl.this.f4638a.aj().a(aVar);
                    k.a((MaxAdRevenueListener) interfaceC0065a, (MaxAd) aVar);
                }
                Map map = CollectionUtils.map(2);
                com.applovin.impl.mediation.a.a aVar2 = aVar;
                if (aVar2 instanceof com.applovin.impl.mediation.a.c) {
                    map.put("{TIME_TO_SHOW_MS}", String.valueOf(((com.applovin.impl.mediation.a.c) aVar2).D()));
                }
                String emptyIfNull = StringUtils.emptyIfNull(MediationServiceImpl.this.f4638a.n());
                if (!((Boolean) MediationServiceImpl.this.f4638a.a(com.applovin.impl.sdk.c.b.dF)).booleanValue()) {
                    emptyIfNull = "";
                }
                map.put("{CUID}", emptyIfNull);
                MediationServiceImpl.this.a("mimp", map, aVar);
            }
        };
        if (((Boolean) this.f4638a.a(com.applovin.impl.sdk.c.a.V)).booleanValue()) {
            this.f4638a.V().a(new z(this.f4638a, runnable), o.a.MEDIATION_POSTBACKS);
        } else {
            runnable.run();
        }
    }

    public void processViewabilityAdImpressionPostback(final com.applovin.impl.mediation.a.e eVar, final long j, final a.InterfaceC0065a interfaceC0065a) {
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.6
            @Override // java.lang.Runnable
            public void run() {
                if (eVar.d().endsWith("vimp")) {
                    MediationServiceImpl.this.f4638a.aj().a(eVar);
                    k.a((MaxAdRevenueListener) interfaceC0065a, (MaxAd) eVar);
                }
                Map map = CollectionUtils.map(3);
                map.put("{VIEWABILITY_FLAGS}", String.valueOf(j));
                map.put("{USED_VIEWABILITY_TIMER}", String.valueOf(eVar.N()));
                String emptyIfNull = StringUtils.emptyIfNull(MediationServiceImpl.this.f4638a.n());
                if (!((Boolean) MediationServiceImpl.this.f4638a.a(com.applovin.impl.sdk.c.b.dF)).booleanValue()) {
                    emptyIfNull = "";
                }
                map.put("{CUID}", emptyIfNull);
                MediationServiceImpl.this.a("mvimp", map, eVar);
            }
        };
        if (((Boolean) this.f4638a.a(com.applovin.impl.sdk.c.a.V)).booleanValue()) {
            this.f4638a.V().a(new z(this.f4638a, runnable), o.a.MEDIATION_POSTBACKS);
        } else {
            runnable.run();
        }
    }

    public void setCustomPostBodyData(JSONObject jSONObject) {
        this.f4640c.set(jSONObject);
    }

    public void showFullscreenAd(final com.applovin.impl.mediation.a.c cVar, final Activity activity, final a.InterfaceC0065a interfaceC0065a) {
        if (cVar == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (activity == null && MaxAdFormat.APP_OPEN != cVar.getFormat()) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.f4638a.ah().a(true);
        final g a2 = a(cVar);
        long E = cVar.E();
        if (v.a()) {
            this.f4639b.c("MediationService", "Showing ad " + cVar.getAdUnitId() + " with delay of " + E + "ms...");
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.1
            @Override // java.lang.Runnable
            public void run() {
                cVar.a(true);
                MediationServiceImpl.this.b(cVar);
                a2.a(cVar, activity);
                MediationServiceImpl.this.a(cVar, interfaceC0065a);
            }
        }, E);
    }

    public void showFullscreenAd(final com.applovin.impl.mediation.a.c cVar, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity, final a.InterfaceC0065a interfaceC0065a) {
        if (cVar == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.f4638a.ah().a(true);
        final g a2 = a(cVar);
        long E = cVar.E();
        if (v.a()) {
            this.f4639b.c("MediationService", "Showing ad " + cVar.getAdUnitId() + " with delay of " + E + "ms...");
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl.2
            @Override // java.lang.Runnable
            public void run() {
                cVar.a(true);
                MediationServiceImpl.this.b(cVar);
                a2.a(cVar, viewGroup, lifecycle, activity);
                MediationServiceImpl.this.a(cVar, interfaceC0065a);
            }
        }, E);
    }
}
