package com.ironsource.mediationsdk;

import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.NetworkStateReceiver;
import com.ironsource.environment.a;
import com.ironsource.mediationsdk.AbstractC1345b;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class ab extends AbstractC1344a implements com.ironsource.environment.j, InterfaceC1346c, com.ironsource.mediationsdk.sdk.l, com.ironsource.mediationsdk.utils.d {
    com.ironsource.mediationsdk.sdk.i m;
    int o;
    C1367x p;
    private NetworkStateReceiver s;
    private Placement t;
    private final String q = getClass().getSimpleName();
    private Timer u = null;
    private boolean r = false;
    boolean n = false;
    private boolean y = false;
    private boolean w = false;
    private long x = new Date().getTime();
    private List<AbstractC1345b.a> v = Arrays.asList(AbstractC1345b.a.INIT_FAILED, AbstractC1345b.a.CAPPED_PER_SESSION, AbstractC1345b.a.EXHAUSTED, AbstractC1345b.a.CAPPED_PER_DAY);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab() {
        this.f10895a = new com.ironsource.mediationsdk.utils.e("rewarded_video", this);
    }

    private void a(int i) {
        a(i, (Object[][]) null);
    }

    private void a(int i, AbstractC1345b abstractC1345b, Object[][] objArr) {
        JSONObject providerAdditionalData = IronSourceUtils.getProviderAdditionalData(abstractC1345b);
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    providerAdditionalData.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "RewardedVideoManager logProviderEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(i, providerAdditionalData));
    }

    private void a(int i, Object[][] objArr) {
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    mediationAdditionalData.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "RewardedVideoManager logMediationEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        com.ironsource.mediationsdk.a.h.e().b(new com.ironsource.mediationsdk.a.c(i, mediationAdditionalData));
    }

    private synchronized void a(AbstractC1345b abstractC1345b, int i) {
        com.ironsource.mediationsdk.utils.k.c(ContextProvider.getInstance().getCurrentActiveActivity(), this.t);
        if (com.ironsource.mediationsdk.utils.k.c(ContextProvider.getInstance().getCurrentActiveActivity(), p())) {
            a(IronSourceConstants.RV_CAP_PLACEMENT, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p()}});
        }
        this.f10895a.a(abstractC1345b);
        if (this.t != null) {
            if (this.n) {
                a(((ac) abstractC1345b).v, true, this.t.getPlacementId());
                int placementId = this.t.getPlacementId();
                for (int i2 = 0; i2 < i && i2 < this.f10897c.size(); i2++) {
                    if (!this.v.contains(this.f10897c.get(i2).f11074a)) {
                        a(((ac) this.f10897c.get(i2)).v, false, placementId);
                    }
                }
            }
            String p = p();
            a(IronSourceConstants.RV_INSTANCE_SHOW_CHANCE, abstractC1345b, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p}, new Object[]{"status", "true"}});
            for (int i3 = 0; i3 < this.f10897c.size() && i3 < i; i3++) {
                AbstractC1345b abstractC1345b2 = this.f10897c.get(i3);
                if (abstractC1345b2.f11074a == AbstractC1345b.a.NOT_AVAILABLE || abstractC1345b2.f11074a == AbstractC1345b.a.NEEDS_RELOAD) {
                    a(IronSourceConstants.RV_INSTANCE_SHOW_CHANCE, abstractC1345b2, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p}, new Object[]{"status", "false"}});
                }
            }
        } else {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "mCurrentPlacement is null", 3);
        }
        a(IronSourceConstants.RV_INSTANCE_SHOW, abstractC1345b, this.t != null ? new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p()}} : null);
        this.y = true;
        this.p.a();
        ((ac) abstractC1345b).w = com.ironsource.mediationsdk.utils.o.a().b(1);
        ac acVar = (ac) abstractC1345b;
        if (acVar.f11075b != null) {
            acVar.q.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":showRewardedVideo()", 1);
            acVar.d();
            acVar.f11075b.showRewardedVideo(acVar.r, acVar);
        }
    }

    private synchronized void a(String str, final boolean z, final int i) {
        final String str2;
        try {
            str2 = ("" + str) + "&sdkVersion=" + IronSourceUtils.getSDKVersion();
            Thread thread = new Thread(new Runnable() { // from class: com.ironsource.mediationsdk.server.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    String str3 = str2;
                    boolean z2 = z;
                    try {
                        new JSONObject(HttpFunctions.getStringFromURL(ServerURL.getRequestURL(str3, z2, i)));
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NETWORK, "callRequestURL(reqUrl:" + str3 + ", hit:" + z2 + ")", 1);
                    } catch (Throwable th) {
                        StringBuilder sb = new StringBuilder("callRequestURL(reqUrl:");
                        if (str3 == null) {
                            sb.append("null");
                        } else {
                            sb.append(str3);
                        }
                        sb.append(", hit:").append(z2).append(")");
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NETWORK, sb.toString() + ", e:" + Log.getStackTraceString(th), 0);
                    }
                }
            }, "callAsyncRequestURL");
            thread.setUncaughtExceptionHandler(new com.ironsource.mediationsdk.logger.c());
            thread.start();
        } catch (Throwable th) {
            this.f10902h.logException(IronSourceLogger.IronSourceTag.NETWORK, "reportImpression:(providerURL:" + str2 + ", hit:" + z + ")", th);
        }
    }

    private synchronized void a(Map<String, Object> map) {
        if (this.f10898d != null && !this.k) {
            this.k = true;
            if (h((ac) this.f10898d) == null) {
                this.m.onRewardedVideoAvailabilityChanged(this.j.booleanValue());
            }
            return;
        }
        if (!k()) {
            this.m.a(this.j.booleanValue(), map);
        } else if (a(true, false)) {
            this.m.onRewardedVideoAvailabilityChanged(this.j.booleanValue());
        }
    }

    private synchronized boolean a(boolean z, boolean z2) {
        boolean z3;
        Boolean bool;
        z3 = true;
        if (this.j == null) {
            d();
            if (z) {
                bool = Boolean.TRUE;
            } else {
                if (!k() && h()) {
                    bool = Boolean.FALSE;
                }
                z3 = false;
            }
            this.j = bool;
        } else {
            if (!z || this.j.booleanValue()) {
                if (!z && this.j.booleanValue() && ((!j() || z2) && !k())) {
                    bool = Boolean.FALSE;
                }
                z3 = false;
            } else {
                bool = Boolean.TRUE;
            }
            this.j = bool;
        }
        return z3;
    }

    private void b(boolean z) {
        if (!z && c()) {
            a(1000, (Object[][]) null);
            a(1003, new Object[][]{new Object[]{"duration", 0}});
            this.w = false;
        } else if (i()) {
            a(1000, (Object[][]) null);
            this.w = true;
            this.x = new Date().getTime();
        }
    }

    private AbstractAdapter f() {
        AbstractAdapter abstractAdapter = null;
        int i = 0;
        for (int i2 = 0; i2 < this.f10897c.size() && abstractAdapter == null; i2++) {
            if (this.f10897c.get(i2).f11074a == AbstractC1345b.a.AVAILABLE || this.f10897c.get(i2).f11074a == AbstractC1345b.a.INITIATED) {
                i++;
                if (i >= this.f10896b) {
                    break;
                }
            } else if (this.f10897c.get(i2).f11074a == AbstractC1345b.a.NOT_INITIATED && (abstractAdapter = h((ac) this.f10897c.get(i2))) == null) {
                this.f10897c.get(i2).a(AbstractC1345b.a.INIT_FAILED);
            }
        }
        return abstractAdapter;
    }

    private synchronized AbstractAdapter h(ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.NATIVE, this.q + ":startAdapter(" + acVar.f11077d + ")", 1);
        AbstractAdapter a2 = C1347d.a().a(acVar.f11076c, acVar.f11076c.getRewardedVideoSettings(), false, false);
        if (a2 == null) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.API, acVar.f11077d + " is configured in IronSource's platform, but the adapter is not integrated", 2);
            return null;
        }
        acVar.f11075b = a2;
        acVar.a(AbstractC1345b.a.INITIATED);
        b((AbstractC1345b) acVar);
        a(1001, acVar, (Object[][]) null);
        String str = this.f10901g;
        String str2 = this.f10900f;
        acVar.h();
        if (acVar.f11075b != null) {
            acVar.t.set(true);
            acVar.u = new Date().getTime();
            acVar.f11075b.addRewardedVideoListener(acVar);
            acVar.q.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":initRewardedVideo()", 1);
            acVar.f11075b.initRewardedVideo(str, str2, acVar.r, acVar);
        }
        return a2;
    }

    private synchronized boolean h() {
        int i;
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        i = 0;
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (next.f11074a == AbstractC1345b.a.INIT_FAILED || next.f11074a == AbstractC1345b.a.CAPPED_PER_DAY || next.f11074a == AbstractC1345b.a.CAPPED_PER_SESSION || next.f11074a == AbstractC1345b.a.NOT_AVAILABLE || next.f11074a == AbstractC1345b.a.NEEDS_RELOAD || next.f11074a == AbstractC1345b.a.EXHAUSTED) {
                i++;
            }
        }
        return this.f10897c.size() == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000d A[Catch: all -> 0x003d, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x0007, B:6:0x000d, B:8:0x0019, B:10:0x001f, B:12:0x0025, B:14:0x002b, B:16:0x0031), top: B:27:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean i() {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.concurrent.CopyOnWriteArrayList<com.ironsource.mediationsdk.b> r0 = r4.f10897c     // Catch: java.lang.Throwable -> L3d
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L3d
        L7:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L3d
            if (r1 == 0) goto L3a
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L3d
            com.ironsource.mediationsdk.b r1 = (com.ironsource.mediationsdk.AbstractC1345b) r1     // Catch: java.lang.Throwable -> L3d
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a     // Catch: java.lang.Throwable -> L3d
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.NOT_AVAILABLE     // Catch: java.lang.Throwable -> L3d
            if (r2 == r3) goto L37
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a     // Catch: java.lang.Throwable -> L3d
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.NEEDS_RELOAD     // Catch: java.lang.Throwable -> L3d
            if (r2 == r3) goto L37
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a     // Catch: java.lang.Throwable -> L3d
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.AVAILABLE     // Catch: java.lang.Throwable -> L3d
            if (r2 == r3) goto L37
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a     // Catch: java.lang.Throwable -> L3d
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.INITIATED     // Catch: java.lang.Throwable -> L3d
            if (r2 == r3) goto L37
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a     // Catch: java.lang.Throwable -> L3d
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.INIT_PENDING     // Catch: java.lang.Throwable -> L3d
            if (r2 == r3) goto L37
            com.ironsource.mediationsdk.b$a r1 = r1.f11074a     // Catch: java.lang.Throwable -> L3d
            com.ironsource.mediationsdk.b$a r2 = com.ironsource.mediationsdk.AbstractC1345b.a.LOAD_PENDING     // Catch: java.lang.Throwable -> L3d
            if (r1 != r2) goto L7
        L37:
            monitor-exit(r4)
            r0 = 1
            return r0
        L3a:
            monitor-exit(r4)
            r0 = 0
            return r0
        L3d:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.ab.i():boolean");
    }

    private synchronized boolean j() {
        boolean z;
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().f11074a == AbstractC1345b.a.AVAILABLE) {
                z = true;
                break;
            }
        }
        return z;
    }

    private synchronized boolean k() {
        if (this.f10898d != null) {
            return ((ac) this.f10898d).o();
        }
        return false;
    }

    private synchronized void l() {
        if (f() != null) {
            return;
        }
        AbstractC1345b.a[] aVarArr = {AbstractC1345b.a.NOT_AVAILABLE, AbstractC1345b.a.NEEDS_RELOAD, AbstractC1345b.a.CAPPED_PER_SESSION, AbstractC1345b.a.CAPPED_PER_DAY};
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        int i = 0;
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            for (int i2 = 0; i2 < 4; i2++) {
                if (next.f11074a == aVarArr[i2]) {
                    i++;
                }
            }
        }
        if (i < this.f10897c.size()) {
            m();
            return;
        }
        if (a(false, false)) {
            a((Map<String, Object>) null);
        }
    }

    private synchronized void m() {
        if (n()) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Reset Iteration", 0);
            Iterator<AbstractC1345b> it = this.f10897c.iterator();
            boolean z = false;
            while (it.hasNext()) {
                AbstractC1345b next = it.next();
                if (next.f11074a == AbstractC1345b.a.EXHAUSTED) {
                    next.g();
                }
                if (next.f11074a == AbstractC1345b.a.AVAILABLE) {
                    z = true;
                }
            }
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "End of Reset Iteration", 0);
            if (a(z, false)) {
                this.m.onRewardedVideoAvailabilityChanged(this.j.booleanValue());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000d A[Catch: all -> 0x002b, TryCatch #0 {, blocks: (B:3:0x0001, B:4:0x0007, B:6:0x000d, B:8:0x0019, B:10:0x001f), top: B:21:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean n() {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.concurrent.CopyOnWriteArrayList<com.ironsource.mediationsdk.b> r0 = r4.f10897c     // Catch: java.lang.Throwable -> L2b
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L2b
        L7:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L28
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L2b
            com.ironsource.mediationsdk.b r1 = (com.ironsource.mediationsdk.AbstractC1345b) r1     // Catch: java.lang.Throwable -> L2b
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a     // Catch: java.lang.Throwable -> L2b
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.NOT_INITIATED     // Catch: java.lang.Throwable -> L2b
            if (r2 == r3) goto L25
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a     // Catch: java.lang.Throwable -> L2b
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.INITIATED     // Catch: java.lang.Throwable -> L2b
            if (r2 == r3) goto L25
            com.ironsource.mediationsdk.b$a r1 = r1.f11074a     // Catch: java.lang.Throwable -> L2b
            com.ironsource.mediationsdk.b$a r2 = com.ironsource.mediationsdk.AbstractC1345b.a.AVAILABLE     // Catch: java.lang.Throwable -> L2b
            if (r1 != r2) goto L7
        L25:
            monitor-exit(r4)
            r0 = 0
            return r0
        L28:
            monitor-exit(r4)
            r0 = 1
            return r0
        L2b:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.ab.n():boolean");
    }

    private void o() {
        for (int i = 0; i < this.f10897c.size(); i++) {
            String providerTypeForReflection = this.f10897c.get(i).f11076c.getProviderTypeForReflection();
            if (providerTypeForReflection.equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME) || providerTypeForReflection.equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME)) {
                C1347d.a().a(this.f10897c.get(i).f11076c, this.f10897c.get(i).f11076c.getRewardedVideoSettings(), false, false);
                return;
            }
        }
    }

    private String p() {
        Placement placement = this.t;
        return placement == null ? "" : placement.getPlacementName();
    }

    private void q() {
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        long j = Long.MAX_VALUE;
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (next.f11074a == AbstractC1345b.a.AVAILABLE && next.l() != null && next.l().longValue() < j) {
                j = next.l().longValue();
            }
        }
        if (j != Long.MAX_VALUE) {
            this.p.a(System.currentTimeMillis() - j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.ironsource.mediationsdk.AbstractC1344a
    public final void a(Context context, boolean z) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, this.q + " Should Track Network State: " + z, 0);
        try {
            this.i = z;
            if (this.i) {
                if (this.s == null) {
                    this.s = new NetworkStateReceiver(context, this);
                }
                context.getApplicationContext().registerReceiver(this.s, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } else if (this.s != null) {
                context.getApplicationContext().unregisterReceiver(this.s);
            }
        } catch (Exception e2) {
            IronLog.INTERNAL.error("Got an error from receiver with message: " + e2.getMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.l
    public final void a(ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":onRewardedVideoAdOpened()", 1);
        a(1005, acVar, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p()}, new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(acVar.w)}});
        this.m.onRewardedVideoAdOpened();
    }

    @Override // com.ironsource.mediationsdk.sdk.l
    public final void a(IronSourceError ironSourceError, ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":onRewardedVideoAdShowFailed(" + ironSourceError + ")", 1);
        this.y = false;
        a(IronSourceConstants.RV_INSTANCE_SHOW_FAILED, acVar, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p()}, new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(acVar.w)}});
        b(false);
        this.m.onRewardedVideoAdShowFailed(ironSourceError);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Placement placement) {
        this.t = placement;
        this.m.f11341f = placement.getPlacementName();
    }

    public final synchronized void a(String str) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.API, this.q + ":showRewardedVideo(placementName: " + str + ")", 1);
        this.m.f11341f = str;
        a(IronSourceConstants.RV_API_SHOW_CALLED, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, str}});
        if (this.y) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.API, "showRewardedVideo error: can't show ad while an ad is already showing", 3);
            this.m.onRewardedVideoAdShowFailed(new IronSourceError(1022, "showRewardedVideo error: can't show ad while an ad is already showing"));
        } else if (this.i && !IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getCurrentActiveActivity())) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.API, "showRewardedVideo error: can't show ad when there's no internet connection", 3);
            this.m.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoInternetConnectionShowFailError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < this.f10897c.size(); i++) {
                AbstractC1345b abstractC1345b = this.f10897c.get(i);
                this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "showRewardedVideo, iterating on: " + abstractC1345b.f11077d + ", Status: " + abstractC1345b.f11074a, 0);
                if (abstractC1345b.f11074a == AbstractC1345b.a.AVAILABLE) {
                    if (((ac) abstractC1345b).o()) {
                        a(abstractC1345b, i);
                        if (this.l && !abstractC1345b.equals(this.f10899e)) {
                            b();
                        }
                        if (abstractC1345b.b()) {
                            abstractC1345b.a(AbstractC1345b.a.CAPPED_PER_SESSION);
                            a(IronSourceConstants.RV_CAP_SESSION, abstractC1345b, (Object[][]) null);
                            l();
                            return;
                        } else if (this.f10895a.c(abstractC1345b)) {
                            abstractC1345b.a(AbstractC1345b.a.CAPPED_PER_DAY);
                            a(IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, abstractC1345b, new Object[][]{new Object[]{"status", "true"}});
                            l();
                            return;
                        } else {
                            if (abstractC1345b.a()) {
                                f();
                                m();
                            }
                            return;
                        }
                    }
                    if (abstractC1345b.m() != null) {
                        stringBuffer.append(abstractC1345b.f11077d + ":" + abstractC1345b.m() + ",");
                    }
                    a(false, (ac) abstractC1345b);
                    this.f10902h.logException(IronSourceLogger.IronSourceTag.INTERNAL, abstractC1345b.f11077d + " Failed to show video", new Exception("FailedToShowVideoException"));
                }
            }
            if (k()) {
                a(this.f10898d, this.f10897c.size());
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put(IronSourceConstants.EVENTS_EXT1, stringBuffer.toString());
            this.m.a(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT), hashMap);
        }
    }

    public final synchronized void a(String str, String str2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.API, this.q + ":initRewardedVideo(appKey: " + str + ", userId: " + str2 + ")", 1);
        long time = new Date().getTime();
        a(IronSourceConstants.RV_MANAGER_INIT_STARTED);
        this.f10901g = str;
        this.f10900f = str2;
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        int i = 0;
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (this.f10895a.b(next)) {
                a(IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, next, new Object[][]{new Object[]{"status", "false"}});
            }
            if (this.f10895a.c(next)) {
                next.a(AbstractC1345b.a.CAPPED_PER_DAY);
                i++;
            }
        }
        if (i == this.f10897c.size()) {
            this.m.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        a(1000);
        this.m.f11341f = null;
        this.w = true;
        this.x = new Date().getTime();
        a(IronSourceConstants.RV_MANAGER_INIT_ENDED, new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - time)}});
        o();
        for (int i2 = 0; i2 < this.f10896b && i2 < this.f10897c.size() && f() != null; i2++) {
        }
    }

    @Override // com.ironsource.environment.j
    public final void a(boolean z) {
        Boolean bool;
        if (this.i) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Network Availability Changed To: " + z, 0);
            if (this.j == null) {
                return;
            }
            if (z && !this.j.booleanValue() && j()) {
                bool = Boolean.TRUE;
            } else if (z || !this.j.booleanValue()) {
                return;
            } else {
                bool = Boolean.FALSE;
            }
            this.j = bool;
            this.r = !z;
            this.m.onRewardedVideoAvailabilityChanged(z);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.l
    public final synchronized void a(boolean z, ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ": onRewardedVideoAvailabilityChanged(available:" + z + ")", 1);
        if (this.r) {
            return;
        }
        if (z && this.w) {
            this.w = false;
            a(1003, new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - this.x)}});
            q();
        }
        if (acVar.equals(this.f10898d)) {
            if (a(z, false)) {
                this.m.onRewardedVideoAvailabilityChanged(this.j.booleanValue());
            }
            return;
        }
        if (acVar.equals(this.f10899e)) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + " is a premium adapter, canShowPremium: " + a(), 1);
            if (!a()) {
                acVar.a(AbstractC1345b.a.CAPPED_PER_SESSION);
                if (a(false, false)) {
                    this.m.onRewardedVideoAvailabilityChanged(this.j.booleanValue());
                }
                return;
            }
        }
        if (!this.f10895a.c(acVar)) {
            if (!z || !acVar.c()) {
                if (a(false, false)) {
                    a((Map<String, Object>) null);
                }
                f();
                m();
            } else if (a(true, false)) {
                this.m.onRewardedVideoAvailabilityChanged(this.j.booleanValue());
            }
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractC1344a
    protected final synchronized void b() {
        super.b();
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (next.equals(this.f10899e)) {
                next.a(AbstractC1345b.a.CAPPED_PER_SESSION);
                f();
                return;
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.l
    public final void b(ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":onRewardedVideoAdClosed()", 1);
        this.y = false;
        StringBuilder sb = new StringBuilder();
        try {
            Iterator<AbstractC1345b> it = this.f10897c.iterator();
            while (it.hasNext()) {
                AbstractC1345b next = it.next();
                if (((ac) next).o()) {
                    sb.append(next.f11077d + ";");
                }
            }
        } catch (Throwable unused) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Failed to check RV availability", 0);
        }
        Object[][] objArr = new Object[3];
        objArr[0] = new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p()};
        objArr[1] = new Object[]{IronSourceConstants.EVENTS_EXT1, "otherRVAvailable = " + (sb.length() > 0 ? "true|" + ((Object) sb) : "false")};
        objArr[2] = new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(acVar.w)};
        a(IronSourceConstants.RV_INSTANCE_CLOSED, acVar, objArr);
        com.ironsource.mediationsdk.utils.o.a().a(1);
        if (!acVar.b() && !this.f10895a.c(acVar)) {
            a(1001, acVar, (Object[][]) null);
        }
        b(false);
        this.m.onRewardedVideoAdClosed();
        q();
        Iterator<AbstractC1345b> it2 = this.f10897c.iterator();
        while (it2.hasNext()) {
            AbstractC1345b next2 = it2.next();
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Fetch on ad closed, iterating on: " + next2.f11077d + ", Status: " + next2.f11074a, 0);
            if (next2.f11074a == AbstractC1345b.a.NOT_AVAILABLE || next2.f11074a == AbstractC1345b.a.NEEDS_RELOAD) {
                try {
                    if (!next2.f11077d.equals(acVar.f11077d)) {
                        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, next2.f11077d + ":reload smash", 1);
                        ((ac) next2).n();
                        a(1001, next2, (Object[][]) null);
                    }
                } catch (Throwable th) {
                    this.f10902h.log(IronSourceLogger.IronSourceTag.NATIVE, next2.f11077d + " Failed to call fetchVideo(), " + th.getLocalizedMessage(), 1);
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.l
    public final void c(ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":onRewardedVideoAdStarted()", 1);
        a(IronSourceConstants.RV_INSTANCE_STARTED, acVar, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p()}, new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(acVar.w)}});
        this.m.onRewardedVideoAdStarted();
    }

    public final synchronized boolean c() {
        this.f10902h.log(IronSourceLogger.IronSourceTag.API, this.q + ":isRewardedVideoAvailable()", 1);
        if (!this.i || IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getCurrentActiveActivity())) {
            Iterator<AbstractC1345b> it = this.f10897c.iterator();
            while (it.hasNext()) {
                AbstractC1345b next = it.next();
                if (next.c() && ((ac) next).o()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.ironsource.mediationsdk.InterfaceC1346c
    public final void c_() {
        if (!IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getApplicationContext()) || this.j == null) {
            IronLog.INTERNAL.info("while reloading mediation due to expiration, internet loss occurred");
            a(IronSourceConstants.TROUBLESHOOTING_RV_TRADITIONAL_RELOAD_FAILED_INTERNET_LOSS, (Object[][]) null);
            return;
        }
        if (a(false, true)) {
            a(a.AnonymousClass1.a(new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceError.ERROR_RV_EXPIRED_ADS)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "loaded ads are expired"}}));
        }
        b(true);
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (next.f11074a == AbstractC1345b.a.AVAILABLE || next.f11074a == AbstractC1345b.a.NOT_AVAILABLE) {
                next.a(AbstractC1345b.a.NEEDS_RELOAD);
            }
        }
        Iterator<AbstractC1345b> it2 = this.f10897c.iterator();
        while (it2.hasNext()) {
            AbstractC1345b next2 = it2.next();
            if (next2.f11074a == AbstractC1345b.a.NEEDS_RELOAD) {
                try {
                    IronLog.INTERNAL.info(next2.f11077d + ":reload smash");
                    a(1001, next2, (Object[][]) null);
                    ((ac) next2).n();
                } catch (Throwable th) {
                    IronLog.INTERNAL.error(next2.f11077d + " Failed to call fetchVideo(), " + th.getLocalizedMessage());
                }
            }
        }
    }

    void d() {
        if (this.o <= 0) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "load interval is not set, ignoring", 1);
            return;
        }
        Timer timer = this.u;
        if (timer != null) {
            timer.cancel();
        }
        Timer timer2 = new Timer();
        this.u = timer2;
        timer2.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.ab.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                cancel();
                ab.this.e();
                ab.this.d();
            }
        }, this.o * 1000);
    }

    @Override // com.ironsource.mediationsdk.sdk.l
    public final void d(ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":onRewardedVideoAdEnded()", 1);
        a(IronSourceConstants.RV_INSTANCE_ENDED, acVar, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p()}, new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(acVar.w)}});
        this.m.onRewardedVideoAdEnded();
    }

    synchronized void e() {
        if (IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getCurrentActiveActivity()) && this.j != null) {
            if (!this.j.booleanValue()) {
                a(102, (Object[][]) null);
                a(1000, (Object[][]) null);
                this.w = true;
                Iterator<AbstractC1345b> it = this.f10897c.iterator();
                while (it.hasNext()) {
                    AbstractC1345b next = it.next();
                    if (next.f11074a == AbstractC1345b.a.NOT_AVAILABLE) {
                        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "Fetch from timer: " + next.f11077d + ":reload smash", 1);
                        a(1001, next, (Object[][]) null);
                        ((ac) next).n();
                    }
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.l
    public final void e(ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":onRewardedVideoAdRewarded()", 1);
        if (this.t == null) {
            this.t = H.a().i.f11449c.f11254a.a();
        }
        JSONObject providerAdditionalData = IronSourceUtils.getProviderAdditionalData(acVar);
        try {
            providerAdditionalData.put(IronSourceConstants.KEY_SESSION_DEPTH, acVar.w);
            if (this.t != null) {
                providerAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, p());
                providerAdditionalData.put(IronSourceConstants.EVENTS_REWARD_NAME, this.t.getRewardName());
                providerAdditionalData.put(IronSourceConstants.EVENTS_REWARD_AMOUNT, this.t.getRewardAmount());
            } else {
                this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "mCurrentPlacement is null", 3);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.ironsource.mediationsdk.a.c cVar = new com.ironsource.mediationsdk.a.c(1010, providerAdditionalData);
        if (!TextUtils.isEmpty(this.f10901g)) {
            cVar.a(IronSourceConstants.EVENTS_TRANS_ID, IronSourceUtils.getTransId(cVar.b(), acVar.j()));
            if (!TextUtils.isEmpty(H.a().m)) {
                cVar.a(IronSourceConstants.EVENTS_DYNAMIC_USER_ID, H.a().m);
            }
            Map<String, String> map = H.a().n;
            if (map != null) {
                for (String str : map.keySet()) {
                    cVar.a(ContentMetadata.KEY_CUSTOM_PREFIX + str, map.get(str));
                }
            }
        }
        com.ironsource.mediationsdk.a.h.e().b(cVar);
        Placement placement = this.t;
        if (placement != null) {
            this.m.onRewardedVideoAdRewarded(placement);
        } else {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "mCurrentPlacement is null", 3);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.l
    public final void f(ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":onRewardedVideoAdClicked()", 1);
        if (this.t == null) {
            this.t = H.a().i.f11449c.f11254a.a();
        }
        if (this.t == null) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "mCurrentPlacement is null", 3);
            return;
        }
        a(1006, acVar, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p()}, new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(acVar.w)}});
        this.m.onRewardedVideoAdClicked(this.t);
    }

    @Override // com.ironsource.mediationsdk.utils.d
    public final void g() {
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        boolean z = false;
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (next.f11074a == AbstractC1345b.a.CAPPED_PER_DAY) {
                a(IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, next, new Object[][]{new Object[]{"status", "false"}});
                next.a(AbstractC1345b.a.NOT_AVAILABLE);
                if (((ac) next).o() && next.c()) {
                    next.a(AbstractC1345b.a.AVAILABLE);
                    z = true;
                }
            }
        }
        if (z && a(true, false)) {
            this.m.onRewardedVideoAvailabilityChanged(true);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.l
    public final void g(ac acVar) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, acVar.f11077d + ":onRewardedVideoAdVisible()", 1);
        if (this.t != null) {
            a(IronSourceConstants.RV_INSTANCE_VISIBLE, acVar, new Object[][]{new Object[]{IronSourceConstants.EVENTS_PLACEMENT_NAME, p()}, new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(acVar.w)}});
        } else {
            this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "mCurrentPlacement is null", 3);
        }
    }
}
