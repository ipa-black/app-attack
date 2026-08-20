package com.ironsource.mediationsdk;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.C1352i;
import com.ironsource.mediationsdk.C1356m;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.b.b;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class P extends AbstractC1357n implements Q, b.a, InterfaceC1350g {

    /* renamed from: c  reason: collision with root package name */
    com.ironsource.mediationsdk.c.b f10789c;

    /* renamed from: d  reason: collision with root package name */
    com.ironsource.mediationsdk.b.b f10790d;

    /* renamed from: e  reason: collision with root package name */
    IronSourceBannerLayout f10791e;

    /* renamed from: f  reason: collision with root package name */
    com.ironsource.mediationsdk.model.f f10792f;

    /* renamed from: g  reason: collision with root package name */
    R f10793g;

    /* renamed from: h  reason: collision with root package name */
    int f10794h;
    final ConcurrentHashMap<String, R> i;
    C1351h j;
    C1352i k;
    ConcurrentHashMap<String, C1352i.a> l;
    long m;
    private a n;
    private int o;
    private CopyOnWriteArrayList<R> p;
    private String q;
    private JSONObject r;
    private String s;
    private int t;
    private com.ironsource.mediationsdk.server.b u;
    private ConcurrentHashMap<String, com.ironsource.mediationsdk.server.b> v;
    private final Object w;
    private com.ironsource.mediationsdk.utils.f x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum a {
        NONE,
        READY_TO_LOAD,
        STARTED_LOADING,
        FIRST_AUCTION,
        AUCTION,
        LOADING,
        RELOADING,
        LOADED
    }

    public P(List<NetworkSettings> list, com.ironsource.mediationsdk.c.b bVar, HashSet<ImpressionDataListener> hashSet, IronSourceSegment ironSourceSegment) {
        super(hashSet, ironSourceSegment);
        this.n = a.NONE;
        this.s = "";
        this.w = new Object();
        IronLog.INTERNAL.verbose("isAuctionEnabled = " + bVar.c());
        this.f10789c = bVar;
        this.f10790d = new com.ironsource.mediationsdk.b.b(this.f10789c.g());
        this.i = new ConcurrentHashMap<>();
        this.p = new CopyOnWriteArrayList<>();
        this.v = new ConcurrentHashMap<>();
        this.l = new ConcurrentHashMap<>();
        this.f10794h = com.ironsource.mediationsdk.utils.o.a().b(3);
        C1353j.a().f11161a = this.f10789c.e();
        if (this.f10789c.c()) {
            this.j = new C1351h("banner", this.f10789c.h(), this);
        }
        a(list);
        b(list);
        this.m = new Date().getTime();
        a(a.READY_TO_LOAD);
    }

    static /* synthetic */ ISBannerSize a(P p) {
        IronSourceBannerLayout ironSourceBannerLayout = p.f10791e;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.getSize() == null) {
            return null;
        }
        return p.f10791e.getSize().isSmart() ? AdapterUtils.isLargeScreen(ContextProvider.getInstance().getCurrentActiveActivity()) ? ISBannerSize.f10695a : ISBannerSize.BANNER : p.f10791e.getSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Object[][] objArr) {
        a(i, objArr, this.f10794h);
    }

    private void a(R r, com.ironsource.mediationsdk.server.b bVar) {
        C1351h.a(bVar, r.i(), this.u, e());
        a(this.v.get(r.k()), e());
    }

    private void a(List<NetworkSettings> list) {
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : list) {
            arrayList.add(networkSettings.getProviderName());
        }
        this.k = new C1352i(arrayList, this.f10789c.h().f11409f);
    }

    private static void a(JSONObject jSONObject, ISBannerSize iSBannerSize) {
        char c2;
        try {
            String description = iSBannerSize.getDescription();
            switch (description.hashCode()) {
                case -387072689:
                    if (description.equals("RECTANGLE")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 72205083:
                    if (description.equals("LARGE")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 79011241:
                    if (description.equals("SMART")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1951953708:
                    if (description.equals("BANNER")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1999208305:
                    if (description.equals("CUSTOM")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                jSONObject.put("bannerAdSize", 1);
            } else if (c2 == 1) {
                jSONObject.put("bannerAdSize", 2);
            } else if (c2 == 2) {
                jSONObject.put("bannerAdSize", 3);
            } else if (c2 == 3) {
                jSONObject.put("bannerAdSize", 5);
            } else if (c2 == 4) {
                jSONObject.put("bannerAdSize", 6);
                jSONObject.put("custom_banner_size", iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight());
            }
            if (iSBannerSize.isAdaptive()) {
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, jSONObject.has(IronSourceConstants.EVENTS_EXT1) ? jSONObject.optString(IronSourceConstants.EVENTS_EXT1) + " , Adaptive=true" : "Adaptive=true");
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error(Log.getStackTraceString(e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        IronLog.INTERNAL.verbose("current state = " + this.n);
        if (!a(a.STARTED_LOADING, this.f10789c.c() ? z ? a.AUCTION : a.FIRST_AUCTION : z ? a.RELOADING : a.LOADING)) {
            IronLog.INTERNAL.error("wrong state - " + this.n);
            return;
        }
        this.x = new com.ironsource.mediationsdk.utils.f();
        this.q = "";
        this.r = null;
        this.o = 0;
        this.f10794h = com.ironsource.mediationsdk.utils.o.a().b(3);
        a(z ? IronSourceConstants.BN_RELOAD : 3001, (Object[][]) null);
        if (this.f10789c.c()) {
            d();
            return;
        }
        g();
        f();
    }

    private void b(List<NetworkSettings> list) {
        for (int i = 0; i < list.size(); i++) {
            NetworkSettings networkSettings = list.get(i);
            AbstractAdapter a2 = C1347d.a().a(networkSettings, networkSettings.getBannerSettings(), false, false);
            if (a2 != null) {
                R r = new R(this.f10789c, this, networkSettings, a2, this.f10794h, n());
                this.i.put(r.k(), r);
            } else {
                IronLog.INTERNAL.verbose(networkSettings.getProviderInstanceName() + " can't load adapter");
            }
        }
    }

    private static boolean b(int i) {
        return i == 3201 || i == 3110 || i == 3111 || i == 3116 || i == 3119 || i == 3112 || i == 3115 || i == 3501 || i == 3502 || i == 3506;
    }

    private String c(List<com.ironsource.mediationsdk.server.b> list) {
        int i;
        int i2;
        IronLog.INTERNAL.verbose("waterfall.size() = " + list.size());
        this.p.clear();
        this.v.clear();
        this.l.clear();
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (i3 < list.size()) {
            com.ironsource.mediationsdk.server.b bVar = list.get(i3);
            R r = this.i.get(bVar.a());
            if (r != null) {
                AbstractAdapter a2 = C1347d.a().a(r.f10872d.f11235a);
                if (a2 != null) {
                    i = i3;
                    i2 = 1;
                    R r2 = new R(this.f10789c, this, r.f10872d.f11235a, a2, this.f10794h, this.q, this.r, this.t, this.s, n());
                    r2.f10873e = true;
                    this.p.add(r2);
                    this.v.put(r2.k(), bVar);
                    this.l.put(bVar.a(), C1352i.a.ISAuctionPerformanceDidntAttemptToLoad);
                } else {
                    i = i3;
                    i2 = 1;
                }
            } else {
                i = i3;
                i2 = 1;
                IronLog.INTERNAL.error("could not find matching smash for auction response item - item = " + bVar.a());
            }
            R r3 = this.i.get(bVar.a());
            String str = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
            if (r3 == null ? !TextUtils.isEmpty(bVar.b()) : r3.h()) {
                str = "2";
            }
            sb.append(str + bVar.a());
            int i4 = i;
            if (i4 != list.size() - i2) {
                sb.append(",");
            }
            i3 = i4 + 1;
        }
        IronLog.INTERNAL.verbose("updateWaterfall() - next waterfall is " + sb.toString());
        return sb.toString();
    }

    private void f() {
        int i = this.o;
        while (true) {
            String str = null;
            if (i >= this.p.size()) {
                String str2 = this.p.isEmpty() ? "Empty waterfall" : "Mediation No fill";
                IronLog.INTERNAL.verbose("errorReason = ".concat(str2));
                f(null);
                if (a(a.LOADING, a.READY_TO_LOAD)) {
                    a(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 606}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str2}, new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.x))}});
                    C1353j.a().a(this.f10791e, new IronSourceError(606, str2));
                    return;
                } else if (a(a.RELOADING, a.LOADED)) {
                    a(IronSourceConstants.BN_RELOAD_FAILED, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.x))}});
                    this.f10790d.a((b.a) this);
                    return;
                } else {
                    a(a.READY_TO_LOAD);
                    IronLog.INTERNAL.error("wrong state = " + this.n);
                    return;
                }
            }
            R r = this.p.get(i);
            if (r.f10873e) {
                IronLog.INTERNAL.verbose("loading smash - " + r.p());
                this.o = i + 1;
                IronSourceBannerLayout ironSourceBannerLayout = this.f10791e;
                if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
                    return;
                }
                if (r.h()) {
                    str = this.v.get(r.k()).b();
                    r.b(str);
                }
                r.a(this.f10791e.a(), this.f10792f, str);
                return;
            }
            i++;
        }
    }

    private void f(R r) {
        Iterator<R> it = this.p.iterator();
        while (it.hasNext()) {
            R next = it.next();
            if (!next.equals(r)) {
                next.d();
            }
        }
    }

    private void g() {
        List<com.ironsource.mediationsdk.server.b> h2 = h();
        this.q = c();
        c(h2);
    }

    private List<com.ironsource.mediationsdk.server.b> h() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (R r : this.i.values()) {
            if (!r.h() && !com.ironsource.mediationsdk.utils.k.b(ContextProvider.getInstance().getCurrentActiveActivity(), e())) {
                copyOnWriteArrayList.add(new com.ironsource.mediationsdk.server.b(r.k()));
            }
        }
        return copyOnWriteArrayList;
    }

    private boolean i() {
        IronSourceBannerLayout ironSourceBannerLayout = this.f10791e;
        return (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) ? false : true;
    }

    private ISBannerSize j() {
        IronSourceBannerLayout ironSourceBannerLayout = this.f10791e;
        if (ironSourceBannerLayout != null) {
            return ironSourceBannerLayout.getSize();
        }
        return null;
    }

    private boolean k() {
        boolean z;
        synchronized (this.w) {
            z = this.n == a.LOADING || this.n == a.RELOADING;
        }
        return z;
    }

    private boolean l() {
        boolean z;
        synchronized (this.w) {
            z = this.n == a.FIRST_AUCTION || this.n == a.AUCTION;
        }
        return z;
    }

    private boolean m() {
        boolean z;
        synchronized (this.w) {
            z = this.n == a.LOADED;
        }
        return z;
    }

    private boolean n() {
        return this.n == a.RELOADING || this.n == a.AUCTION;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    @Override // com.ironsource.mediationsdk.b.b.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r6 = this;
            com.ironsource.mediationsdk.logger.IronLog r0 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL
            java.lang.String r1 = "checking with IronsourceLifecycleManager if app in foreground"
            r0.verbose(r1)
            com.ironsource.lifecycle.d r0 = com.ironsource.lifecycle.d.a()
            boolean r0 = r0.b()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L8a
            com.ironsource.mediationsdk.IronSourceBannerLayout r0 = r6.f10791e
            if (r0 != 0) goto L20
            com.ironsource.mediationsdk.logger.IronLog r0 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL
            java.lang.String r3 = "banner is null"
        L1b:
            r0.verbose(r3)
            r0 = r2
            goto L57
        L20:
            boolean r0 = r0.isShown()
            if (r0 != 0) goto L2b
            com.ironsource.mediationsdk.logger.IronLog r0 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL
            java.lang.String r3 = "banner or one of its parents are INVISIBLE or GONE"
            goto L1b
        L2b:
            com.ironsource.mediationsdk.IronSourceBannerLayout r0 = r6.f10791e
            boolean r0 = r0.hasWindowFocus()
            if (r0 != 0) goto L38
            com.ironsource.mediationsdk.logger.IronLog r0 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL
            java.lang.String r3 = "banner has no window focus"
            goto L1b
        L38:
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            com.ironsource.mediationsdk.IronSourceBannerLayout r3 = r6.f10791e
            boolean r0 = r3.getGlobalVisibleRect(r0)
            com.ironsource.mediationsdk.logger.IronLog r3 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "visible = "
            r4.<init>(r5)
            java.lang.StringBuilder r4 = r4.append(r0)
            java.lang.String r4 = r4.toString()
            r3.verbose(r4)
        L57:
            if (r0 == 0) goto L87
            com.ironsource.mediationsdk.P$a r0 = com.ironsource.mediationsdk.P.a.LOADED
            com.ironsource.mediationsdk.P$a r3 = com.ironsource.mediationsdk.P.a.STARTED_LOADING
            boolean r0 = r6.a(r0, r3)
            if (r0 == 0) goto L6e
            com.ironsource.mediationsdk.logger.IronLog r0 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL
            java.lang.String r3 = "start loading"
            r0.verbose(r3)
            r6.a(r1)
            goto L84
        L6e:
            com.ironsource.mediationsdk.logger.IronLog r0 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "wrong state = "
            r3.<init>(r4)
            com.ironsource.mediationsdk.P$a r4 = r6.n
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            r0.error(r3)
        L84:
            r0 = 0
            r3 = r2
            goto L8d
        L87:
            java.lang.String r0 = "banner is not visible - start reload timer"
            goto L8c
        L8a:
            java.lang.String r0 = "app in background - start reload timer"
        L8c:
            r3 = r1
        L8d:
            if (r3 == 0) goto Lae
            com.ironsource.mediationsdk.logger.IronLog r3 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL
            r3.verbose(r0)
            java.lang.Object[][] r0 = new java.lang.Object[r1]
            r1 = 614(0x266, float:8.6E-43)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.String r3 = "errorCode"
            java.lang.Object[] r1 = new java.lang.Object[]{r3, r1}
            r0[r2] = r1
            r1 = 3200(0xc80, float:4.484E-42)
            r6.a(r1, r0)
            com.ironsource.mediationsdk.b.b r0 = r6.f10790d
            r0.a(r6)
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.P.a():void");
    }

    void a(int i) {
        a(i, (Object[][]) null);
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(int i, String str, int i2, String str2, long j) {
        String str3 = "Auction failed | moving to fallback waterfall (error " + i + " - " + str + ")";
        IronLog.INTERNAL.verbose(str3);
        IronSourceUtils.sendAutomationLog("BN: " + str3);
        if (!l()) {
            IronLog.INTERNAL.warning("wrong state - mCurrentState = " + this.n);
            return;
        }
        this.s = str2;
        this.t = i2;
        this.r = null;
        g();
        a(IronSourceConstants.BN_AUCTION_FAILED, new Object[][]{new Object[]{"duration", Long.valueOf(j)}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str}});
        a(this.n == a.FIRST_AUCTION ? a.LOADING : a.RELOADING);
        f();
    }

    void a(int i, Object[][] objArr, int i2) {
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false, true, 1);
        try {
            ISBannerSize j = j();
            if (j != null) {
                a(mediationAdditionalData, j);
            }
            if (this.f10792f != null) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, e());
            }
            mediationAdditionalData.put(IronSourceConstants.KEY_SESSION_DEPTH, i2);
            if (!TextUtils.isEmpty(this.q)) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_AUCTION_ID, this.q);
            }
            JSONObject jSONObject = this.r;
            if (jSONObject != null && jSONObject.length() > 0) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.r);
            }
            if (b(i)) {
                mediationAdditionalData.put(IronSourceConstants.AUCTION_TRIALS, this.t);
                if (!TextUtils.isEmpty(this.s)) {
                    mediationAdditionalData.put(IronSourceConstants.AUCTION_FALLBACK, this.s);
                }
            }
            if (objArr != null) {
                for (Object[] objArr2 : objArr) {
                    mediationAdditionalData.put(objArr2[0].toString(), objArr2[1]);
                }
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error(Log.getStackTraceString(e2));
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, mediationAdditionalData));
    }

    public final void a(final IronSourceBannerLayout ironSourceBannerLayout, final com.ironsource.mediationsdk.model.f fVar) {
        String str;
        IronLog.INTERNAL.verbose("");
        a(IronSource.AD_UNIT.BANNER);
        if (!a(a.READY_TO_LOAD, a.STARTED_LOADING)) {
            IronLog.API.error("can't load banner - loadBanner already called and still in progress");
        } else if (C1353j.a().b()) {
            IronLog.INTERNAL.verbose("can't load banner - already has pending invocation");
        } else {
            C1356m.b bVar = new C1356m.b() { // from class: com.ironsource.mediationsdk.P.1
                @Override // com.ironsource.mediationsdk.C1356m.b
                public final void a() {
                    IronLog.INTERNAL.verbose("placement = " + fVar.getPlacementName());
                    P.this.f10791e = ironSourceBannerLayout;
                    P.this.f10792f = fVar;
                    if (!com.ironsource.mediationsdk.utils.k.b(ContextProvider.getInstance().getCurrentActiveActivity(), fVar.getPlacementName())) {
                        P.this.a(false);
                        return;
                    }
                    IronLog.INTERNAL.verbose("placement is capped");
                    C1353j.a().a(ironSourceBannerLayout, new IronSourceError(604, "placement " + fVar.getPlacementName() + " is capped"));
                    P.this.a((int) IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 604}});
                    P.this.a(a.READY_TO_LOAD);
                }

                @Override // com.ironsource.mediationsdk.C1356m.b
                public final void a(String str2) {
                    IronLog.API.error("can't load banner - errorMessage = " + str2);
                }
            };
            if (C1356m.a(ironSourceBannerLayout)) {
                str = null;
            } else {
                str = String.format("can't load banner - %s", ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed");
            }
            if (fVar == null || TextUtils.isEmpty(fVar.getPlacementName())) {
                str = String.format("can't load banner - %s", fVar == null ? "placement is null" : "placement name is empty");
            }
            if (TextUtils.isEmpty(str)) {
                bVar.a();
                return;
            }
            IronLog.INTERNAL.error(str);
            bVar.a(str);
        }
    }

    void a(a aVar) {
        IronLog.INTERNAL.verbose("from '" + this.n + "' to '" + aVar + "'");
        synchronized (this.w) {
            this.n = aVar;
        }
    }

    @Override // com.ironsource.mediationsdk.Q
    public final void a(R r) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(r.p());
        if (i()) {
            this.f10791e.c();
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_CLICK, objArr, r.m());
    }

    @Override // com.ironsource.mediationsdk.Q
    public final void a(R r, View view, FrameLayout.LayoutParams layoutParams) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose("smash = " + r.p());
        if (r.f10811a != this.q) {
            IronLog.INTERNAL.error("invoked with auctionId: " + r.f10811a + " and the current id is " + this.q);
            r.a(IronSourceConstants.TROUBLESHOOTING_BN_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 2}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Wrong auction id " + r.f10811a + " State - " + this.n}, new Object[]{IronSourceConstants.EVENTS_EXT1, r.k()}});
        } else if (!k()) {
            IronLog.INTERNAL.warning("wrong state - mCurrentState = " + this.n);
        } else {
            R r2 = this.f10793g;
            if (r2 != null) {
                r2.d();
            }
            f(r);
            this.f10793g = r;
            IronSourceBannerLayout ironSourceBannerLayout = this.f10791e;
            if (ironSourceBannerLayout != null) {
                ironSourceBannerLayout.a(view, layoutParams);
            }
            this.l.put(r.k(), C1352i.a.ISAuctionPerformanceShowedSuccessfully);
            if (this.f10789c.c()) {
                com.ironsource.mediationsdk.server.b bVar = this.v.get(r.k());
                if (bVar != null) {
                    C1351h.a(bVar, r.i(), this.u);
                    this.j.a(this.p, this.v, r.i(), this.u, bVar);
                    if (!this.f10789c.h().s) {
                        a(r, bVar);
                    }
                } else {
                    String k = r.k();
                    IronLog.INTERNAL.error("onLoadSuccess winner instance " + k + " missing from waterfall. auctionId = " + this.q);
                    a(IronSourceConstants.TROUBLESHOOTING_BN_NOTIFICATIONS_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1010}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Loaded missing"}, new Object[]{IronSourceConstants.EVENTS_EXT1, k}});
                }
            }
            if (this.n == a.LOADING) {
                if (i()) {
                    this.f10791e.a(r.k());
                    objArr = new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.x))}};
                } else {
                    objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed"}, new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.x))}};
                }
                a(IronSourceConstants.BN_CALLBACK_LOAD_SUCCESS, objArr);
            } else {
                IronSourceUtils.sendAutomationLog("bannerReloadSucceeded");
                a(IronSourceConstants.BN_CALLBACK_RELOAD_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.x))}});
            }
            String e2 = e();
            com.ironsource.mediationsdk.utils.k.f(ContextProvider.getInstance().getCurrentActiveActivity(), e2);
            if (com.ironsource.mediationsdk.utils.k.b(ContextProvider.getInstance().getCurrentActiveActivity(), e2)) {
                a(IronSourceConstants.BN_PLACEMENT_CAPPED, (Object[][]) null);
            }
            com.ironsource.mediationsdk.utils.o.a().a(3);
            a(a.LOADED);
            this.f10790d.a((b.a) this);
        }
    }

    @Override // com.ironsource.mediationsdk.Q
    public final void a(IronSourceError ironSourceError, R r) {
        IronLog.INTERNAL.verbose("error = " + ironSourceError);
        if (r.f10811a != this.q) {
            IronLog.INTERNAL.error("invoked with auctionId: " + r.f10811a + " and the current id is " + this.q);
            r.a(IronSourceConstants.TROUBLESHOOTING_BN_MANAGER_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 3}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Wrong auction " + r.f10811a + " State - " + this.n}, new Object[]{IronSourceConstants.EVENTS_EXT1, r.k()}});
        } else if (!k()) {
            IronLog.INTERNAL.warning("wrong state - mCurrentState = " + this.n);
        } else {
            this.l.put(r.k(), C1352i.a.ISAuctionPerformanceFailedToLoad);
            f();
        }
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1350g
    public final void a(List<com.ironsource.mediationsdk.server.b> list, String str, com.ironsource.mediationsdk.server.b bVar, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog.INTERNAL.verbose("auctionId = " + str);
        if (!l()) {
            IronLog.INTERNAL.warning("wrong state - mCurrentState = " + this.n);
            return;
        }
        this.s = "";
        this.q = str;
        this.t = i;
        this.u = bVar;
        this.r = jSONObject;
        if (!TextUtils.isEmpty(str2)) {
            a(IronSourceConstants.TROUBLESHOOTING_AUCTION_SUCCESSFUL_RECOVERY_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(i2)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, str2}});
        }
        a(jSONObject2, IronSource.AD_UNIT.BANNER);
        if (this.f11310a.a(IronSource.AD_UNIT.BANNER)) {
            a(IronSourceConstants.BN_AD_UNIT_CAPPED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_AUCTION_ID, str}});
            a(a.READY_TO_LOAD);
            C1353j.a().a(this.f10791e, new IronSourceError(IronSourceError.ERROR_AD_UNIT_CAPPED, "Ad unit is capped"));
            return;
        }
        a(IronSourceConstants.BN_AUCTION_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
        a(this.n == a.FIRST_AUCTION ? a.LOADING : a.RELOADING);
        a(IronSourceConstants.BN_AUCTION_RESPONSE_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, c(list)}});
        f();
    }

    boolean a(a aVar, a aVar2) {
        boolean z;
        synchronized (this.w) {
            if (this.n == aVar) {
                IronLog.INTERNAL.verbose("set state from '" + this.n + "' to '" + aVar2 + "'");
                this.n = aVar2;
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.ironsource.mediationsdk.Q
    public final void b(R r) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(r.p());
        if (i()) {
            this.f10791e.e();
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_DISMISS_SCREEN, objArr, r.m());
    }

    @Override // com.ironsource.mediationsdk.Q
    public final void c(R r) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(r.p());
        if (i()) {
            this.f10791e.d();
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_PRESENT_SCREEN, objArr, r.m());
    }

    void d() {
        IronLog.INTERNAL.verbose("");
        AsyncTask.execute(new Runnable() { // from class: com.ironsource.mediationsdk.P.3
            @Override // java.lang.Runnable
            public final void run() {
                P p = P.this;
                if (!p.l.isEmpty()) {
                    p.k.a(p.l);
                    p.l.clear();
                }
                final P p2 = P.this;
                long d2 = p2.f10789c.d() - (new Date().getTime() - p2.m);
                if (d2 > 0) {
                    IronLog.INTERNAL.verbose("waiting before auction - timeToWaitBeforeAuction = " + d2);
                    new Timer().schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.P.4
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public final void run() {
                            P.this.d();
                        }
                    }, d2);
                    return;
                }
                P.this.a(IronSourceConstants.BN_AUCTION_REQUEST);
                C1356m.a(P.this.e(), P.this.i, new C1356m.a() { // from class: com.ironsource.mediationsdk.P.3.1
                    @Override // com.ironsource.mediationsdk.C1356m.a
                    public final void a(Map<String, Object> map, List<String> list, StringBuilder sb) {
                        IronLog.INTERNAL.verbose("auction waterfallString = " + ((Object) sb));
                        if (map.size() == 0 && list.size() == 0) {
                            P.this.a((int) IronSourceConstants.BN_AUCTION_FAILED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}, new Object[]{"duration", 0}});
                            if (P.this.a(a.AUCTION, a.LOADED)) {
                                P.this.f10790d.a((b.a) P.this);
                                return;
                            }
                            C1353j.a().a(P.this.f10791e, new IronSourceError(1005, "No candidates available for auctioning"));
                            P.this.a((int) IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1005}});
                            P.this.a(a.READY_TO_LOAD);
                            return;
                        }
                        P.this.a((int) IronSourceConstants.BN_AUCTION_REQUEST_WATERFALL, new Object[][]{new Object[]{IronSourceConstants.EVENTS_EXT1, sb.toString()}});
                        if (P.this.j == null) {
                            IronLog.INTERNAL.error("mAuctionHandler is null");
                            return;
                        }
                        C1351h c1351h = P.this.j;
                        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
                        C1352i c1352i = P.this.k;
                        int i = P.this.f10794h;
                        IronSourceSegment ironSourceSegment = P.this.f11311b;
                        c1351h.f11124a = P.a(P.this);
                        c1351h.a(applicationContext, map, list, c1352i, i, ironSourceSegment);
                    }
                });
            }
        });
    }

    @Override // com.ironsource.mediationsdk.Q
    public final void d(R r) {
        Object[][] objArr;
        IronLog.INTERNAL.verbose(r.p());
        if (i()) {
            this.f10791e.f();
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_LEAVE_APP, objArr, r.m());
    }

    String e() {
        com.ironsource.mediationsdk.model.f fVar = this.f10792f;
        return fVar != null ? fVar.getPlacementName() : "";
    }

    @Override // com.ironsource.mediationsdk.Q
    public final void e(R r) {
        Object[][] objArr;
        int i;
        com.ironsource.mediationsdk.server.b bVar;
        IronLog.INTERNAL.verbose(r.p());
        if (m()) {
            if (this.f10789c.c() && this.f10789c.h().s && (bVar = this.v.get(r.k())) != null) {
                a(r, bVar);
            }
            i = IronSourceConstants.BN_CALLBACK_SHOW;
            objArr = null;
        } else {
            IronLog.INTERNAL.warning("wrong state - mCurrentState = " + this.n);
            objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Wrong State - " + this.n}, new Object[]{IronSourceConstants.EVENTS_EXT1, r.k()}};
            i = IronSourceConstants.TROUBLESHOOTING_BN_MANAGER_UNEXPECTED_STATE;
        }
        a(i, objArr);
    }
}
