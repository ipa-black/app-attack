package com.ironsource.mediationsdk;

import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.NetworkStateReceiver;
import com.ironsource.environment.a;
import com.ironsource.mediationsdk.C1352i;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.X;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.model.Placement;
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
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class V extends AbstractC1357n implements com.ironsource.environment.j, W, ae, InterfaceC1346c, InterfaceC1350g, InterfaceC1369z {
    private a A;
    private int B;
    private String C;
    private boolean D;
    private NetworkStateReceiver E;
    private C1367x F;

    /* renamed from: c  reason: collision with root package name */
    final ConcurrentHashMap<String, X> f10846c;

    /* renamed from: d  reason: collision with root package name */
    com.ironsource.mediationsdk.utils.n f10847d;

    /* renamed from: e  reason: collision with root package name */
    C1351h f10848e;

    /* renamed from: f  reason: collision with root package name */
    C1352i f10849f;

    /* renamed from: g  reason: collision with root package name */
    String f10850g;

    /* renamed from: h  reason: collision with root package name */
    JSONObject f10851h;
    int i;
    long j;
    private CopyOnWriteArrayList<X> k;
    private List<com.ironsource.mediationsdk.server.b> l;
    private ConcurrentHashMap<String, com.ironsource.mediationsdk.server.b> m;
    private ConcurrentHashMap<String, C1352i.a> n;
    private com.ironsource.mediationsdk.server.b o;
    private ad p;
    private boolean q;
    private boolean r;
    private boolean s;
    private String t;
    private long u;
    private long v;
    private int w;
    private boolean x;
    private boolean y;
    private Boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum a {
        RV_STATE_INITIATING,
        RV_STATE_AUCTION_IN_PROGRESS,
        RV_STATE_NOT_LOADED,
        RV_STATE_LOADING_SMASHES,
        RV_STATE_READY_TO_SHOW
    }

    public V(List<NetworkSettings> list, com.ironsource.mediationsdk.model.o oVar, String str, String str2, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        super(hashSet, ironSourceSegment);
        this.i = 1;
        this.C = "";
        this.D = false;
        long time = new Date().getTime();
        a(IronSourceConstants.RV_MANAGER_INIT_STARTED);
        a(a.RV_STATE_INITIATING);
        this.z = null;
        this.w = oVar.f11301c;
        this.x = oVar.f11302d;
        this.t = "";
        com.ironsource.mediationsdk.utils.c cVar = oVar.l;
        this.y = false;
        this.k = new CopyOnWriteArrayList<>();
        this.l = new ArrayList();
        this.m = new ConcurrentHashMap<>();
        this.n = new ConcurrentHashMap<>();
        this.v = new Date().getTime();
        this.q = cVar.f11408e > 0;
        this.r = cVar.m;
        this.s = !cVar.n;
        this.u = cVar.l;
        if (this.q) {
            this.f10848e = new C1351h("rewardedVideo", cVar, this);
        }
        this.p = new ad(cVar, this);
        this.f10846c = new ConcurrentHashMap<>();
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : list) {
            AbstractAdapter a2 = C1347d.a().a(networkSettings, networkSettings.getRewardedVideoSettings(), false, false);
            if (a2 != null) {
                C1348e a3 = C1348e.a();
                if (a3.a(a2, a3.f11108b, "rewarded video")) {
                    X x = new X(str, str2, networkSettings, this, oVar.f11303e, a2);
                    String k = x.k();
                    this.f10846c.put(k, x);
                    arrayList.add(k);
                }
            }
        }
        this.f10849f = new C1352i(arrayList, cVar.f11409f);
        this.f10847d = new com.ironsource.mediationsdk.utils.n(new ArrayList(this.f10846c.values()));
        for (X x2 : this.f10846c.values()) {
            if (x2.h()) {
                x2.b();
            }
        }
        a(IronSourceConstants.RV_MANAGER_INIT_ENDED, a.AnonymousClass1.a(new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - time)}}));
        this.F = new C1367x(oVar.i, this);
        a(cVar.i);
    }

    private String a(com.ironsource.mediationsdk.server.b bVar) {
        X x = this.f10846c.get(bVar.a());
        return (x != null ? Integer.toString(x.i()) : TextUtils.isEmpty(bVar.b()) ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "2") + bVar.a();
    }

    private void a(int i, Map<String, Object> map, boolean z, boolean z2) {
        HashMap hashMap = new HashMap();
        hashMap.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        hashMap.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        if (z2 && !TextUtils.isEmpty(this.f10850g)) {
            hashMap.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f10850g);
        }
        JSONObject jSONObject = this.f10851h;
        if (jSONObject != null && jSONObject.length() > 0) {
            hashMap.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.f10851h);
        }
        if (z && !TextUtils.isEmpty(this.t)) {
            hashMap.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.t);
        }
        if (c(i)) {
            com.ironsource.mediationsdk.a.h.e();
            com.ironsource.mediationsdk.a.h.a(hashMap, this.B, this.C);
        }
        hashMap.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(this.i));
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    hashMap.putAll(map);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgRvManager: RV sendMediationEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(hashMap)));
    }

    private void a(long j) {
        if (this.f10847d.a()) {
            b(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.TROUBLESHOOTING_MEDIATION_TCS_CALCULATED)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "all smashes are capped"}}));
            f();
        } else if (this.q) {
            if (!this.n.isEmpty()) {
                this.f10849f.a(this.n);
                this.n.clear();
            }
            new Timer().schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.V.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    final V v = V.this;
                    v.a(a.RV_STATE_AUCTION_IN_PROGRESS);
                    AsyncTask.execute(new Runnable() { // from class: com.ironsource.mediationsdk.V.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            StringBuilder sb;
                            V.a("makeAuction()");
                            V.this.f10850g = "";
                            V.this.f10851h = null;
                            V.this.a(IronSource.AD_UNIT.REWARDED_VIDEO);
                            V.this.j = new Date().getTime();
                            HashMap hashMap = new HashMap();
                            ArrayList arrayList = new ArrayList();
                            StringBuilder sb2 = new StringBuilder();
                            for (X x : V.this.f10846c.values()) {
                                if (x.h()) {
                                    x.f10862b = false;
                                }
                                if (!V.this.f10847d.b(x)) {
                                    if (x.h()) {
                                        Map<String, Object> a2 = x.a();
                                        if (a2 != null) {
                                            hashMap.put(x.k(), a2);
                                            sb = new StringBuilder();
                                        }
                                    } else {
                                        arrayList.add(x.k());
                                        sb = new StringBuilder();
                                    }
                                    sb2.append(sb.append(x.i()).append(x.k()).append(",").toString());
                                }
                            }
                            if (hashMap.keySet().size() == 0 && arrayList.size() == 0) {
                                V.this.b(IronSourceConstants.RV_AUCTION_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}, new Object[]{"duration", 0}}));
                                V.a("makeAuction() failed - No candidates available for auctioning");
                                V.this.f();
                                return;
                            }
                            V.a("makeAuction() - request waterfall is: " + ((Object) sb2));
                            V.this.a(1000);
                            V.this.a(IronSourceConstants.RV_AUCTION_REQUEST);
                            V.this.a(IronSourceConstants.RV_AUCTION_REQUEST_WATERFALL, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb2.toString()}}));
                            V.this.f10848e.a(ContextProvider.getInstance().getApplicationContext(), hashMap, arrayList, V.this.f10849f, V.this.i, V.this.f11311b);
                        }
                    });
                }
            }, j);
        } else {
            IronLog.INTERNAL.verbose("auction is disabled, fallback flow will occur");
            g();
            if (this.l.isEmpty()) {
                b(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 80002}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "waterfall is empty"}}));
                f();
                return;
            }
            a(1000);
            if (this.s && this.y) {
                return;
            }
            e();
        }
    }

    static void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgRvManager: " + str, 0);
    }

    private void a(List<com.ironsource.mediationsdk.server.b> list) {
        this.l = list;
        StringBuilder sb = new StringBuilder();
        Iterator<com.ironsource.mediationsdk.server.b> it = list.iterator();
        while (it.hasNext()) {
            sb.append(a(it.next()) + ",");
        }
        a("updateNextWaterfallToLoad() - next waterfall is " + sb.toString());
        if (sb.length() == 0) {
            a("Updated waterfall is empty");
        }
        b(IronSourceConstants.RV_AUCTION_RESPONSE_WATERFALL, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb.toString()}}));
    }

    private void a(boolean z, Map<String, Object> map) {
        Boolean bool = this.z;
        if (bool == null || bool.booleanValue() != z) {
            this.z = Boolean.valueOf(z);
            long time = new Date().getTime() - this.v;
            this.v = new Date().getTime();
            if (map == null) {
                map = new HashMap<>();
            }
            map.put("duration", Long.valueOf(time));
            b(z ? IronSourceConstants.RV_CALLBACK_AVAILABILITY_TRUE : IronSourceConstants.RV_CALLBACK_AVAILABILITY_FALSE, map);
            aa.a().a(z);
        }
    }

    private void b(int i) {
        a(i, new HashMap(), true, true);
    }

    private static void b(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgRvManager: " + str, 3);
    }

    private void b(List<com.ironsource.mediationsdk.server.b> list) {
        this.k.clear();
        this.m.clear();
        this.n.clear();
        for (com.ironsource.mediationsdk.server.b bVar : list) {
            X x = this.f10846c.get(bVar.a());
            if (x != null) {
                x.f10873e = true;
                this.k.add(x);
                this.m.put(x.k(), bVar);
                this.n.put(bVar.a(), C1352i.a.ISAuctionPerformanceDidntAttemptToLoad);
            } else {
                a("updateWaterfall() - could not find matching smash for auction response item " + bVar.a());
            }
        }
        this.l.clear();
    }

    private void b(boolean z) {
        a(z, new HashMap());
    }

    private void c(int i, Map<String, Object> map) {
        a(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, map, true, true);
    }

    private static void c(X x, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgRvManager: " + (x.k() + " : " + str), 0);
    }

    private static void c(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, str, 3);
    }

    private static boolean c(int i) {
        return i == 1003 || i == 1302 || i == 1301 || i == 1303;
    }

    private void e(X x) {
        String b2 = this.m.get(x.k()).b();
        C1349f.a();
        x.a(b2, this.f10850g, this.f10851h, this.B, this.C, this.i, C1349f.d(b2));
    }

    private void g() {
        this.f10850g = c();
        a(h());
    }

    private List<com.ironsource.mediationsdk.server.b> h() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (X x : this.f10846c.values()) {
            if (!x.h() && !this.f10847d.b(x)) {
                copyOnWriteArrayList.add(new com.ironsource.mediationsdk.server.b(x.k()));
            }
        }
        return copyOnWriteArrayList;
    }

    private void i() {
        if (this.k.isEmpty()) {
            b(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 80004}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "waterfall is empty"}}));
            f();
            return;
        }
        a(a.RV_STATE_LOADING_SMASHES);
        int i = 0;
        for (int i2 = 0; i2 < this.k.size() && i < this.w; i2++) {
            X x = this.k.get(i2);
            if (x.f10873e) {
                if (this.x && x.h()) {
                    if (i != 0) {
                        String str = "Advanced Loading: Won't start loading bidder " + x.k() + " as a non bidder is being loaded";
                        a(str);
                        IronSourceUtils.sendAutomationLog(str);
                        return;
                    }
                    String str2 = "Advanced Loading: Starting to load bidder " + x.k() + ". No other instances will be loaded at the same time.";
                    a(str2);
                    IronSourceUtils.sendAutomationLog(str2);
                    e(x);
                    return;
                }
                e(x);
                i++;
            }
        }
    }

    void a(int i) {
        a(i, new HashMap(), false, false);
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(int i, String str, int i2, String str2, long j) {
        String str3 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        a(str3);
        IronSourceUtils.sendAutomationLog("RV: " + str3);
        this.B = i2;
        this.C = str2;
        this.f10851h = null;
        g();
        b(IronSourceConstants.RV_AUCTION_FAILED, TextUtils.isEmpty(str) ? a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"duration", Long.valueOf(j)}}) : a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str}, new Object[]{"duration", Long.valueOf(j)}}));
        if (this.s && this.y) {
            return;
        }
        e();
    }

    void a(int i, Map<String, Object> map) {
        a(i, map, false, false);
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1369z
    public final void a(Context context, boolean z) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "ProgRvManager Should Track Network State: " + z, 0);
        try {
            this.D = z;
            if (z) {
                if (this.E == null) {
                    this.E = new NetworkStateReceiver(context, this);
                }
                context.getApplicationContext().registerReceiver(this.E, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } else if (this.E != null) {
                context.getApplicationContext().unregisterReceiver(this.E);
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error("Got an error from receiver with message: " + e2.getMessage());
        }
    }

    void a(a aVar) {
        a("current state=" + this.A + ", new state=" + aVar);
        this.A = aVar;
    }

    @Override // com.ironsource.mediationsdk.W
    public final void a(X x) {
        synchronized (this) {
            this.i++;
            c(x, "onRewardedVideoAdOpened");
            aa.a().b();
            if (this.q) {
                com.ironsource.mediationsdk.server.b bVar = this.m.get(x.k());
                if (bVar != null) {
                    C1351h.a(bVar, x.i(), this.o, this.t);
                    this.n.put(x.k(), C1352i.a.ISAuctionPerformanceShowedSuccessfully);
                    a(bVar, this.t);
                } else {
                    String k = x.k();
                    b("onRewardedVideoAdOpened showing instance " + k + " missing from waterfall");
                    b(IronSourceConstants.TROUBLESHOOTING_RV_NOTIFICATIONS_ERROR, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1011}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Showing missing " + this.A}, new Object[]{IronSourceConstants.EVENTS_EXT1, k}}));
                }
            }
            this.p.a();
        }
    }

    @Override // com.ironsource.mediationsdk.W
    public final void a(X x, Placement placement) {
        c(x, "onRewardedVideoAdRewarded");
        aa.a().a(placement);
    }

    @Override // com.ironsource.mediationsdk.W
    public final synchronized void a(X x, String str) {
        c(x, "onLoadSuccess ");
        String str2 = this.f10850g;
        if (str2 != null && !str.equalsIgnoreCase(str2)) {
            a("onLoadSuccess was invoked with auctionId: " + str + " and the current id is " + this.f10850g);
            x.b(IronSourceConstants.RV_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 2}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "onLoadSuccess wrong auction ID " + this.A}});
            return;
        }
        a aVar = this.A;
        this.n.put(x.k(), C1352i.a.ISAuctionPerformanceLoadedSuccessfully);
        if (this.A == a.RV_STATE_LOADING_SMASHES) {
            b(true);
            a(a.RV_STATE_READY_TO_SHOW);
            b(1003, a.AnonymousClass1.a(new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - this.j)}}));
            this.F.a(0L);
            if (this.q) {
                com.ironsource.mediationsdk.server.b bVar = this.m.get(x.k());
                if (bVar != null) {
                    C1351h.a(bVar, x.i(), this.o);
                    C1351h c1351h = this.f10848e;
                    CopyOnWriteArrayList<X> copyOnWriteArrayList = this.k;
                    CopyOnWriteArrayList<X> copyOnWriteArrayList2 = copyOnWriteArrayList;
                    c1351h.a(copyOnWriteArrayList, this.m, x.i(), this.o, bVar);
                    return;
                }
                String k = x.k();
                b("onLoadSuccess winner instance " + k + " missing from waterfall. auctionId: " + str + " and the current id is " + this.f10850g);
                b(IronSourceConstants.TROUBLESHOOTING_RV_NOTIFICATIONS_ERROR, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Loaded missing " + aVar}, new Object[]{IronSourceConstants.EVENTS_EXT1, k}}));
            }
        }
    }

    @Override // com.ironsource.mediationsdk.W
    public final void a(IronSourceError ironSourceError, X x) {
        synchronized (this) {
            c(x, "onRewardedVideoAdShowFailed error=" + ironSourceError.getErrorMessage());
            c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}}));
            aa.a().a(ironSourceError);
            this.y = false;
            this.n.put(x.k(), C1352i.a.ISAuctionPerformanceFailedToShow);
            if (this.A != a.RV_STATE_READY_TO_SHOW) {
                b(false);
            }
            this.p.c();
        }
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1369z
    public final synchronized void a(Placement placement) {
        if (placement == null) {
            c("showRewardedVideo error: empty default placement");
            aa.a().a(new IronSourceError(1021, "showRewardedVideo error: empty default placement"));
            a(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1021}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showRewardedVideo error: empty default placement"}}), false, true);
            return;
        }
        this.t = placement.getPlacementName();
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "showRewardedVideo(" + placement + ")", 0);
        b(IronSourceConstants.RV_API_SHOW_CALLED);
        if (this.y) {
            c("showRewardedVideo error: can't show ad while an ad is already showing");
            aa.a().a(new IronSourceError(1022, "showRewardedVideo error: can't show ad while an ad is already showing"));
            c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1022}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showRewardedVideo error: can't show ad while an ad is already showing"}}));
        } else if (this.A != a.RV_STATE_READY_TO_SHOW) {
            c("showRewardedVideo error: show called while no ads are available");
            aa.a().a(new IronSourceError(1023, "showRewardedVideo error: show called while no ads are available"));
            c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1023}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showRewardedVideo error: show called while no ads are available"}}));
        } else if (com.ironsource.mediationsdk.utils.k.c(ContextProvider.getInstance().getApplicationContext(), this.t)) {
            String str = "showRewardedVideo error: placement " + this.t + " is capped";
            c(str);
            aa.a().a(new IronSourceError(IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT, str));
            c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str}}));
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            Iterator<X> it = this.k.iterator();
            while (it.hasNext()) {
                X next = it.next();
                if (next.c()) {
                    this.y = true;
                    next.a(true, this.i);
                    a("showVideo()");
                    this.f10847d.a(next);
                    if (this.f10847d.b(next)) {
                        next.f();
                        IronSourceUtils.sendAutomationLog(next.k() + " rewarded video is now session capped");
                    }
                    com.ironsource.mediationsdk.utils.k.e(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName());
                    if (com.ironsource.mediationsdk.utils.k.c(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName())) {
                        b(IronSourceConstants.RV_CAP_PLACEMENT);
                    }
                    this.F.a();
                    next.a(placement, this.i);
                    a(a.RV_STATE_NOT_LOADED);
                    return;
                }
                if (next.o() != null) {
                    stringBuffer.append(next.k() + ":" + next.o() + ",");
                }
                next.a(false, this.i);
            }
            a("showRewardedVideo(): No ads to show");
            aa.a().a(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            HashMap hashMap = new HashMap();
            hashMap.put(IronSourceConstants.EVENTS_ERROR_CODE, 509);
            hashMap.put(IronSourceConstants.EVENTS_ERROR_REASON, "showRewardedVideo(): No ads to show");
            if (stringBuffer.length() != 0) {
                hashMap.put(IronSourceConstants.EVENTS_EXT1, stringBuffer.toString());
            }
            c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, hashMap);
            this.p.c();
        }
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(List<com.ironsource.mediationsdk.server.b> list, String str, com.ironsource.mediationsdk.server.b bVar, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        a("makeAuction(): success");
        this.f10850g = str;
        this.o = bVar;
        this.f10851h = jSONObject;
        this.B = i;
        this.C = "";
        if (!TextUtils.isEmpty(str2)) {
            b(IronSourceConstants.TROUBLESHOOTING_AUCTION_SUCCESSFUL_RECOVERY_ERROR, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str2}}));
        }
        a(jSONObject2, IronSource.AD_UNIT.REWARDED_VIDEO);
        if (this.f11310a.a(IronSource.AD_UNIT.REWARDED_VIDEO)) {
            b(IronSourceConstants.RV_AD_UNIT_CAPPED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_AUCTION_ID, str}}));
            f();
            return;
        }
        b(IronSourceConstants.RV_AUCTION_SUCCESS, a.AnonymousClass1.a(new Object[][]{new Object[]{"duration", Long.valueOf(j)}}));
        a(list);
        if (this.s && this.y) {
            return;
        }
        e();
    }

    @Override // com.ironsource.environment.j
    public final void a(boolean z) {
        if (this.D) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Network Availability Changed To: " + z, 0);
            Boolean bool = this.z;
            if (bool == null) {
                return;
            }
            if (!(z && !bool.booleanValue() && a_()) && (z || !this.z.booleanValue())) {
                return;
            }
            b(z);
        }
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1369z
    public final synchronized boolean a_() {
        if (!this.D || IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext())) {
            if (this.A == a.RV_STATE_READY_TO_SHOW && !this.y) {
                Iterator<X> it = this.k.iterator();
                while (it.hasNext()) {
                    if (it.next().c()) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
        return false;
    }

    void b(int i, Map<String, Object> map) {
        a(i, map, false, true);
    }

    @Override // com.ironsource.mediationsdk.W
    public final void b(X x) {
        synchronized (this) {
            x.a(IronSourceConstants.RV_INSTANCE_CLOSED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, "otherRVAvailable = false"}});
            c(x, "onRewardedVideoAdClosed, mediation state: " + this.A.name());
            aa.a().c();
            this.y = false;
            if (this.A != a.RV_STATE_READY_TO_SHOW) {
                b(false);
            }
            if (this.r) {
                List<com.ironsource.mediationsdk.server.b> list = this.l;
                if (list != null && list.size() > 0) {
                    new Timer().schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.V.3
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public final void run() {
                            V.this.e();
                        }
                    }, this.u);
                }
            } else {
                this.p.b();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.W
    public final void b(X x, Placement placement) {
        c(x, "onRewardedVideoAdClicked");
        aa.a().b(placement);
    }

    @Override // com.ironsource.mediationsdk.W
    public final void b(X x, String str) {
        CopyOnWriteArrayList<X> copyOnWriteArrayList = new CopyOnWriteArrayList();
        synchronized (this) {
            c(x, "onLoadError state=" + this.A);
            if (!str.equalsIgnoreCase(this.f10850g)) {
                a("onLoadError was invoked with auctionId:" + str + " and the current id is " + this.f10850g);
                x.b(IronSourceConstants.RV_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 4}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "loadError wrong auction ID " + this.A}});
                return;
            }
            this.n.put(x.k(), C1352i.a.ISAuctionPerformanceFailedToLoad);
            if (this.A == a.RV_STATE_LOADING_SMASHES || this.A == a.RV_STATE_READY_TO_SHOW) {
                Iterator<X> it = this.k.iterator();
                boolean z = false;
                boolean z2 = false;
                while (it.hasNext()) {
                    X next = it.next();
                    if (next.f10873e) {
                        if (this.x && next.h()) {
                            if (!z && !z2) {
                                String str2 = "Advanced Loading: Starting to load bidder " + next.k() + ". No other instances will be loaded at the same time.";
                                a(str2);
                                IronSourceUtils.sendAutomationLog(str2);
                            }
                            String str3 = "Advanced Loading: Won't start loading bidder " + next.k() + " as " + (z ? "a non bidder is being loaded" : "a non bidder was already loaded successfully");
                            a(str3);
                            IronSourceUtils.sendAutomationLog(str3);
                        }
                        if (this.m.get(next.k()) != null) {
                            copyOnWriteArrayList.add(next);
                            if (!this.x || !x.h() || next.h() || copyOnWriteArrayList.size() >= this.w) {
                                break;
                            }
                            z = true;
                        } else {
                            continue;
                        }
                    } else {
                        if (next.f10861a != X.a.INIT_IN_PROGRESS && next.f10861a != X.a.LOAD_IN_PROGRESS) {
                            if (next.c()) {
                                z2 = true;
                            }
                        }
                        z = true;
                    }
                }
                if (copyOnWriteArrayList.size() == 0 && !z2 && !z) {
                    a("onLoadError(): No other available smashes");
                    b(false);
                    a(a.RV_STATE_NOT_LOADED);
                    this.p.d();
                }
                for (X x2 : copyOnWriteArrayList) {
                    e(x2);
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.W
    public final void c(X x) {
        c(x, "onRewardedVideoAdStarted");
        aa.a().d();
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1346c
    public final void c_() {
        a(a.RV_STATE_NOT_LOADED);
        a(false, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_RV_EXPIRED_ADS)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "loaded ads are expired"}}));
        a(0L);
    }

    @Override // com.ironsource.mediationsdk.ae
    public final synchronized void d() {
        a("onLoadTriggered: RV load was triggered in " + this.A + " state");
        a(0L);
    }

    @Override // com.ironsource.mediationsdk.W
    public final void d(X x) {
        c(x, "onRewardedVideoAdEnded");
        aa.a().e();
    }

    void e() {
        b(this.l);
        i();
    }

    void f() {
        a(a.RV_STATE_NOT_LOADED);
        b(false);
        this.p.d();
    }
}
