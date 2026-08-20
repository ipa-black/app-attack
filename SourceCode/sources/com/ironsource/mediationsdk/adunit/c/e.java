package com.ironsource.mediationsdk.adunit.c;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.j;
import com.ironsource.mediationsdk.B;
import com.ironsource.mediationsdk.C1347d;
import com.ironsource.mediationsdk.C1351h;
import com.ironsource.mediationsdk.C1352i;
import com.ironsource.mediationsdk.C1359p;
import com.ironsource.mediationsdk.C1367x;
import com.ironsource.mediationsdk.InterfaceC1346c;
import com.ironsource.mediationsdk.InterfaceC1350g;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.ironsource.mediationsdk.aa;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBidderInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.b.d;
import com.ironsource.mediationsdk.adunit.b.i;
import com.ironsource.mediationsdk.adunit.c.b.a;
import com.ironsource.mediationsdk.adunit.d.a.c;
import com.ironsource.mediationsdk.adunit.data.DataKeys;
import com.ironsource.mediationsdk.ae;
import com.ironsource.mediationsdk.impressionData.ImpressionData;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.RewardedVideoManualListener;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.m;
import com.ironsource.mediationsdk.utils.n;
import com.ironsource.mediationsdk.utils.o;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class e<Smash extends com.ironsource.mediationsdk.adunit.d.a.c<?>, Adapter extends BaseAdAdapter<?, ? extends AdapterAdListener>> implements j, com.ironsource.mediationsdk.adunit.b.c, com.ironsource.mediationsdk.adunit.c.a.b, com.ironsource.mediationsdk.adunit.e.b, ae, InterfaceC1346c, InterfaceC1350g {

    /* renamed from: a  reason: collision with root package name */
    protected com.ironsource.mediationsdk.adunit.e.a<Smash> f11016a;

    /* renamed from: b  reason: collision with root package name */
    protected ConcurrentHashMap<String, com.ironsource.mediationsdk.server.b> f11017b;

    /* renamed from: c  reason: collision with root package name */
    protected ConcurrentHashMap<String, C1352i.a> f11018c;

    /* renamed from: d  reason: collision with root package name */
    protected C1351h f11019d;

    /* renamed from: e  reason: collision with root package name */
    protected C1352i f11020e;

    /* renamed from: f  reason: collision with root package name */
    protected int f11021f;

    /* renamed from: h  reason: collision with root package name */
    protected JSONObject f11023h;
    protected com.ironsource.mediationsdk.server.b i;
    protected Placement j;
    protected n l;
    protected com.ironsource.mediationsdk.adunit.c.a m;
    protected a n;
    protected c o;
    protected C1367x p;
    protected com.ironsource.mediationsdk.adunit.b.d q;
    protected b r;
    protected IronSourceSegment s;
    private com.ironsource.mediationsdk.utils.f u;
    private com.ironsource.mediationsdk.utils.f v;
    private com.ironsource.mediationsdk.utils.a w;
    private Boolean y;
    private Set<ImpressionDataListener> z;

    /* renamed from: g  reason: collision with root package name */
    protected String f11022g = "";
    protected boolean k = false;
    protected final Object t = new Object();
    private long x = 0;

    /* loaded from: classes3.dex */
    public enum a {
        NONE,
        READY_TO_LOAD,
        AUCTION,
        LOADING,
        READY_TO_SHOW,
        SHOWING
    }

    public e(com.ironsource.mediationsdk.adunit.c.a aVar, Set<ImpressionDataListener> set, IronSourceSegment ironSourceSegment) {
        this.z = new HashSet();
        IronLog.INTERNAL.verbose("adUnit = " + aVar.f10995a + ", loading mode = " + aVar.f11002h.f11004a);
        com.ironsource.mediationsdk.utils.f fVar = new com.ironsource.mediationsdk.utils.f();
        this.s = ironSourceSegment;
        this.m = aVar;
        this.q = new com.ironsource.mediationsdk.adunit.b.d(this.m.f10995a, d.b.MEDIATION, this);
        this.r = new b(this.m.f10995a);
        this.o = new c(this.m.f11002h, this);
        a(a.NONE);
        this.z = set;
        this.f11016a = new com.ironsource.mediationsdk.adunit.e.a<>(this.m.f10998d.o, this.m.f10998d.f11410g, this);
        this.q.f10980a.a();
        this.f11017b = new ConcurrentHashMap<>();
        this.f11018c = new ConcurrentHashMap<>();
        this.j = null;
        C1359p.a().a(this.m.f10995a, this.m.f11000f);
        this.f11023h = new JSONObject();
        if (this.m.a()) {
            this.f11019d = new C1351h(this.m.f10995a.toString(), this.m.f10998d, this);
        }
        a(this.m.f10997c, this.m.f10998d.f11409f);
        k();
        l();
        this.u = new com.ironsource.mediationsdk.utils.f();
        a(a.READY_TO_LOAD);
        this.q.f10980a.a(com.ironsource.mediationsdk.utils.f.a(fVar));
        this.p = new C1367x(aVar.i, this);
        this.w = new com.ironsource.mediationsdk.utils.a();
        if (this.m.f11002h.b()) {
            IronLog.INTERNAL.verbose("first automatic load");
            e();
        }
    }

    private static String a(com.ironsource.mediationsdk.server.b bVar, int i) {
        return String.format("%s%s", Integer.valueOf(i), bVar.a());
    }

    private String a(List<com.ironsource.mediationsdk.server.b> list, String str) {
        IronLog.INTERNAL.verbose(a("waterfall.size() = " + list.size()));
        StringBuilder sb = new StringBuilder();
        CopyOnWriteArrayList<Smash> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            com.ironsource.mediationsdk.server.b bVar = list.get(i);
            Smash b2 = b(bVar, str);
            if (b2 != null) {
                copyOnWriteArrayList.add(b2);
                sb.append(a(bVar, b2.i()));
            }
            if (i != list.size() - 1) {
                sb.append(",");
            }
        }
        this.f11016a.a(this.m.f11002h.f11004a, copyOnWriteArrayList, str);
        IronLog.INTERNAL.verbose(a("updateWaterfall() - next waterfall is " + sb.toString()));
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str, boolean z) {
        a(a.READY_TO_LOAD);
        IronLog.INTERNAL.verbose(a("errorCode = " + i + ", errorReason = " + str));
        if (this.m.f11002h.a()) {
            if (z) {
                this.q.f10981b.a(com.ironsource.mediationsdk.utils.f.a(this.v), i, str);
            }
            C1359p.a().a(this.m.f10995a, new IronSourceError(i, str));
        } else {
            if (z) {
                this.q.f10984e.a(i, str);
            }
            a(false, false);
        }
        this.o.a();
    }

    private void a(List<NetworkSettings> list, int i) {
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : list) {
            arrayList.add(networkSettings.getProviderName());
        }
        this.f11020e = new C1352i(arrayList, i);
    }

    private boolean a(a aVar, a aVar2) {
        boolean z;
        synchronized (this.t) {
            if (this.n == aVar) {
                IronLog.INTERNAL.verbose(a("set state from '" + this.n + "' to '" + aVar2 + "'"));
                this.n = aVar2;
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(NetworkSettings networkSettings) {
        AdapterBaseInterface a2 = C1347d.a().a(networkSettings, this.m.f10995a);
        return (a2 instanceof AdapterSettingsInterface) && this.f11016a.a(this.m.f11002h.f11004a, networkSettings.getProviderInstanceName(), networkSettings.getProviderTypeForReflection(), ((AdapterSettingsInterface) a2).getLoadWhileShowSupportedState(networkSettings));
    }

    private Smash b(com.ironsource.mediationsdk.server.b bVar, String str) {
        NetworkSettings a2 = this.m.a(bVar.a());
        if (a2 != null) {
            C1347d.a().a(a2, this.m.f10995a);
            Adapter a3 = a(a2, this.m.f10995a);
            if (a3 != null) {
                Smash a4 = a(a2, (NetworkSettings) a3, o.a().b(this.m.f10995a), str);
                this.f11017b.put(a4.k(), bVar);
                this.f11018c.put(bVar.a(), C1352i.a.ISAuctionPerformanceDidntAttemptToLoad);
                return a4;
            }
            String str2 = "addSmashToWaterfall - could not load ad adapter for " + a2.getProviderInstanceName();
            IronLog.INTERNAL.error(a(str2));
            this.q.f10984e.b(str2);
        } else {
            String str3 = "could not find matching provider settings for auction response item - item = " + bVar.a();
            IronLog.INTERNAL.error(a(str3));
            this.q.f10984e.c(str3);
        }
        return null;
    }

    private void c(Smash smash) {
        IronLog.INTERNAL.verbose(a(""));
        String b2 = this.f11017b.get(smash.k()).b();
        smash.b(b2);
        smash.a(b2);
    }

    private boolean c(boolean z) {
        boolean z2;
        synchronized (this.t) {
            Boolean bool = this.y;
            z2 = bool == null || bool.booleanValue() != z;
        }
        return z2;
    }

    private boolean i() {
        boolean z;
        synchronized (this.t) {
            z = this.n == a.LOADING;
        }
        return z;
    }

    private boolean j() {
        boolean z;
        synchronized (this.t) {
            z = this.n == a.AUCTION;
        }
        return z;
    }

    private void k() {
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : this.m.f10997c) {
            arrayList.add(new m(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.m.f10995a)));
        }
        this.l = new n(arrayList);
    }

    private void l() {
        JSONObject jSONObject;
        IronLog.INTERNAL.verbose(a(""));
        for (NetworkSettings networkSettings : this.m.f10997c) {
            if (networkSettings.isIronSource() || networkSettings.isBidder(this.m.f10995a)) {
                HashMap hashMap = new HashMap();
                hashMap.put(DataKeys.USER_ID, this.m.f10996b);
                if (this.m.f10995a == IronSource.AD_UNIT.INTERSTITIAL) {
                    jSONObject = networkSettings.getInterstitialSettings();
                } else if (this.m.f10995a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                    jSONObject = networkSettings.getRewardedVideoSettings();
                } else {
                    IronLog.INTERNAL.error("ad unit not supported - " + this.m.f10995a);
                    jSONObject = new JSONObject();
                }
                hashMap.putAll(com.ironsource.mediationsdk.c.b.a(jSONObject));
                AdData adData = new AdData(null, hashMap);
                AdapterBaseInterface a2 = C1347d.a().a(networkSettings, this.m.f10995a);
                if (a2 != null) {
                    try {
                        a2.init(adData, ContextProvider.getInstance().getApplicationContext(), null);
                    } catch (Exception e2) {
                        this.q.f10984e.a("initNetworks - exception while calling networkAdapter.init - " + e2);
                    }
                } else {
                    this.q.f10984e.a("initNetworks - could not load network adapter");
                }
            }
        }
    }

    private void m() {
        IronLog.INTERNAL.verbose(a(""));
        a(n(), t());
    }

    private List<com.ironsource.mediationsdk.server.b> n() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (NetworkSettings networkSettings : this.m.f10997c) {
            m mVar = new m(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.m.f10995a));
            if (!networkSettings.isBidder(this.m.f10995a) && !this.l.b(mVar) && a(networkSettings)) {
                copyOnWriteArrayList.add(new com.ironsource.mediationsdk.server.b(mVar.k()));
            }
        }
        return copyOnWriteArrayList;
    }

    private void o() {
        Iterator<Smash> it = p().iterator();
        while (it.hasNext()) {
            c((e<Smash, Adapter>) it.next());
        }
    }

    private ArrayList<Smash> p() {
        IronLog.INTERNAL.verbose(a("mWaterfall.size() = " + this.f11016a.a().size()));
        ArrayList<Smash> arrayList = new ArrayList<>();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= this.f11016a.a().size() || i2 >= this.m.f10999e) {
                break;
            }
            Smash smash = this.f11016a.a().get(i);
            if (smash.e()) {
                if (smash.c() || smash.d()) {
                    IronLog.INTERNAL.verbose("smash = " + smash.l());
                } else if (!smash.h()) {
                    arrayList.add(smash);
                } else if (i2 == 0) {
                    String str = "Advanced Loading: Starting to load bidder " + smash.k() + ". No other instances will be loaded at the same time.";
                    IronLog.INTERNAL.verbose(a(str));
                    IronSourceUtils.sendAutomationLog(str);
                    arrayList.add(smash);
                    i2++;
                } else {
                    String str2 = "Advanced Loading: Won't start loading bidder " + smash.k() + " as a non bidder is being loaded";
                    IronLog.INTERNAL.verbose(a(str2));
                    IronSourceUtils.sendAutomationLog(str2);
                }
                i2++;
            }
            i++;
        }
        if (i2 == 0) {
            a(509, "Mediation No fill", true);
        }
        return arrayList;
    }

    private void q() {
        IronLog.INTERNAL.verbose(a(""));
        synchronized (this.t) {
            if (this.n == a.AUCTION) {
                return;
            }
            a(a.AUCTION);
            long a2 = this.m.f10998d.i - com.ironsource.mediationsdk.utils.f.a(this.u);
            if (a2 > 0) {
                new Timer().schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.adunit.c.e.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        e.this.r();
                    }
                }, a2);
            } else {
                r();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        IronLog.INTERNAL.verbose(a(""));
        AsyncTask.execute(new Runnable() { // from class: com.ironsource.mediationsdk.adunit.c.e.2
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                String str;
                i iVar;
                e.this.f11023h = new JSONObject();
                e.this.q.f10982c.a();
                HashMap hashMap = new HashMap();
                ArrayList arrayList = new ArrayList();
                StringBuilder sb = new StringBuilder();
                for (NetworkSettings networkSettings : e.this.m.f10997c) {
                    if (!e.this.l.b(new m(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(e.this.m.f10995a))) && e.this.a(networkSettings)) {
                        if (networkSettings.isBidder(e.this.m.f10995a)) {
                            AdapterBaseInterface a2 = C1347d.a().a(networkSettings, e.this.m.f10995a);
                            if (a2 instanceof AdapterBidderInterface) {
                                try {
                                    Map<String, Object> biddingData = ((AdapterBidderInterface) a2).getBiddingData(ContextProvider.getInstance().getApplicationContext());
                                    if (biddingData != null) {
                                        hashMap.put(networkSettings.getProviderInstanceName(), biddingData);
                                        sb.append(networkSettings.getInstanceType(e.this.m.f10995a) + networkSettings.getProviderInstanceName() + ",");
                                    } else {
                                        e.this.q.f10984e.d("missing bidding data for " + networkSettings.getProviderInstanceName());
                                    }
                                } catch (Exception e2) {
                                    iVar = e.this.q.f10984e;
                                    str = "exception while calling networkAdapter.getBiddingData - " + e2;
                                }
                            } else {
                                str = a2 == null ? "could not load network adapter" : "network adapter does not implementing AdapterBidderInterface";
                                iVar = e.this.q.f10984e;
                            }
                            iVar.a(str);
                        } else {
                            arrayList.add(networkSettings.getProviderInstanceName());
                            sb.append(networkSettings.getInstanceType(e.this.m.f10995a) + networkSettings.getProviderInstanceName() + ",");
                        }
                    }
                }
                IronLog.INTERNAL.verbose(e.this.a("auction waterfallString = " + ((Object) sb)));
                if (hashMap.size() != 0 || arrayList.size() != 0) {
                    e.this.q.f10982c.a(sb.toString());
                    if (e.this.f11019d != null) {
                        e.this.f11019d.a(ContextProvider.getInstance().getApplicationContext(), hashMap, arrayList, e.this.f11020e, o.a().b(e.this.m.f10995a), e.this.s);
                        return;
                    } else {
                        IronLog.INTERNAL.error(e.this.a("mAuctionHandler is null"));
                        return;
                    }
                }
                IronLog.INTERNAL.verbose(e.this.a("auction failed - no candidates"));
                e.this.q.f10982c.a(0L, 1005, "No candidates available for auctioning");
                e eVar = e.this;
                IronSource.AD_UNIT ad_unit = eVar.m.f10995a;
                if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
                    i = IronSourceError.ERROR_IS_LOAD_FAILED_NO_CANDIDATES;
                } else if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
                    i = 1024;
                } else {
                    IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
                    i = 510;
                }
                eVar.a(i, "Empty waterfall", true);
            }
        });
    }

    private void s() {
        this.w.a(this.m.f10995a, false);
    }

    private static String t() {
        return "fallback_" + System.currentTimeMillis();
    }

    protected abstract Adapter a(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit);

    protected abstract Smash a(NetworkSettings networkSettings, Adapter adapter, int i, String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String a(String str) {
        String name = this.m.f10995a.name();
        return TextUtils.isEmpty(str) ? name : name + " - " + str;
    }

    @Override // com.ironsource.mediationsdk.adunit.b.c
    public final Map<String, Object> a(com.ironsource.mediationsdk.adunit.b.b bVar) {
        HashMap hashMap = new HashMap();
        hashMap.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        hashMap.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        if (!TextUtils.isEmpty(this.f11016a.f11060b)) {
            hashMap.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f11016a.f11060b);
        }
        JSONObject jSONObject = this.f11023h;
        if (jSONObject != null && jSONObject.length() > 0) {
            hashMap.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.f11023h);
        }
        hashMap.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(o.a().b(this.m.f10995a)));
        if (bVar == com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_SUCCESS || bVar == com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_FAILED || bVar == com.ironsource.mediationsdk.adunit.b.b.AUCTION_SUCCESS || bVar == com.ironsource.mediationsdk.adunit.b.b.AUCTION_FAILED || bVar == com.ironsource.mediationsdk.adunit.b.b.AD_UNIT_CAPPED) {
            hashMap.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(this.f11021f));
            if (!TextUtils.isEmpty(this.f11022g)) {
                hashMap.put(IronSourceConstants.AUCTION_FALLBACK, this.f11022g);
            }
        }
        return hashMap;
    }

    @Override // com.ironsource.mediationsdk.adunit.e.b
    public final void a(int i) {
        this.q.f10984e.n("waterfalls hold too many with size = " + i);
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(int i, String str, int i2, String str2, long j) {
        String str3 = "";
        IronLog.INTERNAL.verbose(a(""));
        if (!j()) {
            this.q.f10984e.h("unexpected auction fail - error = " + i + ", " + str);
            return;
        }
        String str4 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        IronLog.INTERNAL.verbose(a(str4));
        StringBuilder sb = new StringBuilder();
        IronSource.AD_UNIT ad_unit = this.m.f10995a;
        if (ad_unit.equals(IronSource.AD_UNIT.REWARDED_VIDEO)) {
            str3 = IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
        } else if (ad_unit.equals(IronSource.AD_UNIT.INTERSTITIAL)) {
            str3 = IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
        } else if (ad_unit.equals(IronSource.AD_UNIT.BANNER)) {
            str3 = "BN";
        }
        IronSourceUtils.sendAutomationLog(sb.append(str3).append(": ").append(str4).toString());
        this.f11021f = i2;
        this.f11022g = str2;
        this.f11023h = new JSONObject();
        m();
        this.q.f10982c.a(j, i, str);
        a(a.LOADING);
        o();
    }

    public final void a(IronSourceSegment ironSourceSegment) {
        this.s = ironSourceSegment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(a aVar) {
        IronLog.INTERNAL.verbose(a("from " + this.n + " to " + aVar));
        synchronized (this.t) {
            this.n = aVar;
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.b
    public final void a(com.ironsource.mediationsdk.adunit.d.a.c<?> cVar) {
        IronLog.INTERNAL.verbose(a(cVar.l()));
        if (cVar.n() != this.f11016a.f11060b) {
            String str = "onLoadSuccess was invoked with state = " + this.n + " auctionId: " + cVar.n() + " and the current id is " + this.f11016a.f11060b;
            IronLog.INTERNAL.verbose(str);
            this.q.f10984e.i(str);
            return;
        }
        this.f11018c.put(cVar.k(), C1352i.a.ISAuctionPerformanceLoadedSuccessfully);
        if (a(a.LOADING, a.READY_TO_SHOW)) {
            boolean z = false;
            if (this.m.f11002h.a()) {
                b bVar = this.r;
                if (bVar.f11003a == IronSource.AD_UNIT.INTERSTITIAL) {
                    B.a().b();
                } else if (bVar.f11003a == IronSource.AD_UNIT.REWARDED_VIDEO) {
                    final aa a2 = aa.a();
                    if (a2.f10948a instanceof RewardedVideoManualListener) {
                        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (a2.f10948a != null) {
                                    ((RewardedVideoManualListener) a2.f10948a).onRewardedVideoAdReady();
                                    aa.a(a2, "onRewardedVideoAdReady()");
                                }
                            }
                        });
                    }
                } else {
                    IronLog.INTERNAL.warning("ad unit not supported - " + bVar.f11003a);
                }
            } else {
                a(true, false);
            }
            long a3 = com.ironsource.mediationsdk.utils.f.a(this.v);
            if (this.m.f10995a == IronSource.AD_UNIT.REWARDED_VIDEO && this.m.f11002h.f11004a == a.EnumC0323a.MANUAL) {
                z = true;
            }
            this.q.f10981b.a(a3, z);
            if (this.m.f11002h.b()) {
                this.p.a(0L);
            }
            if (this.m.a()) {
                com.ironsource.mediationsdk.server.b bVar2 = this.f11017b.get(cVar.k());
                if (bVar2 == null) {
                    String k = cVar.k();
                    String str2 = "winner instance missing from waterfall - " + k;
                    IronLog.INTERNAL.verbose(a(str2));
                    this.q.f10984e.a(1010, str2, k);
                    return;
                }
                C1351h.a(bVar2, cVar.i(), this.i);
                ArrayList arrayList = new ArrayList();
                Iterator<Smash> it = this.f11016a.a().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().k());
                }
                C1351h.a(arrayList, this.f11017b, cVar.i(), this.i, bVar2);
            }
        }
    }

    public final void a(ImpressionDataListener impressionDataListener) {
        this.z.add(impressionDataListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0095 A[LOOP:0: B:18:0x008f->B:20:0x0095, LOOP_END] */
    @Override // com.ironsource.mediationsdk.adunit.c.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.ironsource.mediationsdk.logger.IronSourceError r6, com.ironsource.mediationsdk.adunit.d.a.c<?> r7) {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.Object r1 = r5.t
            monitor-enter(r1)
            com.ironsource.mediationsdk.logger.IronLog r2 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ldb
            r3.<init>()     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r4 = r7.l()     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r4 = " - error = "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r3 = r3.append(r6)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r3 = r5.a(r3)     // Catch: java.lang.Throwable -> Ldb
            r2.verbose(r3)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r2 = r7.n()     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.adunit.e.a<Smash extends com.ironsource.mediationsdk.adunit.d.a.c<?>> r3 = r5.f11016a     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r3 = r3.f11060b     // Catch: java.lang.Throwable -> Ldb
            if (r2 != r3) goto La0
            com.ironsource.mediationsdk.adunit.c.e$a r2 = r5.n     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.adunit.c.e$a r3 = com.ironsource.mediationsdk.adunit.c.e.a.AUCTION     // Catch: java.lang.Throwable -> Ldb
            if (r2 != r3) goto L3d
            goto La0
        L3d:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.ironsource.mediationsdk.i$a> r2 = r5.f11018c     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r3 = r7.k()     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.i$a r4 = com.ironsource.mediationsdk.C1352i.a.ISAuctionPerformanceFailedToLoad     // Catch: java.lang.Throwable -> Ldb
            r2.put(r3, r4)     // Catch: java.lang.Throwable -> Ldb
            boolean r2 = r5.i()     // Catch: java.lang.Throwable -> Ldb
            if (r2 != 0) goto L86
            boolean r2 = r5.f()     // Catch: java.lang.Throwable -> Ldb
            if (r2 == 0) goto L55
            goto L86
        L55:
            com.ironsource.mediationsdk.adunit.b.d r2 = r5.q     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.adunit.b.i r2 = r2.f10984e     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r4 = "unexpected load failed for state - "
            r3.<init>(r4)     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.adunit.c.e$a r4 = r5.n     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r4 = " smash - "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r7 = r7.l()     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r7 = r3.append(r7)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r3 = ", error - "
            java.lang.StringBuilder r7 = r7.append(r3)     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r6 = r7.append(r6)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> Ldb
            r2.j(r6)     // Catch: java.lang.Throwable -> Ldb
            goto L8a
        L86:
            java.util.ArrayList r0 = r5.p()     // Catch: java.lang.Throwable -> Ldb
        L8a:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Ldb
            java.util.Iterator r6 = r0.iterator()
        L8f:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L9f
            java.lang.Object r7 = r6.next()
            com.ironsource.mediationsdk.adunit.d.a.c r7 = (com.ironsource.mediationsdk.adunit.d.a.c) r7
            r5.c(r7)
            goto L8f
        L9f:
            return
        La0:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r0 = "onAdLoadFailed was invoked with state ="
            r6.<init>(r0)     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.adunit.c.e$a r0 = r5.n     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r6 = r6.append(r0)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r0 = " auctionId: "
            java.lang.StringBuilder r6 = r6.append(r0)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r7 = r7.n()     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r7 = " and the current id is "
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.adunit.e.a<Smash extends com.ironsource.mediationsdk.adunit.d.a.c<?>> r7 = r5.f11016a     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r7 = r7.f11060b     // Catch: java.lang.Throwable -> Ldb
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Throwable -> Ldb
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.logger.IronLog r7 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL     // Catch: java.lang.Throwable -> Ldb
            r7.verbose(r6)     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.adunit.b.d r7 = r5.q     // Catch: java.lang.Throwable -> Ldb
            com.ironsource.mediationsdk.adunit.b.i r7 = r7.f10984e     // Catch: java.lang.Throwable -> Ldb
            r7.j(r6)     // Catch: java.lang.Throwable -> Ldb
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Ldb
            return
        Ldb:
            r6 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Ldb
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.adunit.c.e.a(com.ironsource.mediationsdk.logger.IronSourceError, com.ironsource.mediationsdk.adunit.d.a.c):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(com.ironsource.mediationsdk.server.b bVar, String str) {
        if (bVar == null) {
            IronLog.INTERNAL.verbose(a("no auctionResponseItem or listener"));
            return;
        }
        ImpressionData a2 = bVar.a(str);
        if (a2 != null) {
            for (ImpressionDataListener impressionDataListener : this.z) {
                IronLog.CALLBACK.info(a("onImpressionSuccess " + impressionDataListener.getClass().getSimpleName() + ": " + a2));
                impressionDataListener.onImpressionSuccess(a2);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(List<com.ironsource.mediationsdk.server.b> list, String str, com.ironsource.mediationsdk.server.b bVar, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog.INTERNAL.verbose(a(""));
        if (!j()) {
            this.q.f10984e.g("unexpected auction success for auctionId - " + str);
            return;
        }
        this.f11022g = "";
        this.f11021f = i;
        this.i = bVar;
        this.f11023h = jSONObject;
        if (!TextUtils.isEmpty(str2)) {
            this.q.f10984e.b(i2, str2);
        }
        this.w.a(this.m.f10995a, jSONObject2 != null ? jSONObject2.optBoolean("isAdUnitCapped", false) : false);
        if (this.w.a(this.m.f10995a)) {
            this.q.f10982c.c(str);
            a(IronSourceError.ERROR_AD_UNIT_CAPPED, "Ad unit is capped", false);
            return;
        }
        String a2 = a(list, str);
        this.q.f10982c.a(j);
        this.q.f10982c.b(a2);
        a(a.LOADING);
        o();
    }

    @Override // com.ironsource.environment.j
    public final void a(boolean z) {
        if (!this.k || this.m.f11002h.a()) {
            return;
        }
        IronLog.INTERNAL.verbose("network availability changed to - " + z);
        Boolean bool = this.y;
        if (bool == null) {
            return;
        }
        if (!(z && !bool.booleanValue() && b()) && (z || !this.y.booleanValue())) {
            return;
        }
        a(z, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(boolean z, boolean z2) {
        if (c(z)) {
            this.y = Boolean.valueOf(z);
            long time = this.x != 0 ? new Date().getTime() - this.x : 0L;
            this.x = new Date().getTime();
            this.q.f10981b.a(z, time, z2);
            this.r.a(z);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.c.a.b
    public final void b(com.ironsource.mediationsdk.adunit.d.a.c<?> cVar) {
        IronLog.INTERNAL.verbose(a(cVar.l()));
        b bVar = this.r;
        Placement placement = this.j;
        if (bVar.f11003a == IronSource.AD_UNIT.INTERSTITIAL) {
            B.a().f();
        } else if (bVar.f11003a == IronSource.AD_UNIT.REWARDED_VIDEO) {
            aa.a().b(placement);
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + bVar.f11003a);
        }
    }

    public final void b(ImpressionDataListener impressionDataListener) {
        this.z.remove(impressionDataListener);
    }

    public final void b(boolean z) {
        IronLog.INTERNAL.verbose(a("track = " + z));
        this.k = z;
    }

    protected abstract boolean b();

    @Override // com.ironsource.mediationsdk.InterfaceC1346c
    public final void c_() {
        if (this.m.f11002h.b()) {
            a(a.READY_TO_LOAD);
            a(false, true);
            e();
        }
    }

    @Override // com.ironsource.mediationsdk.ae
    public final void d() {
        IronLog.INTERNAL.verbose(a(""));
        e();
    }

    public final void e() {
        IronLog.INTERNAL.verbose(a(""));
        synchronized (this.t) {
            boolean z = true;
            if (this.m.f11002h.b() && this.l.a()) {
                IronLog.INTERNAL.verbose(a("all smashes are capped"));
                a(IronSourceConstants.TROUBLESHOOTING_MEDIATION_TCS_CALCULATED, "all smashes are capped", true);
            } else if (this.m.f11002h.f11004a != a.EnumC0323a.AUTOMATIC_LOAD_WHILE_SHOW && this.n == a.SHOWING) {
                IronLog.API.error(a("load cannot be invoked while showing an ad"));
                IronSourceError ironSourceError = new IronSourceError(com.ironsource.mediationsdk.adunit.a.a.b(this.m.f10995a), "load cannot be invoked while showing an ad");
                if (this.m.f11002h.a()) {
                    this.r.a(ironSourceError);
                } else {
                    this.r.a(false);
                }
            } else if (this.m.f11002h.f11004a != a.EnumC0323a.AUTOMATIC_LOAD_WHILE_SHOW && ((this.n != a.READY_TO_LOAD && this.n != a.READY_TO_SHOW) || C1359p.a().a(this.m.f10995a))) {
                IronLog.API.error(a("load is already in progress"));
            } else {
                this.f11023h = new JSONObject();
                s();
                if (this.m.f10995a != IronSource.AD_UNIT.REWARDED_VIDEO || this.m.f11002h.f11004a != a.EnumC0323a.MANUAL) {
                    z = false;
                }
                this.q.f10981b.a(z);
                this.v = new com.ironsource.mediationsdk.utils.f();
                if (this.m.a()) {
                    if (!this.f11018c.isEmpty()) {
                        this.f11020e.a(this.f11018c);
                        this.f11018c.clear();
                    }
                    q();
                } else {
                    a(a.LOADING);
                }
                if (this.m.a()) {
                    return;
                }
                m();
                o();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean f() {
        boolean z;
        synchronized (this.t) {
            z = this.n == a.READY_TO_SHOW;
        }
        return z;
    }

    public final void g() {
        this.z.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String h() {
        Placement placement = this.j;
        return placement == null ? "" : placement.getPlacementName();
    }
}
