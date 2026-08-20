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
import com.ironsource.mediationsdk.J;
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
public final class I extends AbstractC1357n implements com.ironsource.environment.j, K, ae, InterfaceC1346c, InterfaceC1350g, InterfaceC1369z {
    private Boolean A;
    private C1367x B;

    /* renamed from: c  reason: collision with root package name */
    L f10681c;

    /* renamed from: d  reason: collision with root package name */
    C1352i f10682d;

    /* renamed from: e  reason: collision with root package name */
    C1351h f10683e;

    /* renamed from: f  reason: collision with root package name */
    long f10684f;

    /* renamed from: g  reason: collision with root package name */
    final ConcurrentHashMap<String, J> f10685g;

    /* renamed from: h  reason: collision with root package name */
    com.ironsource.mediationsdk.utils.n f10686h;
    int i;
    a j;
    final Object k;
    private ConcurrentHashMap<String, com.ironsource.mediationsdk.server.b> l;
    private ConcurrentHashMap<String, C1352i.a> m;
    private com.ironsource.mediationsdk.server.b n;
    private JSONObject o;
    private ad p;
    private boolean q;
    private String r;
    private int s;
    private NetworkStateReceiver t;
    private boolean u;
    private String v;
    private int w;
    private boolean x;
    private boolean y;
    private long z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum a {
        RV_STATE_INITIATING,
        RV_STATE_AUCTION_IN_PROGRESS,
        RV_STATE_NOT_LOADED,
        RV_STATE_LOADING_SMASHES,
        RV_STATE_READY_TO_SHOW
    }

