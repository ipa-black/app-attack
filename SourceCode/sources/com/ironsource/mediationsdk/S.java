package com.ironsource.mediationsdk;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.C1352i;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.U;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class S extends AbstractC1357n implements T, InterfaceC1350g, InterfaceC1368y {

    /* renamed from: c  reason: collision with root package name */
    com.ironsource.mediationsdk.utils.n f10821c;

    /* renamed from: d  reason: collision with root package name */
    final ConcurrentHashMap<String, U> f10822d;

    /* renamed from: e  reason: collision with root package name */
    String f10823e;

    /* renamed from: f  reason: collision with root package name */
    JSONObject f10824f;

    /* renamed from: g  reason: collision with root package name */
    C1351h f10825g;

    /* renamed from: h  reason: collision with root package name */
    C1352i f10826h;
    long i;
    long j;
    private a k;
    private CopyOnWriteArrayList<U> l;
    private ConcurrentHashMap<String, com.ironsource.mediationsdk.server.b> m;
    private ConcurrentHashMap<String, C1352i.a> n;
    private com.ironsource.mediationsdk.server.b o;
    private String p;
    private int q;
    private boolean r;
    private boolean s;
    private long t;
    private int u;
    private String v;
    private boolean w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum a {
        STATE_NOT_INITIALIZED,
        STATE_READY_TO_LOAD,
        STATE_AUCTION,
        STATE_LOADING_SMASHES,
        STATE_READY_TO_SHOW,
        STATE_SHOWING
    }

    public S(List<NetworkSettings> list, com.ironsource.mediationsdk.model.h hVar, String str, String str2, int i, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        super(hashSet, ironSourceSegment);
        this.v = "";
        this.w = false;
        long time = new Date().getTime();
        a(IronSourceConstants.IS_MANAGER_INIT_STARTED);
        a(a.STATE_NOT_INITIALIZED);
        this.f10822d = new ConcurrentHashMap<>();
        this.l = new CopyOnWriteArrayList<>();
        this.m = new ConcurrentHashMap<>();
        this.n = new ConcurrentHashMap<>();
        this.p = "";
        this.f10823e = "";
        this.f10824f = null;
        this.q = hVar.f11261c;
        this.r = hVar.f11262d;
        C1359p.a().a(IronSource.AD_UNIT.INTERSTITIAL, i);
        com.ironsource.mediationsdk.utils.c cVar = hVar.i;
        this.j = cVar.i;
        boolean z = cVar.f11408e > 0;
        this.s = z;
        if (z) {
            this.f10825g = new C1351h("interstitial", cVar, this);
        }
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : list) {
            AbstractAdapter a2 = C1347d.a().a(networkSettings, networkSettings.getInterstitialSettings(), false, false);
            if (a2 != null) {
                C1348e a3 = C1348e.a();
                if (a3.a(a2, a3.f11107a, "interstitial")) {
                    U u = new U(str, str2, networkSettings, this, hVar.f11263e, a2);
                    String k = u.k();
                    this.f10822d.put(k, u);
                    arrayList.add(k);
                }
            }
        }
        this.f10826h = new C1352i(arrayList, cVar.f11409f);
        this.f10821c = new com.ironsource.mediationsdk.utils.n(new ArrayList(this.f10822d.values()));
        for (U u2 : this.f10822d.values()) {
            if (u2.h()) {
                u2.b();
            }
        }
        this.i = new Date().getTime();
        a(a.STATE_READY_TO_LOAD);
        a(IronSourceConstants.IS_MANAGER_INIT_ENDED, new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - time)}});
    }

    private String a(com.ironsource.mediationsdk.server.b bVar) {
        U u = this.f10822d.get(bVar.a());
        return (u != null ? Integer.toString(u.i()) : TextUtils.isEmpty(bVar.b()) ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "2") + bVar.a();
    }

    private void a(int i) {
        a(i, (Object[][]) null, false);
    }

    private void a(int i, U u) {
        a(i, u, null, false);
    }

    private void a(int i, U u, Object[][] objArr) {
        a(i, u, objArr, false);
    }

    private void a(int i, U u, Object[][] objArr, boolean z) {
        Map<String, Object> n = u.n();
        if (!TextUtils.isEmpty(this.f10823e)) {
            n.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f10823e);
        }
        JSONObject jSONObject = this.f10824f;
        if (jSONObject != null && jSONObject.length() > 0) {
            n.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.f10824f);
        }
        if (z && !TextUtils.isEmpty(this.p)) {
            n.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.p);
        }
        if (c(i)) {
            com.ironsource.mediationsdk.a.d.e();
            com.ironsource.mediationsdk.a.d.a(n, this.u, this.v);
        }
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    n.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IS sendProviderEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(n)));
    }

    private void a(int i, Object[][] objArr) {
        a(i, objArr, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Object[][] objArr, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        hashMap.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        if (!TextUtils.isEmpty(this.f10823e)) {
            hashMap.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f10823e);
        }
        JSONObject jSONObject = this.f10824f;
        if (jSONObject != null && jSONObject.length() > 0) {
            hashMap.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.f10824f);
        }
        if (z && !TextUtils.isEmpty(this.p)) {
            hashMap.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.p);
        }
        if (c(i)) {
            com.ironsource.mediationsdk.a.d.e();
            com.ironsource.mediationsdk.a.d.a(hashMap, this.u, this.v);
        }
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    hashMap.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                b("sendMediationEvent " + e2.getMessage());
            }
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(hashMap)));
    }

    private static void a(U u, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgIsManager " + u.k() + " : " + str, 0);
    }

    private void a(List<com.ironsource.mediationsdk.server.b> list) {
        this.l.clear();
        this.m.clear();
        this.n.clear();
        StringBuilder sb = new StringBuilder();
        for (com.ironsource.mediationsdk.server.b bVar : list) {
            sb.append(a(bVar) + ",");
            U u = this.f10822d.get(bVar.a());
            if (u != null) {
                u.f10873e = true;
                this.l.add(u);
                this.m.put(u.k(), bVar);
                this.n.put(bVar.a(), C1352i.a.ISAuctionPerformanceDidntAttemptToLoad);
            } else {
                b("updateWaterfall() - could not find matching smash for auction response item " + bVar.a());
            }
        }
        b("updateWaterfall() - next waterfall is " + sb.toString());
        if (sb.length() == 0) {
            b("Updated waterfall is empty");
        }
        a(IronSourceConstants.IS_RESULT_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb.toString()}});
    }

    private void b(int i) {
        a(i, (Object[][]) null, true);
    }

    private void b(int i, U u) {
        a(i, u, null, true);
    }

    private void b(int i, U u, Object[][] objArr) {
        a(i, u, objArr, true);
    }

    private void b(int i, Object[][] objArr) {
        a(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, objArr, true);
    }

    static void b(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgIsManager " + str, 0);
    }

    private static void c(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, str, 3);
    }

    private static boolean c(int i) {
        return i == 2002 || i == 2003 || i == 2200 || i == 2213 || i == 2005 || i == 2204 || i == 2201 || i == 2203 || i == 2006 || i == 2004 || i == 2110 || i == 2301 || i == 2300 || i == 2303;
    }

    private void f() {
        List<com.ironsource.mediationsdk.server.b> g2 = g();
        this.f10823e = c();
        a(g2);
    }

    private List<com.ironsource.mediationsdk.server.b> g() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (U u : this.f10822d.values()) {
            if (!u.h() && !this.f10821c.b(u)) {
                copyOnWriteArrayList.add(new com.ironsource.mediationsdk.server.b(u.k()));
            }
        }
        return copyOnWriteArrayList;
    }

    private void g(U u) {
        String b2 = this.m.get(u.k()).b();
        u.b(b2);
        a(2002, u);
        u.a(b2);
    }

    private void h() {
        if (this.l.isEmpty()) {
            a(a.STATE_READY_TO_LOAD);
            a(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_IS_LOAD_FAILED_NO_CANDIDATES)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Empty waterfall"}}, false);
            C1359p.a().a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(IronSourceError.ERROR_IS_LOAD_FAILED_NO_CANDIDATES, "Empty waterfall"));
            return;
        }
        a(a.STATE_LOADING_SMASHES);
        int i = 0;
        for (int i2 = 0; i2 < this.l.size() && i < this.q; i2++) {
            U u = this.l.get(i2);
            if (u.f10873e) {
                if (this.r && u.h()) {
                    if (i != 0) {
                        String str = "Advanced Loading: Won't start loading bidder " + u.k() + " as a non bidder is being loaded";
                        b(str);
                        IronSourceUtils.sendAutomationLog(str);
                        return;
                    }
                    String str2 = "Advanced Loading: Starting to load bidder " + u.k() + ". No other instances will be loaded at the same time.";
                    b(str2);
                    IronSourceUtils.sendAutomationLog(str2);
                    g(u);
                    return;
                }
                g(u);
                i++;
            }
        }
    }

    void a() {
        a(a.STATE_AUCTION);
        AsyncTask.execute(new Runnable() { // from class: com.ironsource.mediationsdk.S.1
            @Override // java.lang.Runnable
            public final void run() {
                StringBuilder sb;
                S.this.f10823e = "";
                S.this.f10824f = null;
                StringBuilder sb2 = new StringBuilder();
                long time = S.this.j - (new Date().getTime() - S.this.i);
                if (time > 0) {
                    IronLog.INTERNAL.verbose("delaying auction by " + time);
                    com.ironsource.environment.e.c cVar = com.ironsource.environment.e.c.f10584a;
                    com.ironsource.environment.e.c.b(new Runnable() { // from class: com.ironsource.mediationsdk.S.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            S.this.a();
                        }
                    }, time);
                    return;
                }
                S.this.a(2000, (Object[][]) null, false);
                HashMap hashMap = new HashMap();
                ArrayList arrayList = new ArrayList();
                for (U u : S.this.f10822d.values()) {
                    if (!S.this.f10821c.b(u)) {
                        if (u.h()) {
                            Map<String, Object> a2 = u.a();
                            if (a2 != null) {
                                hashMap.put(u.k(), a2);
                                sb = new StringBuilder();
                            }
                        } else {
                            arrayList.add(u.k());
                            sb = new StringBuilder();
                        }
                        sb2.append(sb.append(u.i()).append(u.k()).append(",").toString());
                    }
                }
                if (hashMap.size() == 0 && arrayList.size() == 0) {
                    S.this.a((int) IronSourceConstants.IS_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}, new Object[]{"duration", 0}}, false);
                    S.b("makeAuction() failed - No candidates available for auctioning");
                    C1359p.a().a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(1005, "No candidates available for auctioning"));
                    S.this.a((int) IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}}, false);
                    S.this.a(a.STATE_READY_TO_LOAD);
                    return;
                }
                S.this.a((int) IronSourceConstants.IS_AUCTION_REQUEST_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb2.toString()}}, false);
                int b2 = com.ironsource.mediationsdk.utils.o.a().b(2);
                if (S.this.f10825g != null) {
                    S.this.f10825g.a(ContextProvider.getInstance().getApplicationContext(), hashMap, arrayList, S.this.f10826h, b2, S.this.f11311b);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(int i, String str, int i2, String str2, long j) {
        String str3 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        b(str3);
        IronSourceUtils.sendAutomationLog("IS: " + str3);
        this.u = i2;
        this.v = str2;
        this.f10824f = null;
        f();
        if (TextUtils.isEmpty(str)) {
            a(IronSourceConstants.IS_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"duration", Long.valueOf(j)}});
        } else {
            a(IronSourceConstants.IS_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str}, new Object[]{"duration", Long.valueOf(j)}});
        }
        h();
    }

    void a(a aVar) {
        this.k = aVar;
        b("state=" + aVar);
    }

    @Override // com.ironsource.mediationsdk.T
    public final void a(U u) {
        synchronized (this) {
            a(u, "onInterstitialAdOpened");
            B.a().c();
            b(2005, u);
            if (this.s) {
                com.ironsource.mediationsdk.server.b bVar = this.m.get(u.k());
                if (bVar != null) {
                    C1351h.a(bVar, u.i(), this.o, this.p);
                    this.n.put(u.k(), C1352i.a.ISAuctionPerformanceShowedSuccessfully);
                    a(bVar, this.p);
                } else {
                    String k = u.k();
                    b("onInterstitialAdOpened showing instance " + k + " missing from waterfall");
                    a(IronSourceConstants.TROUBLESHOOTING_IS_NOTIFICATIONS_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1011}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Showing missing " + this.k}, new Object[]{IronSourceConstants.EVENTS_EXT1, k}});
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.T
    public final void a(U u, long j) {
        synchronized (this) {
            a(u, "onInterstitialAdReady");
            a(2003, u, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
            if (this.n.containsKey(u.k())) {
                this.n.put(u.k(), C1352i.a.ISAuctionPerformanceLoadedSuccessfully);
            }
            if (this.k == a.STATE_LOADING_SMASHES) {
                a(a.STATE_READY_TO_SHOW);
                B.a().b();
                a(2004, new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - this.t)}});
                if (this.s) {
                    com.ironsource.mediationsdk.server.b bVar = this.m.get(u.k());
                    if (bVar != null) {
                        C1351h.a(bVar, u.i(), this.o);
                        C1351h c1351h = this.f10825g;
                        CopyOnWriteArrayList<U> copyOnWriteArrayList = this.l;
                        CopyOnWriteArrayList<U> copyOnWriteArrayList2 = copyOnWriteArrayList;
                        c1351h.a(copyOnWriteArrayList, this.m, u.i(), this.o, bVar);
                    } else {
                        String k = u.k();
                        b("onInterstitialAdReady winner instance " + k + " missing from waterfall");
                        a(IronSourceConstants.TROUBLESHOOTING_IS_NOTIFICATIONS_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Loaded missing"}, new Object[]{IronSourceConstants.EVENTS_EXT1, k}});
                    }
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.T
    public final void a(IronSourceError ironSourceError, U u) {
        synchronized (this) {
            a(u, "onInterstitialAdShowFailed error=" + ironSourceError.getErrorMessage());
            B.a().b(ironSourceError);
            b(IronSourceConstants.IS_INSTANCE_SHOW_FAILED, u, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}});
            this.n.put(u.k(), C1352i.a.ISAuctionPerformanceFailedToShow);
            a(a.STATE_READY_TO_LOAD);
        }
    }

    @Override // com.ironsource.mediationsdk.T
    public final void a(IronSourceError ironSourceError, U u, long j) {
        CopyOnWriteArrayList<U> copyOnWriteArrayList = new CopyOnWriteArrayList();
        synchronized (this) {
            a(u, "onInterstitialAdLoadFailed error=" + ironSourceError.getErrorMessage() + " state=" + this.k.name());
            if (ironSourceError.getErrorCode() == 1158) {
                a(IronSourceConstants.IS_INSTANCE_LOAD_NO_FILL, u, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(j)}});
            } else {
                a(IronSourceConstants.IS_INSTANCE_LOAD_FAILED, u, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(j)}});
            }
            if (u != null && this.n.containsKey(u.k())) {
                this.n.put(u.k(), C1352i.a.ISAuctionPerformanceFailedToLoad);
            }
            Iterator<U> it = this.l.iterator();
            boolean z = false;
            boolean z2 = false;
            while (it.hasNext()) {
                U next = it.next();
                if (next.f10873e) {
                    if (this.r && next.h()) {
                        if (!z && !z2) {
                            String str = "Advanced Loading: Starting to load bidder " + next.k() + ". No other instances will be loaded at the same time.";
                            b(str);
                            IronSourceUtils.sendAutomationLog(str);
                        }
                        String str2 = "Advanced Loading: Won't start loading bidder " + next.k() + " as " + (z ? "a non bidder is being loaded" : "a non bidder was already loaded successfully");
                        b(str2);
                        IronSourceUtils.sendAutomationLog(str2);
                    }
                    copyOnWriteArrayList.add(next);
                    if (!this.r || !u.h() || next.h() || copyOnWriteArrayList.size() >= this.q) {
                        break;
                    }
                } else if (next.f10836a != U.a.INIT_IN_PROGRESS && next.f10836a != U.a.LOAD_IN_PROGRESS) {
                    if (next.g()) {
                        z2 = true;
                    }
                }
                z = true;
            }
            if (copyOnWriteArrayList.size() == 0 && this.k == a.STATE_LOADING_SMASHES && !z) {
                C1359p.a().a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(509, "No ads to show"));
                a(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 509}});
                a(a.STATE_READY_TO_LOAD);
            }
        }
        IronLog.INTERNAL.verbose("smashesToLoad.size() = " + copyOnWriteArrayList.size());
        for (U u2 : copyOnWriteArrayList) {
            g(u2);
        }
    }

    public final synchronized void a(String str) {
        if (this.k == a.STATE_SHOWING) {
            c("showInterstitial error: can't show ad while an ad is already showing");
            B.a().b(new IronSourceError(IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, "showInterstitial error: can't show ad while an ad is already showing"));
            a(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showInterstitial error: can't show ad while an ad is already showing"}}, false);
        } else if (this.k != a.STATE_READY_TO_SHOW) {
            b("showInterstitial() error state=" + this.k.toString());
            c("showInterstitial error: show called while no ads are available");
            B.a().b(new IronSourceError(509, "showInterstitial error: show called while no ads are available"));
            a(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 509}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showInterstitial error: show called while no ads are available"}});
        } else if (str == null) {
            c("showInterstitial error: empty default placement");
            B.a().b(new IronSourceError(1020, "showInterstitial error: empty default placement"));
            a(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1020}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showInterstitial error: empty default placement"}});
        } else {
            this.p = str;
            b(2100);
            if (com.ironsource.mediationsdk.utils.k.a(ContextProvider.getInstance().getApplicationContext(), this.p)) {
                String str2 = "placement " + this.p + " is capped";
                c(str2);
                B.a().b(new IronSourceError(IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT, str2));
                b(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str2}});
                return;
            }
            Iterator<U> it = this.l.iterator();
            while (it.hasNext()) {
                U next = it.next();
                if (next.g()) {
                    String str3 = this.p;
                    a(a.STATE_SHOWING);
                    next.c();
                    b(IronSourceConstants.IS_INSTANCE_SHOW, next);
                    this.f10821c.a(next);
                    if (this.f10821c.b(next)) {
                        next.f();
                        a(IronSourceConstants.IS_CAP_SESSION, next);
                        IronSourceUtils.sendAutomationLog(next.k() + " was session capped");
                    }
                    com.ironsource.mediationsdk.utils.k.d(ContextProvider.getInstance().getApplicationContext(), str3);
                    if (com.ironsource.mediationsdk.utils.k.a(ContextProvider.getInstance().getApplicationContext(), str3)) {
                        b(IronSourceConstants.IS_CAP_PLACEMENT);
                    }
                    return;
                }
                b("showInterstitial " + next.k() + " isReadyToShow() == false");
            }
            B.a().b(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
            b(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 509}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Show Fail - No ads to show"}});
        }
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(List<com.ironsource.mediationsdk.server.b> list, String str, com.ironsource.mediationsdk.server.b bVar, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        this.f10823e = str;
        this.o = bVar;
        this.f10824f = jSONObject;
        this.u = i;
        this.v = "";
        if (!TextUtils.isEmpty(str2)) {
            a(IronSourceConstants.TROUBLESHOOTING_AUCTION_SUCCESSFUL_RECOVERY_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str2}}, false);
        }
        a(jSONObject2, IronSource.AD_UNIT.INTERSTITIAL);
        if (this.f11310a.a(IronSource.AD_UNIT.INTERSTITIAL)) {
            a(IronSourceConstants.IS_AD_UNIT_CAPPED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_AUCTION_ID, str}}, false);
            a(a.STATE_READY_TO_LOAD);
            C1359p.a().a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(IronSourceError.ERROR_AD_UNIT_CAPPED, "Ad unit is capped"));
            return;
        }
        a(IronSourceConstants.IS_AUCTION_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(j)}}, false);
        a(list);
        h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Should Track Network State: " + z, 0);
        this.w = z;
    }

    @Override // com.ironsource.mediationsdk.T
    public final void b(U u) {
        synchronized (this) {
            a(u, "onInterstitialAdClosed");
            b(IronSourceConstants.IS_INSTANCE_CLOSED, u, new Object[][]{new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(com.ironsource.mediationsdk.utils.o.a().b(2))}});
            com.ironsource.mediationsdk.utils.o.a().a(2);
            B.a().d();
            a(a.STATE_READY_TO_LOAD);
        }
    }

    @Override // com.ironsource.mediationsdk.T
    public final void b(IronSourceError ironSourceError, U u) {
        a(IronSourceConstants.IS_INSTANCE_INIT_FAILED, u, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}});
    }

    @Override // com.ironsource.mediationsdk.T
    public final void c(U u) {
        a(u, "onInterstitialAdShowSucceeded");
        B.a().e();
        b(IronSourceConstants.IS_INSTANCE_SHOW_SUCCESS, u);
    }

    public final synchronized void d() {
        if (this.k == a.STATE_SHOWING) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "loadInterstitial: load cannot be invoked while showing an ad", 3);
            B.a().a(new IronSourceError(IronSourceError.ERROR_IS_LOAD_DURING_SHOW, "loadInterstitial: load cannot be invoked while showing an ad"));
        } else if ((this.k != a.STATE_READY_TO_LOAD && this.k != a.STATE_READY_TO_SHOW) || C1359p.a().a(IronSource.AD_UNIT.INTERSTITIAL)) {
            b("loadInterstitial: load is already in progress");
        } else {
            this.f10823e = "";
            this.p = "";
            this.f10824f = null;
            a(IronSource.AD_UNIT.INTERSTITIAL);
            a(2001, (Object[][]) null, false);
            this.t = new Date().getTime();
            if (!this.s) {
                f();
                h();
                return;
            }
            if (!this.n.isEmpty()) {
                this.f10826h.a(this.n);
                this.n.clear();
            }
            a();
        }
    }

    @Override // com.ironsource.mediationsdk.T
    public final void d(U u) {
        a(u, "onInterstitialAdClicked");
        B.a().f();
        b(2006, u);
    }

    @Override // com.ironsource.mediationsdk.T
    public final void e(U u) {
        a(u, "onInterstitialAdVisible");
    }

    public final synchronized boolean e() {
        if ((!this.w || IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext())) && this.k == a.STATE_READY_TO_SHOW) {
            Iterator<U> it = this.l.iterator();
            while (it.hasNext()) {
                if (it.next().g()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.ironsource.mediationsdk.T
    public final void f(U u) {
        a(IronSourceConstants.IS_INSTANCE_INIT_SUCCESS, u);
    }
}
