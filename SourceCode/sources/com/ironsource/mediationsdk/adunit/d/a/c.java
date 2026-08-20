package com.ironsource.mediationsdk.adunit.d.a;

import android.text.TextUtils;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.C1349f;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.adunit.b.d;
import com.ironsource.mediationsdk.adunit.c.a.b;
import com.ironsource.mediationsdk.adunit.data.DataKeys;
import com.ironsource.mediationsdk.b.c;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.f;
import com.ironsource.mediationsdk.utils.n;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class c<Listener extends com.ironsource.mediationsdk.adunit.c.a.b> implements AdapterAdListener, NetworkInitializationListener, com.ironsource.mediationsdk.adunit.b.c, c.a, n.a {

    /* renamed from: a  reason: collision with root package name */
    protected com.ironsource.mediationsdk.adunit.d.a f11043a;

    /* renamed from: b  reason: collision with root package name */
    protected Listener f11044b;

    /* renamed from: c  reason: collision with root package name */
    protected d f11045c;

    /* renamed from: d  reason: collision with root package name */
    protected a f11046d;

    /* renamed from: e  reason: collision with root package name */
    protected Placement f11047e;

    /* renamed from: f  reason: collision with root package name */
    protected AdData f11048f;

    /* renamed from: g  reason: collision with root package name */
    private BaseAdAdapter<?, AdapterAdListener> f11049g;

    /* renamed from: h  reason: collision with root package name */
    private com.ironsource.mediationsdk.model.a f11050h;
    private JSONObject i;
    private String j;
    private Long k;
    private f l;
    private com.ironsource.mediationsdk.b.c m;

    /* loaded from: classes3.dex */
    public enum a {
        NONE,
        INIT_IN_PROGRESS,
        READY_TO_LOAD,
        LOADING,
        LOADED,
        SHOWING,
        FAILED
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(com.ironsource.mediationsdk.adunit.d.a aVar, BaseAdAdapter<?, ?> baseAdAdapter, com.ironsource.mediationsdk.model.a aVar2, Listener listener) {
        this.f11043a = aVar;
        this.f11044b = listener;
        this.f11045c = new d(this.f11043a.f11033a, d.b.PROVIDER, this);
        this.f11050h = aVar2;
        this.i = aVar2.f11236b;
        this.f11049g = baseAdAdapter;
        this.m = new com.ironsource.mediationsdk.b.c(this.f11043a.f11036d * 1000);
        a(a.NONE);
    }

    private boolean a() {
        return this.f11046d == a.INIT_IN_PROGRESS;
    }

    /* JADX WARN: Type inference failed for: r2v15, types: [com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface] */
    /* JADX WARN: Type inference failed for: r2v16, types: [com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface] */
    @Override // com.ironsource.mediationsdk.adunit.b.c
    public final Map<String, Object> a(com.ironsource.mediationsdk.adunit.b.b bVar) {
        HashMap hashMap = new HashMap();
        try {
            BaseAdAdapter<?, AdapterAdListener> baseAdAdapter = this.f11049g;
            hashMap.put("providerAdapterVersion", baseAdAdapter != null ? baseAdAdapter.getNetworkAdapter().getAdapterVersion() : "");
            BaseAdAdapter<?, AdapterAdListener> baseAdAdapter2 = this.f11049g;
            hashMap.put("providerSDKVersion", baseAdAdapter2 != null ? baseAdAdapter2.getNetworkAdapter().getNetworkSDKVersion() : "");
        } catch (Exception unused) {
            IronLog.INTERNAL.error(c("could not get adapter version for event data" + l()));
        }
        hashMap.put("spId", this.f11050h.f11235a.getSubProviderId());
        hashMap.put(IronSourceConstants.EVENTS_PROVIDER, this.f11050h.f11235a.getAdSourceNameForEvents());
        hashMap.put("instanceType", Integer.valueOf(h() ? 2 : 1));
        hashMap.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        if (!TextUtils.isEmpty(this.j)) {
            hashMap.put(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID, this.j);
        }
        hashMap.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(this.f11043a.f11037e));
        if (this.f11043a.f11038f != null && this.f11043a.f11038f.length() > 0) {
            hashMap.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.f11043a.f11038f);
        }
        if (!TextUtils.isEmpty(this.f11043a.f11039g)) {
            hashMap.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f11043a.f11039g);
        }
        if (bVar == com.ironsource.mediationsdk.adunit.b.b.LOAD_AD || bVar == com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_SUCCESS || bVar == com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_FAILED || bVar == com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_FAILED_WITH_REASON || bVar == com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_NO_FILL || bVar == com.ironsource.mediationsdk.adunit.b.b.AD_OPENED || bVar == com.ironsource.mediationsdk.adunit.b.b.AD_CLOSED || bVar == com.ironsource.mediationsdk.adunit.b.b.SHOW_AD || bVar == com.ironsource.mediationsdk.adunit.b.b.SHOW_AD_FAILED || bVar == com.ironsource.mediationsdk.adunit.b.b.AD_CLICKED || bVar == com.ironsource.mediationsdk.adunit.b.b.AD_REWARDED) {
            hashMap.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(this.f11043a.f11040h));
            if (!TextUtils.isEmpty(this.f11043a.i)) {
                hashMap.put(IronSourceConstants.AUCTION_FALLBACK, this.f11043a.i);
            }
        }
        if (!TextUtils.isEmpty(this.f11043a.f11035c.getCustomNetwork())) {
            hashMap.put(IronSourceConstants.EVENTS_CUSTOM_NETWORK_FIELD, this.f11043a.f11035c.getCustomNetwork());
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(a aVar) {
        IronLog.INTERNAL.verbose(c("to " + aVar));
        this.f11046d = aVar;
    }

    /* JADX WARN: Type inference failed for: r4v8, types: [com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface] */
    public final void a(String str) {
        try {
            IronLog.INTERNAL.verbose(c(""));
            this.f11045c.f10981b.a(false);
            this.k = null;
            this.l = new f();
            HashMap hashMap = new HashMap();
            hashMap.put(DataKeys.USER_ID, this.f11043a.f11034b);
            hashMap.putAll(com.ironsource.mediationsdk.c.b.a(this.i));
            this.f11048f = new AdData(str, hashMap);
            a(a.INIT_IN_PROGRESS);
            this.m.a((c.a) this);
            ?? networkAdapter = this.f11049g.getNetworkAdapter();
            if (networkAdapter != 0) {
                networkAdapter.init(this.f11048f, ContextProvider.getInstance().getApplicationContext(), this);
                return;
            }
            String str2 = "loadAd - network adapter not available " + l();
            IronLog.INTERNAL.error(c(str2));
            this.f11045c.f10984e.a(str2);
            onInitFailed(com.ironsource.mediationsdk.adunit.a.a.a(this.f11043a.f11033a), str2);
        } catch (Throwable th) {
            String str3 = "loadAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(c(str3));
            d dVar = this.f11045c;
            if (dVar != null) {
                dVar.f10984e.l(str3);
            }
            onInitFailed(com.ironsource.mediationsdk.adunit.a.a.a(this.f11043a.f11033a), str3);
        }
    }

    @Override // com.ironsource.mediationsdk.b.c.a
    public final void b() {
        IronLog.INTERNAL.verbose(c("state = " + this.f11046d + ", isBidder = " + h()));
        long a2 = f.a(this.l);
        if (!c()) {
            String format = String.format("unexpected timeout for %s, state - %s, error - %s", l(), this.f11046d, 1025);
            d dVar = this.f11045c;
            if (dVar != null) {
                dVar.f10984e.k(format);
                return;
            }
            return;
        }
        a(a.FAILED);
        d dVar2 = this.f11045c;
        if (dVar2 != null) {
            dVar2.f10981b.a(a2, 1025, "time out");
            this.f11045c.f10981b.b(a2, 1025, "time out");
        }
        Listener listener = this.f11044b;
        IronSourceError buildLoadFailedError = ErrorBuilder.buildLoadFailedError("timed out");
        f.a(this.l);
        listener.a(buildLoadFailedError, this);
    }

    public final void b(String str) {
        C1349f.a();
        this.j = C1349f.d(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String c(String str) {
        String str2 = this.f11043a.f11033a.name() + " - " + l() + " - state = " + this.f11046d;
        return TextUtils.isEmpty(str) ? str2 : str2 + " - " + str;
    }

    public final boolean c() {
        return this.f11046d == a.INIT_IN_PROGRESS || this.f11046d == a.LOADING;
    }

    public final boolean d() {
        return this.f11046d == a.LOADED;
    }

    public final boolean e() {
        return this.f11046d != a.FAILED;
    }

    public final void f() {
        IronLog.INTERNAL.verbose(c(""));
        d dVar = this.f11045c;
        if (dVar != null) {
            dVar.f10983d.a();
        }
    }

    public final Long g() {
        return this.k;
    }

    public final boolean h() {
        return this.f11050h.f11237c;
    }

    public final int i() {
        return this.f11050h.f11238d;
    }

    @Override // com.ironsource.mediationsdk.utils.n.a
    public final int j() {
        return this.f11050h.f11239e;
    }

    @Override // com.ironsource.mediationsdk.utils.n.a
    public final String k() {
        return this.f11050h.f11235a.getProviderName();
    }

    public final String l() {
        return String.format("%s %s", k(), Integer.valueOf(hashCode()));
    }

    public final String m() {
        return this.f11050h.f11235a.getProviderTypeForReflection();
    }

    public final String n() {
        return this.f11043a.f11039g;
    }

    public final void o() {
        BaseAdAdapter<?, AdapterAdListener> baseAdAdapter = this.f11049g;
        if (baseAdAdapter != null) {
            try {
                baseAdAdapter.releaseMemory();
                this.f11049g = null;
            } catch (Exception e2) {
                String str = "Exception while calling adapter.releaseMemory() from " + this.f11050h.f11235a.getProviderName() + " - " + e2.getLocalizedMessage();
                IronLog.INTERNAL.error(c(str));
                this.f11045c.f10984e.l(str);
            }
        }
        d dVar = this.f11045c;
        if (dVar != null) {
            dVar.a();
            this.f11045c = null;
        }
        com.ironsource.mediationsdk.b.c cVar = this.m;
        if (cVar != null) {
            cVar.c();
            this.m = null;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdClicked() {
        IronLog.INTERNAL.verbose(c(""));
        d dVar = this.f11045c;
        if (dVar != null) {
            dVar.f10983d.d(q());
        }
        this.f11044b.b(this);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdLoadFailed(AdapterErrorType adapterErrorType, int i, String str) {
        IronLog.INTERNAL.verbose(c("error = " + i + ", " + str));
        com.ironsource.mediationsdk.b.c cVar = this.m;
        if (cVar != null) {
            cVar.d();
        }
        if (this.f11046d == a.LOADING) {
            long a2 = f.a(this.l);
            if (this.f11045c != null) {
                if (adapterErrorType == AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL) {
                    this.f11045c.f10981b.a(a2, i);
                } else {
                    if (adapterErrorType == AdapterErrorType.ADAPTER_ERROR_TYPE_AD_EXPIRED) {
                        this.k = Long.valueOf(System.currentTimeMillis());
                    }
                    this.f11045c.f10981b.a(a2, i, str);
                    this.f11045c.f10981b.b(a2, i, str);
                }
            }
            a(a.FAILED);
            this.f11044b.a(new IronSourceError(i, str), this);
        }
        if (this.f11046d != a.FAILED) {
            String format = String.format("unexpected load failed for %s, state - %s, error - %s, %s", l(), this.f11046d, Integer.valueOf(i), str);
            d dVar = this.f11045c;
            if (dVar != null) {
                dVar.f10984e.j(format);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdLoadSuccess() {
        IronLog.INTERNAL.verbose(c(""));
        com.ironsource.mediationsdk.b.c cVar = this.m;
        if (cVar != null) {
            cVar.d();
        }
        if (this.f11046d == a.LOADING) {
            long a2 = f.a(this.l);
            d dVar = this.f11045c;
            if (dVar != null) {
                dVar.f10981b.a(a2, false);
            }
            a(a.LOADED);
            this.f11044b.a(this);
        } else if (this.f11046d != a.FAILED) {
            String format = String.format("unexpected load success for %s, state - %s", l(), this.f11046d);
            d dVar2 = this.f11045c;
            if (dVar2 != null) {
                dVar2.f10984e.i(format);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener
    public void onInitFailed(int i, String str) {
        IronLog.INTERNAL.verbose(c("error = " + i + ", " + str));
        if (!a()) {
            if (this.f11046d != a.FAILED) {
                String format = String.format("unexpected init failed for %s, state - %s, error - %s, %s", l(), this.f11046d, Integer.valueOf(i), str);
                d dVar = this.f11045c;
                if (dVar != null) {
                    dVar.f10984e.f(format);
                    return;
                }
                return;
            }
            return;
        }
        com.ironsource.mediationsdk.b.c cVar = this.m;
        if (cVar != null) {
            cVar.d();
        }
        a(a.FAILED);
        Listener listener = this.f11044b;
        IronSourceError ironSourceError = new IronSourceError(i, str);
        f.a(this.l);
        listener.a(ironSourceError, this);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener
    public void onInitSuccess() {
        IronLog.INTERNAL.verbose(c(""));
        if (!a()) {
            if (this.f11046d != a.FAILED) {
                String format = String.format("unexpected init success for %s, state - %s", l(), this.f11046d);
                d dVar = this.f11045c;
                if (dVar != null) {
                    dVar.f10984e.e(format);
                    return;
                }
                return;
            }
            return;
        }
        com.ironsource.mediationsdk.b.c cVar = this.m;
        if (cVar != null) {
            cVar.d();
        }
        a(a.READY_TO_LOAD);
        IronLog.INTERNAL.verbose(c(""));
        a(a.LOADING);
        try {
            this.m.a((c.a) this);
            this.f11049g.loadAd(this.f11048f, ContextProvider.getInstance().getCurrentActiveActivity(), this);
        } catch (Throwable th) {
            String str = "unexpected error while calling adapter.loadAd() - " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(c(str));
            d dVar2 = this.f11045c;
            if (dVar2 != null) {
                dVar2.f10984e.l(str);
            }
            onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 510, str);
        }
    }

    public final boolean p() {
        return this.f11046d == a.SHOWING;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String q() {
        Placement placement = this.f11047e;
        return placement == null ? "" : placement.getPlacementName();
    }
}
