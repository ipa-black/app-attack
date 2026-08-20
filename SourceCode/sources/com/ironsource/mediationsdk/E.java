package com.ironsource.mediationsdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.AbstractC1345b;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.M;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.k;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class E extends AbstractC1344a implements com.ironsource.mediationsdk.sdk.h, com.ironsource.mediationsdk.utils.d, com.ironsource.mediationsdk.utils.i {
    com.ironsource.mediationsdk.sdk.i m;
    private boolean r;
    private InterstitialPlacement s;
    private long w;
    private boolean x;
    private final String o = getClass().getName();
    private CopyOnWriteArraySet<String> v = new CopyOnWriteArraySet<>();
    private Map<String, F> u = new ConcurrentHashMap();
    C1359p n = C1359p.a();
    private boolean t = false;
    private boolean q = false;
    private boolean p = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public E() {
        this.f10895a = new com.ironsource.mediationsdk.utils.e("interstitial", this);
        this.x = false;
    }

    private int a(AbstractC1345b.a... aVarArr) {
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        int i = 0;
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            for (AbstractC1345b.a aVar : aVarArr) {
                if (next.f11074a == aVar) {
                    i++;
                }
            }
        }
        return i;
    }

    private void a(int i, AbstractC1345b abstractC1345b, Object[][] objArr) {
        a(i, abstractC1345b, objArr, false);
    }

    private void a(int i, AbstractC1345b abstractC1345b, Object[][] objArr, boolean z) {
        JSONObject providerAdditionalData = IronSourceUtils.getProviderAdditionalData(abstractC1345b);
        if (z) {
            try {
                InterstitialPlacement interstitialPlacement = this.s;
                if (interstitialPlacement != null && !TextUtils.isEmpty(interstitialPlacement.getPlacementName())) {
                    providerAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.s.getPlacementName());
                }
            } catch (Exception e2) {
                this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "InterstitialManager logProviderEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        if (objArr != null) {
            for (Object[] objArr2 : objArr) {
                providerAdditionalData.put(objArr2[0].toString(), objArr2[1]);
            }
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, providerAdditionalData));
    }

    private void a(int i, Object[][] objArr) {
        a(i, objArr, false);
    }

    private void a(int i, Object[][] objArr, boolean z) {
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        if (z) {
            try {
                InterstitialPlacement interstitialPlacement = this.s;
                if (interstitialPlacement != null && !TextUtils.isEmpty(interstitialPlacement.getPlacementName())) {
                    mediationAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, this.s.getPlacementName());
                }
            } catch (Exception e2) {
                this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, "InterstitialManager logMediationEvent " + Log.getStackTraceString(e2), 3);
            }
        }
        if (objArr != null) {
            for (Object[] objArr2 : objArr) {
                mediationAdditionalData.put(objArr2[0].toString(), objArr2[1]);
            }
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, mediationAdditionalData));
    }

    private void b(int i, AbstractC1345b abstractC1345b, Object[][] objArr) {
        a(i, abstractC1345b, objArr, true);
    }

    private void c(AbstractC1345b abstractC1345b) {
        if (abstractC1345b.c()) {
            abstractC1345b.a(AbstractC1345b.a.INITIATED);
            return;
        }
        i();
        h();
    }

    private synchronized AbstractAdapter g(F f2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.NATIVE, this.o + ":startAdapter(" + f2.j() + ")", 1);
        AbstractAdapter a2 = C1347d.a().a(f2.f11076c, f2.f11076c.getInterstitialSettings(), false, false);
        if (a2 == null) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.API, f2.f11077d + " is configured in IronSource's platform, but the adapter is not integrated", 2);
            return null;
        }
        f2.f11075b = a2;
        f2.a(AbstractC1345b.a.INIT_PENDING);
        b((AbstractC1345b) f2);
        String str = this.f10901g;
        String str2 = this.f10900f;
        f2.h();
        if (f2.f11075b != null) {
            f2.f11075b.addInterstitialListener(f2);
            f2.q.log(IronSourceLogger.IronSourceTag.ADAPTER_API, f2.f11077d + ":initInterstitial()", 1);
            f2.f11075b.initInterstitial(str, str2, f2.r, f2);
        }
        return a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void h() {
        /*
            r5 = this;
            java.util.concurrent.CopyOnWriteArrayList<com.ironsource.mediationsdk.b> r0 = r5.f10897c
            java.util.Iterator r0 = r0.iterator()
        L6:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L31
            java.lang.Object r1 = r0.next()
            com.ironsource.mediationsdk.b r1 = (com.ironsource.mediationsdk.AbstractC1345b) r1
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.NOT_INITIATED
            if (r2 == r3) goto L60
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.INIT_PENDING
            if (r2 == r3) goto L60
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.INITIATED
            if (r2 == r3) goto L60
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a
            com.ironsource.mediationsdk.b$a r3 = com.ironsource.mediationsdk.AbstractC1345b.a.LOAD_PENDING
            if (r2 == r3) goto L60
            com.ironsource.mediationsdk.b$a r1 = r1.f11074a
            com.ironsource.mediationsdk.b$a r2 = com.ironsource.mediationsdk.AbstractC1345b.a.AVAILABLE
            if (r1 != r2) goto L6
            goto L60
        L31:
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r0 = r5.f10902h
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r1 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.INTERNAL
            java.lang.String r2 = "Reset Iteration"
            r3 = 0
            r0.log(r1, r2, r3)
            java.util.concurrent.CopyOnWriteArrayList<com.ironsource.mediationsdk.b> r0 = r5.f10897c
            java.util.Iterator r0 = r0.iterator()
        L41:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L57
            java.lang.Object r1 = r0.next()
            com.ironsource.mediationsdk.b r1 = (com.ironsource.mediationsdk.AbstractC1345b) r1
            com.ironsource.mediationsdk.b$a r2 = r1.f11074a
            com.ironsource.mediationsdk.b$a r4 = com.ironsource.mediationsdk.AbstractC1345b.a.EXHAUSTED
            if (r2 != r4) goto L41
            r1.g()
            goto L41
        L57:
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r0 = r5.f10902h
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r1 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.INTERNAL
            java.lang.String r2 = "End of Reset Iteration"
            r0.log(r1, r2, r3)
        L60:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.E.h():void");
    }

    private synchronized void h(F f2) {
        a(2002, f2, (Object[][]) null);
        f2.i();
        if (f2.f11075b != null) {
            f2.q.log(IronSourceLogger.IronSourceTag.ADAPTER_API, f2.f11077d + ":loadInterstitial()", 1);
            f2.t = new Date().getTime();
            f2.f11075b.loadInterstitial(f2.r, f2);
        }
    }

    private AbstractAdapter i() {
        AbstractAdapter abstractAdapter = null;
        int i = 0;
        for (int i2 = 0; i2 < this.f10897c.size() && abstractAdapter == null; i2++) {
            if (this.f10897c.get(i2).f11074a == AbstractC1345b.a.AVAILABLE || this.f10897c.get(i2).f11074a == AbstractC1345b.a.INITIATED || this.f10897c.get(i2).f11074a == AbstractC1345b.a.INIT_PENDING || this.f10897c.get(i2).f11074a == AbstractC1345b.a.LOAD_PENDING) {
                i++;
                if (i >= this.f10896b) {
                    break;
                }
            } else if (this.f10897c.get(i2).f11074a == AbstractC1345b.a.NOT_INITIATED && (abstractAdapter = g((F) this.f10897c.get(i2))) == null) {
                this.f10897c.get(i2).a(AbstractC1345b.a.INIT_FAILED);
            }
        }
        return abstractAdapter;
    }

    private synchronized void j() {
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (next.f11074a == AbstractC1345b.a.AVAILABLE || next.f11074a == AbstractC1345b.a.LOAD_PENDING || next.f11074a == AbstractC1345b.a.NOT_AVAILABLE) {
                next.a(AbstractC1345b.a.INITIATED);
            }
        }
    }

    private void k() {
        for (int i = 0; i < this.f10897c.size(); i++) {
            String providerTypeForReflection = this.f10897c.get(i).f11076c.getProviderTypeForReflection();
            if (providerTypeForReflection.equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME) || providerTypeForReflection.equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME)) {
                C1347d.a().a(this.f10897c.get(i).f11076c, this.f10897c.get(i).f11076c.getInterstitialSettings(), false, false);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.ironsource.mediationsdk.AbstractC1344a
    public final void a(Context context, boolean z) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.INTERNAL, this.o + " Should Track Network State: " + z, 0);
        this.i = z;
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final synchronized void a(F f2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + " :onInterstitialInitSuccess()", 1);
        a(IronSourceConstants.IS_INSTANCE_INIT_SUCCESS, f2, (Object[][]) null);
        this.r = true;
        if (this.p && a(AbstractC1345b.a.AVAILABLE, AbstractC1345b.a.LOAD_PENDING) < this.f10896b) {
            f2.a(AbstractC1345b.a.LOAD_PENDING);
            h(f2);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final synchronized void a(F f2, long j) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + ":onInterstitialAdReady()", 1);
        a(2003, f2, new Object[][]{new Object[]{"duration", Long.valueOf(j)}});
        long time = new Date().getTime() - this.w;
        f2.a(AbstractC1345b.a.AVAILABLE);
        this.q = false;
        if (this.t) {
            this.t = false;
            this.m.onInterstitialAdReady();
            a(2004, new Object[][]{new Object[]{"duration", Long.valueOf(time)}});
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final synchronized void a(IronSourceError ironSourceError, F f2) {
        try {
            this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + ":onInterstitialInitFailed(" + ironSourceError + ")", 1);
            a(IronSourceConstants.IS_INSTANCE_INIT_FAILED, f2, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}});
        } catch (Exception e2) {
            this.f10902h.logException(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onInterstitialInitFailed(error:" + ironSourceError + ", provider:" + f2.j() + ")", e2);
        }
        if (a(AbstractC1345b.a.INIT_FAILED) >= this.f10897c.size()) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.NATIVE, "Smart Loading - initialization failed - no adapters are initiated and no more left to init, error: " + ironSourceError.getErrorMessage(), 2);
            if (this.p) {
                this.n.a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildGenericError("no ads to show"));
                a(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 510}});
                this.t = false;
            }
            this.r = true;
            return;
        }
        if (i() == null && this.p && a(AbstractC1345b.a.INIT_FAILED, AbstractC1345b.a.NOT_AVAILABLE, AbstractC1345b.a.CAPPED_PER_SESSION, AbstractC1345b.a.CAPPED_PER_DAY, AbstractC1345b.a.EXHAUSTED) >= this.f10897c.size()) {
            this.n.a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(509, "No ads to show"));
            a(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 509}});
            this.t = false;
        }
        h();
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final synchronized void a(IronSourceError ironSourceError, F f2, long j) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + ":onInterstitialAdLoadFailed(" + ironSourceError + ")", 1);
        IronSourceUtils.sendAutomationLog(f2.f11077d + ":onInterstitialAdLoadFailed(" + ironSourceError + ")");
        if (ironSourceError.getErrorCode() == 1158) {
            a(IronSourceConstants.IS_INSTANCE_LOAD_NO_FILL, f2, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{"duration", Long.valueOf(j)}});
        } else {
            a(IronSourceConstants.IS_INSTANCE_LOAD_FAILED, f2, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(j)}});
        }
        f2.a(AbstractC1345b.a.NOT_AVAILABLE);
        int a2 = a(AbstractC1345b.a.AVAILABLE, AbstractC1345b.a.LOAD_PENDING);
        if (a2 >= this.f10896b) {
            return;
        }
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (next.f11074a == AbstractC1345b.a.INITIATED) {
                next.a(AbstractC1345b.a.LOAD_PENDING);
                h((F) next);
                return;
            }
        }
        if (i() != null) {
            return;
        }
        if (this.p && a2 + a(AbstractC1345b.a.INIT_PENDING) == 0) {
            h();
            this.q = false;
            this.n.a(IronSource.AD_UNIT.INTERSTITIAL, new IronSourceError(509, "No ads to show"));
            a(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 509}});
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(InterstitialPlacement interstitialPlacement) {
        this.s = interstitialPlacement;
        this.m.f11340e = interstitialPlacement;
    }

    @Override // com.ironsource.mediationsdk.utils.i
    public final void a(String str) {
        if (this.p) {
            this.n.a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            this.p = false;
            this.q = false;
        }
    }

    public final synchronized void a(String str, String str2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.NATIVE, this.o + ":initInterstitial(appKey: " + str + ", userId: " + str2 + ")", 1);
        long time = new Date().getTime();
        a(IronSourceConstants.IS_MANAGER_INIT_STARTED, (Object[][]) null);
        this.f10901g = str;
        this.f10900f = str2;
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        int i = 0;
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (this.f10895a.b(next)) {
                a(250, next, new Object[][]{new Object[]{"status", "false"}});
            }
            if (this.f10895a.c(next)) {
                next.a(AbstractC1345b.a.CAPPED_PER_DAY);
                i++;
            }
        }
        if (i == this.f10897c.size()) {
            this.r = true;
        }
        k();
        for (int i2 = 0; i2 < this.f10896b && i() != null; i2++) {
        }
        a(IronSourceConstants.IS_MANAGER_INIT_ENDED, new Object[][]{new Object[]{"duration", Long.valueOf(new Date().getTime() - time)}});
    }

    @Override // com.ironsource.mediationsdk.utils.i
    public final void a(List<IronSource.AD_UNIT> list, boolean z, com.ironsource.mediationsdk.model.g gVar) {
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final void b(F f2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + ":onInterstitialAdOpened()", 1);
        b(2005, f2, null);
        this.m.onInterstitialAdOpened();
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final void b(IronSourceError ironSourceError, F f2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + ":onInterstitialAdShowFailed(" + ironSourceError + ")", 1);
        b(IronSourceConstants.IS_INSTANCE_SHOW_FAILED, f2, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}});
        this.x = false;
        c((AbstractC1345b) f2);
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        while (it.hasNext()) {
            if (it.next().f11074a == AbstractC1345b.a.AVAILABLE) {
                this.p = true;
                InterstitialPlacement interstitialPlacement = this.s;
                if (interstitialPlacement != null) {
                    interstitialPlacement.getPlacementName();
                }
                d();
                return;
            }
        }
        this.m.onInterstitialAdShowFailed(ironSourceError);
    }

    public final synchronized void c() {
        try {
            if (this.x) {
                this.f10902h.log(IronSourceLogger.IronSourceTag.API, "loadInterstitial cannot be invoked while showing an ad", 3);
                B.a().a(new IronSourceError(IronSourceError.ERROR_IS_LOAD_DURING_SHOW, "loadInterstitial cannot be invoked while showing an ad"));
                return;
            }
            this.s = null;
            this.m.f11340e = null;
            if (!this.q && !this.n.a(IronSource.AD_UNIT.INTERSTITIAL)) {
                M.a b2 = M.a().b();
                if (b2 == M.a.NOT_INIT) {
                    this.f10902h.log(IronSourceLogger.IronSourceTag.API, "init() must be called before loadInterstitial()", 3);
                    return;
                } else if (b2 == M.a.INIT_IN_PROGRESS) {
                    if (M.a().c()) {
                        this.f10902h.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                        this.n.a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                        return;
                    }
                    this.w = new Date().getTime();
                    a(2001, (Object[][]) null);
                    this.p = true;
                    this.t = true;
                    return;
                } else if (b2 == M.a.INIT_FAILED) {
                    this.f10902h.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    this.n.a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                    return;
                } else if (this.f10897c.size() == 0) {
                    this.f10902h.log(IronSourceLogger.IronSourceTag.API, "the server response does not contain interstitial data", 3);
                    this.n.a(IronSource.AD_UNIT.INTERSTITIAL, ErrorBuilder.buildInitFailedError("the server response does not contain interstitial data", "Interstitial"));
                    return;
                } else {
                    this.w = new Date().getTime();
                    a(2001, (Object[][]) null);
                    this.t = true;
                    j();
                    if (a(AbstractC1345b.a.INITIATED) == 0) {
                        if (!this.r) {
                            this.p = true;
                            return;
                        }
                        IronSourceError buildGenericError = ErrorBuilder.buildGenericError("no ads to load");
                        this.f10902h.log(IronSourceLogger.IronSourceTag.API, buildGenericError.getErrorMessage(), 1);
                        this.n.a(IronSource.AD_UNIT.INTERSTITIAL, buildGenericError);
                        a(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(buildGenericError.getErrorCode())}});
                        this.t = false;
                        return;
                    }
                    this.p = true;
                    this.q = true;
                    Iterator<AbstractC1345b> it = this.f10897c.iterator();
                    int i = 0;
                    while (it.hasNext()) {
                        AbstractC1345b next = it.next();
                        if (next.f11074a == AbstractC1345b.a.INITIATED) {
                            next.a(AbstractC1345b.a.LOAD_PENDING);
                            h((F) next);
                            i++;
                            if (i >= this.f10896b) {
                                return;
                            }
                        }
                    }
                    return;
                }
            }
            this.f10902h.log(IronSourceLogger.IronSourceTag.API, "Load Interstitial is already in progress", 3);
        } catch (Exception e2) {
            e2.printStackTrace();
            IronSourceError buildLoadFailedError = ErrorBuilder.buildLoadFailedError("loadInterstitial exception " + e2.getMessage());
            this.f10902h.log(IronSourceLogger.IronSourceTag.API, buildLoadFailedError.getErrorMessage(), 3);
            this.n.a(IronSource.AD_UNIT.INTERSTITIAL, buildLoadFailedError);
            if (this.t) {
                this.t = false;
                a(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(buildLoadFailedError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, e2.getMessage()}});
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final void c(F f2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + ":onInterstitialAdClosed()", 1);
        this.x = false;
        b(IronSourceConstants.IS_INSTANCE_CLOSED, f2, new Object[][]{new Object[]{IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(com.ironsource.mediationsdk.utils.o.a().b(2))}});
        com.ironsource.mediationsdk.utils.o.a().a(2);
        this.m.onInterstitialAdClosed();
    }

    public final void d() {
        com.ironsource.mediationsdk.sdk.i iVar;
        IronSourceError buildShowFailedError;
        if (this.x) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.API, "showInterstitial error: can't show ad while an ad is already showing", 3);
            iVar = this.m;
            buildShowFailedError = new IronSourceError(IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, "showInterstitial error: can't show ad while an ad is already showing");
        } else if (!this.p) {
            this.f10902h.log(IronSourceLogger.IronSourceTag.API, "showInterstitial failed - You need to load interstitial before showing it", 3);
            iVar = this.m;
            buildShowFailedError = ErrorBuilder.buildShowFailedError("Interstitial", "showInterstitial failed - You need to load interstitial before showing it");
        } else if (!this.i || IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getCurrentActiveActivity())) {
            for (int i = 0; i < this.f10897c.size(); i++) {
                AbstractC1345b abstractC1345b = this.f10897c.get(i);
                if (abstractC1345b.f11074a == AbstractC1345b.a.AVAILABLE) {
                    com.ironsource.mediationsdk.utils.k.c(ContextProvider.getInstance().getCurrentActiveActivity(), this.s);
                    if (com.ironsource.mediationsdk.utils.k.b(ContextProvider.getInstance().getCurrentActiveActivity(), this.s) != k.a.f11445d) {
                        a(IronSourceConstants.IS_CAP_PLACEMENT, (Object[][]) null, true);
                    }
                    b(IronSourceConstants.IS_INSTANCE_SHOW, abstractC1345b, null);
                    this.x = true;
                    F f2 = (F) abstractC1345b;
                    if (f2.f11075b != null) {
                        f2.q.log(IronSourceLogger.IronSourceTag.ADAPTER_API, f2.f11077d + ":showInterstitial()", 1);
                        f2.d();
                        f2.f11075b.showInterstitial(f2.r, f2);
                    }
                    if (abstractC1345b.b()) {
                        a(IronSourceConstants.IS_CAP_SESSION, abstractC1345b, (Object[][]) null);
                    }
                    this.f10895a.a(abstractC1345b);
                    if (this.f10895a.c(abstractC1345b)) {
                        abstractC1345b.a(AbstractC1345b.a.CAPPED_PER_DAY);
                        a(250, abstractC1345b, new Object[][]{new Object[]{"status", "true"}});
                    }
                    this.p = false;
                    if (abstractC1345b.c()) {
                        return;
                    }
                    i();
                    return;
                }
            }
            iVar = this.m;
            buildShowFailedError = ErrorBuilder.buildShowFailedError("Interstitial", "showInterstitial failed - No adapters ready to show");
        } else {
            this.f10902h.log(IronSourceLogger.IronSourceTag.API, "showInterstitial error: can't show ad when there's no internet connection", 3);
            iVar = this.m;
            buildShowFailedError = ErrorBuilder.buildNoInternetConnectionShowFailError("Interstitial");
        }
        iVar.onInterstitialAdShowFailed(buildShowFailedError);
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final void d(F f2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + ":onInterstitialAdShowSucceeded()", 1);
        b(IronSourceConstants.IS_INSTANCE_SHOW_SUCCESS, f2, null);
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        boolean z = false;
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (next.f11074a == AbstractC1345b.a.AVAILABLE) {
                c(next);
                z = true;
            }
        }
        if (!z && (f2.f11074a == AbstractC1345b.a.CAPPED_PER_SESSION || f2.f11074a == AbstractC1345b.a.EXHAUSTED || f2.f11074a == AbstractC1345b.a.CAPPED_PER_DAY)) {
            h();
        }
        j();
        this.m.onInterstitialAdShowSucceeded();
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final void e(F f2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + ":onInterstitialAdClicked()", 1);
        b(2006, f2, null);
        this.m.onInterstitialAdClicked();
    }

    public final synchronized boolean e() {
        boolean z;
        if (!this.i || IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getCurrentActiveActivity())) {
            Iterator<AbstractC1345b> it = this.f10897c.iterator();
            while (it.hasNext()) {
                AbstractC1345b next = it.next();
                if (next.f11074a == AbstractC1345b.a.AVAILABLE) {
                    F f2 = (F) next;
                    if (f2.f11075b != null) {
                        f2.q.log(IronSourceLogger.IronSourceTag.ADAPTER_API, f2.f11077d + ":isInterstitialReady()", 1);
                        z = f2.f11075b.isInterstitialReady(f2.r);
                    } else {
                        z = false;
                    }
                    if (z) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.ironsource.mediationsdk.utils.i
    public final void f() {
        if (this.p) {
            IronSourceError buildInitFailedError = ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial");
            this.n.a(IronSource.AD_UNIT.INTERSTITIAL, buildInitFailedError);
            this.p = false;
            this.q = false;
            if (this.t) {
                a(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(buildInitFailedError.getErrorCode())}}, false);
                this.t = false;
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.h
    public final void f(F f2) {
        this.f10902h.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, f2.f11077d + ":onInterstitialAdVisible()", 1);
    }

    @Override // com.ironsource.mediationsdk.utils.d
    public final void g() {
        Iterator<AbstractC1345b> it = this.f10897c.iterator();
        while (it.hasNext()) {
            AbstractC1345b next = it.next();
            if (next.f11074a == AbstractC1345b.a.CAPPED_PER_DAY) {
                a(250, next, new Object[][]{new Object[]{"status", "false"}});
                next.a(next.b() ? AbstractC1345b.a.CAPPED_PER_SESSION : next.a() ? AbstractC1345b.a.EXHAUSTED : AbstractC1345b.a.INITIATED);
            }
        }
    }
}