    public I(List<NetworkSettings> list, com.ironsource.mediationsdk.model.o oVar, String str, String str2, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        super(hashSet, ironSourceSegment);
        this.r = "";
        this.u = false;
        this.i = 1;
        this.k = new Object();
        long time = new Date().getTime();
        a(IronSourceConstants.RV_MANAGER_INIT_STARTED);
        a(a.RV_STATE_INITIATING);
        this.A = null;
        this.w = oVar.f11301c;
        this.x = oVar.f11302d;
        this.v = "";
        this.o = null;
        com.ironsource.mediationsdk.utils.c cVar = oVar.l;
        this.y = false;
        this.f10681c = new L(oVar.l.o, oVar.l.f11410g);
        this.l = new ConcurrentHashMap<>();
        this.m = new ConcurrentHashMap<>();
        this.z = new Date().getTime();
        boolean z = cVar.f11408e > 0;
        this.q = z;
        if (z) {
            this.f10683e = new C1351h("rewardedVideo", cVar, this);
        }
        this.p = new ad(cVar, this);
        this.f10685g = new ConcurrentHashMap<>();
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : list) {
            AbstractAdapter a2 = C1347d.a().a(networkSettings, networkSettings.getRewardedVideoSettings(), false, false);
            if (a2 != null) {
                J j = new J(str, str2, networkSettings, this, oVar.f11303e, a2, this.i);
                String k = j.k();
                this.f10685g.put(k, j);
                arrayList.add(k);
            }
        }
        this.f10682d = new C1352i(arrayList, cVar.f11409f);
        this.f10686h = new com.ironsource.mediationsdk.utils.n(new ArrayList(this.f10685g.values()));
        a(IronSourceConstants.RV_MANAGER_INIT_ENDED, a.AnonymousClass1.a(new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - time)}}));
        this.B = new C1367x(oVar.i, this);
        a(cVar.i);
    }

    private String a(com.ironsource.mediationsdk.server.b bVar) {
        J j = this.f10685g.get(bVar.a());
        return (j != null ? Integer.toString(j.i()) : TextUtils.isEmpty(bVar.b()) ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "2") + bVar.a();
    }

    private void a(int i, Map<String, Object> map, boolean z, boolean z2) {
        HashMap hashMap = new HashMap();
        hashMap.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        hashMap.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 2);
        if (z2 && !TextUtils.isEmpty(this.f10681c.f10740b)) {
            hashMap.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f10681c.f10740b);
        }
        JSONObject jSONObject = this.o;
        if (jSONObject != null && jSONObject.length() > 0) {
            hashMap.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.o);
        }
        if (z && !TextUtils.isEmpty(this.v)) {
            hashMap.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.v);
        }
        if (b(i)) {
            com.ironsource.mediationsdk.a.h.e();
            com.ironsource.mediationsdk.a.h.a(hashMap, this.s, this.r);
        }
        hashMap.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(this.i));
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    hashMap.putAll(map);
                }
            } catch (Exception e2) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager: RV sendMediationEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(hashMap)));
    }

    private void a(long j) {
        if (this.f10686h.a()) {
            a("all smashes are capped");
            b(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.TROUBLESHOOTING_MEDIATION_TCS_CALCULATED)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "all smashes are capped"}}));
            e();
            return;
        }
        a(IronSource.AD_UNIT.REWARDED_VIDEO);
        if (this.q) {
            if (!this.m.isEmpty()) {
                this.f10682d.a(this.m);
                this.m.clear();
            }
            new Timer().schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.I.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    final I i = I.this;
                    synchronized (i.k) {
                        if (i.j != a.RV_STATE_AUCTION_IN_PROGRESS) {
                            i.a(a.RV_STATE_AUCTION_IN_PROGRESS);
                            AsyncTask.execute(new Runnable() { // from class: com.ironsource.mediationsdk.I.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StringBuilder sb;
                                    I.a("makeAuction()");
                                    I.this.f10684f = new Date().getTime();
                                    HashMap hashMap = new HashMap();
                                    ArrayList arrayList = new ArrayList();
                                    StringBuilder sb2 = new StringBuilder();
                                    for (J j2 : I.this.f10685g.values()) {
                                        if (!I.this.f10686h.b(j2) && I.this.f10681c.b(j2)) {
                                            if (j2.h()) {
                                                Map<String, Object> a2 = j2.a();
                                                if (a2 != null) {
                                                    hashMap.put(j2.k(), a2);
                                                    sb = new StringBuilder();
                                                }
                                            } else {
                                                arrayList.add(j2.k());
                                                sb = new StringBuilder();
                                            }
                                            sb2.append(sb.append(j2.i()).append(j2.k()).append(",").toString());
                                        }
                                    }
                                    if (hashMap.keySet().size() == 0 && arrayList.size() == 0) {
                                        I.this.b(IronSourceConstants.RV_AUCTION_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}, new Object[]{"duration", 0}}));
                                        I.a("makeAuction() failed - No candidates available for auctioning");
                                        I.this.e();
                                        return;
                                    }
                                    I.a("makeAuction() - request waterfall is: " + ((Object) sb2));
                                    I.this.a(1000);
                                    I.this.a(IronSourceConstants.RV_AUCTION_REQUEST);
                                    I.this.a(IronSourceConstants.RV_AUCTION_REQUEST_WATERFALL, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb2.toString()}}));
                                    I.this.f10683e.a(ContextProvider.getInstance().getApplicationContext(), hashMap, arrayList, I.this.f10682d, I.this.i, I.this.f11311b);
                                }
                            });
                        }
                    }
                }
            }, j);
            return;
        }
        a("auction fallback flow starting");
        f();
        if (!this.f10681c.a().isEmpty()) {
            a(1000);
            h();
            return;
        }
        a("loadSmashes -  waterfall is empty");
        b(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 80004}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "waterfall is empty"}}));
        e();
    }

    private static void a(J j, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "LWSProgRvManager: " + (j.k() + " : " + str), 0);
    }

    static void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager: " + str, 0);
    }

    private void a(List<com.ironsource.mediationsdk.server.b> list, String str, JSONObject jSONObject) {
        this.l.clear();
        this.m.clear();
        CopyOnWriteArrayList<J> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        StringBuilder sb = new StringBuilder();
        for (com.ironsource.mediationsdk.server.b bVar : list) {
            sb.append(a(bVar) + ",");
            J j = this.f10685g.get(bVar.a());
            if (j != null) {
                AbstractAdapter a2 = C1347d.a().a(j.f10872d.f11235a);
                if (a2 != null) {
                    J j2 = new J(j, this, a2, this.i, str, jSONObject, this.s, this.r);
                    j2.f10873e = true;
                    copyOnWriteArrayList.add(j2);
                    this.l.put(j2.k(), bVar);
                    this.m.put(bVar.a(), C1352i.a.ISAuctionPerformanceDidntAttemptToLoad);
                }
            } else {
                a("updateWaterfall() - could not find matching smash for auction response item " + bVar.a());
            }
        }
        this.f10681c.a(copyOnWriteArrayList, str);
        if (this.f10681c.b()) {
            b(IronSourceConstants.TROUBLESHOOTING_RV_WATERFALL_OVERHEAD, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "waterfalls hold too many with size=" + this.f10681c.f10739a.size()}}));
        }
        a("updateWaterfall() - next waterfall is " + sb.toString());
        if (sb.length() == 0) {
            a("Updated waterfall is empty");
        }
        b(IronSourceConstants.RV_AUCTION_RESPONSE_WATERFALL, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb.toString()}}));
    }

    private void a(boolean z, Map<String, Object> map) {
        synchronized (this.k) {
            Boolean bool = this.A;
            if (bool == null || bool.booleanValue() != z) {
                this.A = Boolean.valueOf(z);
                long time = new Date().getTime() - this.z;
                this.z = new Date().getTime();
                if (map == null) {
                    map = new HashMap<>();
                }
                map.put("duration", Long.valueOf(time));
                b(z ? IronSourceConstants.RV_CALLBACK_AVAILABILITY_TRUE : IronSourceConstants.RV_CALLBACK_AVAILABILITY_FALSE, map);
                aa.a().a(z);
            }
        }
    }

    private static void b(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager: " + str, 3);
    }

    private static boolean b(int i) {
        return i == 1003 || i == 1302 || i == 1301 || i == 1303;
    }

    private void c(int i) {
        a(i, null, true, true);
    }

    private void c(int i, Map<String, Object> map) {
        a(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, map, true, true);
    }

    private static void c(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, str, 3);
    }

    private void f() {
        a(g(), "fallback_" + System.currentTimeMillis(), this.o);
    }

    private List<com.ironsource.mediationsdk.server.b> g() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (J j : this.f10685g.values()) {
            if (!j.h() && !this.f10686h.b(j) && this.f10681c.b(j)) {
                copyOnWriteArrayList.add(new com.ironsource.mediationsdk.server.b(j.k()));
            }
        }
        return copyOnWriteArrayList;
    }

    private void g(J j) {
        String b2 = this.l.get(j.k()).b();
        j.b(b2);
        j.a(b2);
    }

    private void h() {
        if (this.f10681c.a().isEmpty()) {
            a("loadSmashes -  waterfall is empty");
            b(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 80004}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "waterfall is empty"}}));
            e();
            return;
        }
        a(a.RV_STATE_LOADING_SMASHES);
        int i = 0;
        for (int i2 = 0; i2 < this.f10681c.a().size() && i < this.w; i2++) {
            J j = this.f10681c.a().get(i2);
            if (j.f10873e) {
                if (this.x && j.h()) {
                    if (i != 0) {
                        String str = "Advanced Loading: Won't start loading bidder " + j.k() + " as a non bidder is being loaded";
                        a(str);
                        IronSourceUtils.sendAutomationLog(str);
                        return;
                    }
                    String str2 = "Advanced Loading: Starting to load bidder " + j.k() + ". No other instances will be loaded at the same time.";
                    a(str2);
                    IronSourceUtils.sendAutomationLog(str2);
                    g(j);
                    return;
                }
                g(j);
                i++;
            }
        }
    }

    void a(int i) {
        a(i, null, false, false);
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(int i, String str, int i2, String str2, long j) {
        String str3 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        a(str3);
        IronSourceUtils.sendAutomationLog("RV: " + str3);
        this.s = i2;
        this.r = str2;
        this.o = null;
        f();
        b(IronSourceConstants.RV_AUCTION_FAILED, TextUtils.isEmpty(str) ? a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{"duration", Long.valueOf(j)}}) : a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str}, new Object[]{"duration", Long.valueOf(j)}}));
        h();
    }

    void a(int i, Map<String, Object> map) {
        a(i, map, false, false);
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1369z
    public final void a(Context context, boolean z) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "LWSProgRvManager Should Track Network State: " + z, 0);
        try {
            this.u = z;
            if (z) {
                if (this.t == null) {
                    this.t = new NetworkStateReceiver(context, this);
                }
                context.getApplicationContext().registerReceiver(this.t, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } else if (this.t != null) {
                context.getApplicationContext().unregisterReceiver(this.t);
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error("Got an error from receiver with message: " + e2.getMessage());
        }
    }

    void a(a aVar) {
        a("current state=" + this.j + ", new state=" + aVar);
        this.j = aVar;
    }

    @Override // com.ironsource.mediationsdk.K
    public final void a(J j) {
        synchronized (this.k) {
            a(j, "onLoadSuccess mState=" + this.j);
            if (j.f10729b == this.f10681c.f10740b && this.j != a.RV_STATE_AUCTION_IN_PROGRESS) {
                this.m.put(j.k(), C1352i.a.ISAuctionPerformanceLoadedSuccessfully);
                if (this.j == a.RV_STATE_LOADING_SMASHES) {
                    a(true, (Map<String, Object>) null);
                    a(a.RV_STATE_READY_TO_SHOW);
                    b(1003, a.AnonymousClass1.a(new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - this.f10684f)}}));
                    this.B.a(0L);
                    if (this.q) {
                        com.ironsource.mediationsdk.server.b bVar = this.l.get(j.k());
                        if (bVar != null) {
                            C1351h.a(bVar, j.i(), this.n);
                            C1351h c1351h = this.f10683e;
                            CopyOnWriteArrayList<J> a2 = this.f10681c.a();
                            CopyOnWriteArrayList<J> copyOnWriteArrayList = a2;
                            c1351h.a(a2, this.l, j.i(), this.n, bVar);
                        } else {
                            String k = j.k();
                            b("onLoadSuccess winner instance " + k + " missing from waterfall. auctionId: " + j.f10729b + " and the current id is " + this.f10681c.f10740b);
                            b(IronSourceConstants.TROUBLESHOOTING_RV_NOTIFICATIONS_ERROR, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Loaded missing " + a.RV_STATE_LOADING_SMASHES}, new Object[]{IronSourceConstants.EVENTS_EXT1, k}}));
                        }
                    }
                }
                return;
            }
            a("onLoadSuccess was invoked with auctionId: " + j.f10729b + " and the current id is " + this.f10681c.f10740b);
            j.b(IronSourceConstants.RV_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 2}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "onLoadSuccess wrong auction ID " + this.j}});
        }
    }

    @Override // com.ironsource.mediationsdk.K
    public final void a(J j, Placement placement) {
        a(j, "onRewardedVideoAdRewarded");
        aa.a().a(placement);
    }

    @Override // com.ironsource.mediationsdk.K
    public final void a(IronSourceError ironSourceError, J j) {
        a(j, "onRewardedVideoAdShowFailed error=" + ironSourceError.getErrorMessage());
        this.y = false;
        c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}}));
        aa.a().a(ironSourceError);
        this.m.put(j.k(), C1352i.a.ISAuctionPerformanceFailedToShow);
        if (this.j != a.RV_STATE_READY_TO_SHOW) {
            a(false, (Map<String, Object>) null);
        }
        this.p.c();
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1369z
    public final void a(Placement placement) {
        J j;
        synchronized (this.k) {
            if (placement == null) {
                c("showRewardedVideo error: empty default placement");
                aa.a().a(new IronSourceError(1021, "showRewardedVideo error: empty default placement"));
                a(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1021}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showRewardedVideo error: empty default placement"}}), false, true);
                return;
            }
            this.v = placement.getPlacementName();
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "showRewardedVideo(" + placement + ")", 0);
            c(IronSourceConstants.RV_API_SHOW_CALLED);
            if (this.y) {
                c("showRewardedVideo error: can't show ad while an ad is already showing");
                aa.a().a(new IronSourceError(1022, "showRewardedVideo error: can't show ad while an ad is already showing"));
                c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1022}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showRewardedVideo error: can't show ad while an ad is already showing"}}));
            } else if (this.j != a.RV_STATE_READY_TO_SHOW) {
                c("showRewardedVideo error: show called while no ads are available");
                aa.a().a(new IronSourceError(1023, "showRewardedVideo error: show called while no ads are available"));
                c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1023}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "showRewardedVideo error: show called while no ads are available"}}));
            } else if (com.ironsource.mediationsdk.utils.k.c(ContextProvider.getInstance().getApplicationContext(), this.v)) {
                String str = "showRewardedVideo error: placement " + this.v + " is capped";
                c(str);
                aa.a().a(new IronSourceError(IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT, str));
                c(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str}}));
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                Iterator<J> it = this.f10681c.a().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        j = null;
                        break;
                    }
                    j = it.next();
                    if (j.b()) {
                        this.y = true;
                        j.a(true);
                        a(a.RV_STATE_NOT_LOADED);
                        break;
                    }
                    if (j.o() != null) {
                        stringBuffer.append(j.k() + ":" + j.o() + ",");
                    }
                    j.a(false);
                }
                if (j == null) {
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
                } else if (j != null) {
                    a("showVideo()");
                    this.f10686h.a(j);
                    if (this.f10686h.b(j)) {
                        j.b_();
                        IronSourceUtils.sendAutomationLog(j.k() + " rewarded video is now session capped");
                    }
                    com.ironsource.mediationsdk.utils.k.e(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName());
                    if (com.ironsource.mediationsdk.utils.k.c(ContextProvider.getInstance().getApplicationContext(), placement.getPlacementName())) {
                        c(IronSourceConstants.RV_CAP_PLACEMENT);
                    }
                    this.B.a();
                    j.a(placement);
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(List<com.ironsource.mediationsdk.server.b> list, String str, com.ironsource.mediationsdk.server.b bVar, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        a("makeAuction(): success");
        this.n = bVar;
        this.s = i;
        this.o = jSONObject;
        this.r = "";
        if (!TextUtils.isEmpty(str2)) {
            b(IronSourceConstants.TROUBLESHOOTING_AUCTION_SUCCESSFUL_RECOVERY_ERROR, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str2}}));
        }
        a(jSONObject2, IronSource.AD_UNIT.REWARDED_VIDEO);
        if (this.f11310a.a(IronSource.AD_UNIT.REWARDED_VIDEO)) {
            b(IronSourceConstants.RV_AD_UNIT_CAPPED, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_AUCTION_ID, str}}));
            e();
            return;
        }
        a(list, str, this.o);
        b(IronSourceConstants.RV_AUCTION_SUCCESS, a.AnonymousClass1.a(new Object[][]{new Object[]{"duration", Long.valueOf(j)}}));
        h();
    }

    @Override // com.ironsource.environment.j
    public final void a(boolean z) {
        if (this.u) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Network Availability Changed To: " + z, 0);
            Boolean bool = this.A;
            if (bool == null) {
                return;
            }
            if (!(z && !bool.booleanValue() && a_()) && (z || !this.A.booleanValue())) {
                return;
            }
            a(z, (Map<String, Object>) null);
        }
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1369z
    public final boolean a_() {
        if ((!this.u || IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext())) && this.j == a.RV_STATE_READY_TO_SHOW && !this.y) {
            Iterator<J> it = this.f10681c.a().iterator();
            while (it.hasNext()) {
                if (it.next().b()) {
                    return true;
                }
            }
        }
        return false;
    }

    void b(int i, Map<String, Object> map) {
        a(i, map, false, true);
    }

    @Override // com.ironsource.mediationsdk.K
    public final void b(J j) {
        CopyOnWriteArrayList<J> copyOnWriteArrayList = new CopyOnWriteArrayList();
        synchronized (this.k) {
            a(j, "onLoadError mState=" + this.j);
            if (j.f10729b == this.f10681c.f10740b && this.j != a.RV_STATE_AUCTION_IN_PROGRESS) {
                this.m.put(j.k(), C1352i.a.ISAuctionPerformanceFailedToLoad);
                if (this.j == a.RV_STATE_LOADING_SMASHES || this.j == a.RV_STATE_READY_TO_SHOW) {
                    Iterator<J> it = this.f10681c.a().iterator();
                    boolean z = false;
                    boolean z2 = false;
                    while (it.hasNext()) {
                        J next = it.next();
                        if (next.f10873e) {
                            if (this.x && next.h()) {
                                if (!z && !z2) {
                                    String str = "Advanced Loading: Starting to load bidder " + next.k() + ". No other instances will be loaded at the same time.";
                                    a(str);
                                    IronSourceUtils.sendAutomationLog(str);
                                }
                                String str2 = "Advanced Loading: Won't start loading bidder " + next.k() + " as " + (z ? "a non bidder is being loaded" : "a non bidder was already loaded successfully");
                                a(str2);
                                IronSourceUtils.sendAutomationLog(str2);
                            }
                            if (this.l.get(next.k()) != null) {
                                copyOnWriteArrayList.add(next);
                                if (!this.x || !j.h() || next.h() || copyOnWriteArrayList.size() >= this.w) {
                                    break;
                                }
                                z = true;
                            } else {
                                continue;
                            }
                        } else {
                            if (next.f10728a != J.a.INIT_IN_PROGRESS && next.f10728a != J.a.LOAD_IN_PROGRESS) {
                                if (next.b()) {
                                    z2 = true;
                                }
                            }
                            z = true;
                        }
                    }
                    if (copyOnWriteArrayList.size() == 0 && !z2 && !z) {
                        a("onLoadError(): No other available smashes");
                        if (!this.y) {
                            a(false, (Map<String, Object>) null);
                        }
                        a(a.RV_STATE_NOT_LOADED);
                        this.p.d();
                    }
                    for (J j2 : copyOnWriteArrayList) {
                        g(j2);
                    }
                    return;
                }
                return;
            }
            a("onLoadError was invoked with auctionId:" + j.f10729b + " and the current id is " + this.f10681c.f10740b);
            j.b(IronSourceConstants.RV_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 4}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "loadError wrong auction ID " + this.j}});
        }
    }

    @Override // com.ironsource.mediationsdk.K
    public final void b(J j, Placement placement) {
        a(j, "onRewardedVideoAdClicked");
        aa.a().b(placement);
    }

    @Override // com.ironsource.mediationsdk.K
    public final void c(J j) {
        this.f10681c.a(j);
        this.i++;
        a(j, "onRewardedVideoAdOpened");
        aa.a().b();
        a(false, (Map<String, Object>) null);
        if (this.q) {
            com.ironsource.mediationsdk.server.b bVar = this.l.get(j.k());
            if (bVar != null) {
                C1351h.a(bVar, j.i(), this.n, this.v);
                this.m.put(j.k(), C1352i.a.ISAuctionPerformanceShowedSuccessfully);
                a(bVar, this.v);
            } else {
                String k = j.k();
                b("onRewardedVideoAdOpened showing instance " + k + " missing from waterfall");
                b(IronSourceConstants.TROUBLESHOOTING_RV_NOTIFICATIONS_ERROR, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1011}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Showing missing " + this.j}, new Object[]{IronSourceConstants.EVENTS_EXT1, k}}));
            }
        }
        this.p.a();
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1346c
    public final void c_() {
        a(a.RV_STATE_NOT_LOADED);
        a(false, a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_RV_EXPIRED_ADS)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "loaded ads are expired"}}));
        a(0L);
    }

    @Override // com.ironsource.mediationsdk.ae
    public final void d() {
        a("onLoadTriggered: RV load was triggered in " + this.j + " state");
        a(0L);
    }

    @Override // com.ironsource.mediationsdk.K
    public final void d(J j) {
        a(j, "onRewardedVideoAdClosed, mediation state: " + this.j.name());
        aa.a().c();
        this.y = false;
        boolean z = this.j == a.RV_STATE_READY_TO_SHOW;
        StringBuilder sb = new StringBuilder();
        if (z) {
            Iterator<J> it = this.f10681c.a().iterator();
            while (it.hasNext()) {
                J next = it.next();
                if (next.f10728a == J.a.LOADED) {
                    sb.append(next.k() + ";");
                }
            }
        }
        Object[][] objArr = new Object[1];
        objArr[0] = new Object[]{IronSourceConstants.EVENTS_EXT1, "otherRVAvailable = " + (sb.length() > 0 ? "true|" + ((Object) sb) : "false")};
        j.a(IronSourceConstants.RV_INSTANCE_CLOSED, objArr);
        if (j.equals(this.f10681c.f10741c)) {
            this.f10681c.a(null);
            if (this.j != a.RV_STATE_READY_TO_SHOW) {
                a(false, (Map<String, Object>) null);
            }
        }
    }

    void e() {
        a(a.RV_STATE_NOT_LOADED);
        if (!this.y) {
            a(false, (Map<String, Object>) null);
        }
        this.p.d();
    }

    @Override // com.ironsource.mediationsdk.K
    public final void e(J j) {
        a(j, "onRewardedVideoAdStarted");
        aa.a().d();
    }

    @Override // com.ironsource.mediationsdk.K
    public final void f(J j) {
        a(j, "onRewardedVideoAdEnded");
        aa.a().e();
    }
}
