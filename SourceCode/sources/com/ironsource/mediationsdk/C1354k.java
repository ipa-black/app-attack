package com.ironsource.mediationsdk;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.C1355l;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.k  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1354k implements com.ironsource.mediationsdk.sdk.a {

    /* renamed from: a  reason: collision with root package name */
    private C1355l f11167a;

    /* renamed from: b  reason: collision with root package name */
    private IronSourceBannerLayout f11168b;

    /* renamed from: c  reason: collision with root package name */
    private com.ironsource.mediationsdk.model.f f11169c;

    /* renamed from: f  reason: collision with root package name */
    private String f11172f;

    /* renamed from: g  reason: collision with root package name */
    private String f11173g;
    private long i;
    private Timer j;
    private com.ironsource.mediationsdk.utils.f m;
    private com.ironsource.mediationsdk.utils.f n;
    private int o;
    private int p;

    /* renamed from: h  reason: collision with root package name */
    private final CopyOnWriteArrayList<C1355l> f11174h = new CopyOnWriteArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private IronSourceLoggerManager f11171e = IronSourceLoggerManager.getLogger();

    /* renamed from: d  reason: collision with root package name */
    private a f11170d = a.NOT_INITIATED;
    private AtomicBoolean l = new AtomicBoolean();
    private AtomicBoolean k = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.mediationsdk.k$a */
    /* loaded from: classes3.dex */
    public enum a {
        NOT_INITIATED,
        READY_TO_LOAD,
        FIRST_LOAD_IN_PROGRESS,
        LOAD_IN_PROGRESS,
        RELOAD_IN_PROGRESS
    }

    public C1354k(List<NetworkSettings> list, String str, String str2, long j, int i, int i2) {
        this.f11172f = str;
        this.f11173g = str2;
        this.i = i;
        C1353j.a().f11161a = i2;
        for (int i3 = 0; i3 < list.size(); i3++) {
            NetworkSettings networkSettings = list.get(i3);
            AbstractAdapter a2 = C1347d.a().a(networkSettings, networkSettings.getBannerSettings(), false, false);
            if (a2 == null || !C1348e.a().a(a2)) {
                a(networkSettings.getProviderInstanceName() + " can't load adapter or wrong version");
            } else {
                this.f11174h.add(new C1355l(this, networkSettings, a2, j, i3 + 1));
            }
        }
        this.f11169c = null;
        a(a.READY_TO_LOAD);
    }

    private void a(int i) {
        a(i, (Object[][]) null);
    }

    private void a(int i, C1355l c1355l) {
        a(i, c1355l, (Object[][]) null);
    }

    private void a(int i, C1355l c1355l, Object[][] objArr) {
        a(i, c1355l, objArr, this.p);
    }

    private void a(int i, C1355l c1355l, Object[][] objArr, int i2) {
        JSONObject providerAdditionalData = IronSourceUtils.getProviderAdditionalData(c1355l);
        try {
            IronSourceBannerLayout ironSourceBannerLayout = this.f11168b;
            if (ironSourceBannerLayout != null) {
                a(providerAdditionalData, ironSourceBannerLayout.getSize());
            }
            com.ironsource.mediationsdk.model.f fVar = this.f11169c;
            if (fVar != null) {
                providerAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, fVar.getPlacementName());
            }
            providerAdditionalData.put(IronSourceConstants.KEY_SESSION_DEPTH, i2);
            if (objArr != null) {
                for (Object[] objArr2 : objArr) {
                    providerAdditionalData.put(objArr2[0].toString(), objArr2[1]);
                }
            }
        } catch (Exception e2) {
            this.f11171e.log(IronSourceLogger.IronSourceTag.INTERNAL, "sendProviderEvent " + Log.getStackTraceString(e2), 3);
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, providerAdditionalData));
    }

    private void a(int i, Object[][] objArr) {
        a(i, objArr, this.p);
    }

    private void a(int i, Object[][] objArr, int i2) {
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            IronSourceBannerLayout ironSourceBannerLayout = this.f11168b;
            if (ironSourceBannerLayout != null) {
                a(mediationAdditionalData, ironSourceBannerLayout.getSize());
            }
            com.ironsource.mediationsdk.model.f fVar = this.f11169c;
            if (fVar != null) {
                mediationAdditionalData.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, fVar.getPlacementName());
            }
            mediationAdditionalData.put(IronSourceConstants.KEY_SESSION_DEPTH, i2);
            if (objArr != null) {
                for (Object[] objArr2 : objArr) {
                    mediationAdditionalData.put(objArr2[0].toString(), objArr2[1]);
                }
            }
        } catch (Exception e2) {
            this.f11171e.log(IronSourceLogger.IronSourceTag.INTERNAL, "sendMediationEvent " + Log.getStackTraceString(e2), 3);
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, mediationAdditionalData));
    }

    private void a(a aVar) {
        this.f11170d = aVar;
        a("state=" + aVar.name());
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void a(com.ironsource.mediationsdk.C1354k r7) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.C1354k.a(com.ironsource.mediationsdk.k):void");
    }

    private void a(String str) {
        this.f11171e.log(IronSourceLogger.IronSourceTag.INTERNAL, "BannerManager " + str, 0);
    }

    private void a(JSONObject jSONObject, ISBannerSize iSBannerSize) {
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
            } else if (c2 != 4) {
            } else {
                jSONObject.put("bannerAdSize", 6);
                jSONObject.put("custom_banner_size", iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight());
            }
        } catch (Exception e2) {
            this.f11171e.log(IronSourceLogger.IronSourceTag.INTERNAL, "sendProviderEvent " + Log.getStackTraceString(e2), 3);
        }
    }

    private boolean a() {
        IronSourceBannerLayout ironSourceBannerLayout = this.f11168b;
        return (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) ? false : true;
    }

    private void b() {
        Iterator<C1355l> it = this.f11174h.iterator();
        while (it.hasNext()) {
            it.next().f11185d = true;
        }
    }

    private void b(C1355l c1355l, View view, FrameLayout.LayoutParams layoutParams) {
        this.f11167a = c1355l;
        this.f11168b.a(view, layoutParams);
    }

    private void b(C1355l c1355l, View view, FrameLayout.LayoutParams layoutParams, boolean z) {
        IronLog.INTERNAL.info("bindView = " + z + " smash - " + c1355l.a());
        a(IronSourceConstants.BN_INSTANCE_RELOAD_SUCCESS, c1355l, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.n))}});
        a(IronSourceConstants.BN_CALLBACK_RELOAD_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.m))}});
        this.o = com.ironsource.mediationsdk.utils.o.a().b(3);
        com.ironsource.mediationsdk.utils.o.a().a(3);
        if (z) {
            b(c1355l, view, layoutParams);
        }
        d();
    }

    private boolean c() {
        Iterator<C1355l> it = this.f11174h.iterator();
        while (it.hasNext()) {
            C1355l next = it.next();
            if (next.f11185d && this.f11167a != next) {
                a(this.f11170d == a.FIRST_LOAD_IN_PROGRESS ? 3002 : IronSourceConstants.BN_INSTANCE_RELOAD, next, (Object[][]) null);
                this.n = new com.ironsource.mediationsdk.utils.f();
                next.a(this.f11168b.a(), this.f11172f, this.f11173g);
                return true;
            }
        }
        return false;
    }

    private void d() {
        try {
            e();
            if (this.i > 0) {
                Timer timer = new Timer();
                this.j = timer;
                timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.k.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        C1354k.a(C1354k.this);
                    }
                }, this.i * 1000);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void e() {
        Timer timer = this.j;
        if (timer != null) {
            timer.cancel();
            this.j = null;
        }
    }

    public final synchronized void a(IronSourceBannerLayout ironSourceBannerLayout) {
        if (ironSourceBannerLayout == null) {
            this.f11171e.log(IronSourceLogger.IronSourceTag.API, "destroyBanner banner cannot be null", 3);
        } else if (ironSourceBannerLayout.isDestroyed()) {
            this.f11171e.log(IronSourceLogger.IronSourceTag.API, "Banner is already destroyed and can't be used anymore. Please create a new one using IronSource.createBanner API", 3);
        } else {
            a(IronSourceConstants.BN_DESTROY, (Object[][]) null, this.o);
            e();
            C1355l c1355l = this.f11167a;
            if (c1355l != null) {
                a(IronSourceConstants.BN_INSTANCE_DESTROY, c1355l, (Object[][]) null);
                C1355l c1355l2 = this.f11167a;
                c1355l2.a("destroyBanner()");
                if (c1355l2.f11182a == null) {
                    c1355l2.a("destroyBanner() mAdapter == null");
                } else {
                    c1355l2.f11182a.destroyBanner(c1355l2.f11183b.getBannerSettings());
                    c1355l2.a(C1355l.a.DESTROYED);
                }
                this.f11167a = null;
            }
            ironSourceBannerLayout.b();
            this.f11168b = null;
            this.f11169c = null;
            a(a.READY_TO_LOAD);
        }
    }

    public final synchronized void a(IronSourceBannerLayout ironSourceBannerLayout, com.ironsource.mediationsdk.model.f fVar) {
        if (ironSourceBannerLayout != null) {
            try {
                if (!ironSourceBannerLayout.isDestroyed()) {
                    if (fVar != null && !TextUtils.isEmpty(fVar.getPlacementName())) {
                        if (this.f11170d == a.READY_TO_LOAD && !C1353j.a().b()) {
                            this.p = com.ironsource.mediationsdk.utils.o.a().b(3);
                            a(a.FIRST_LOAD_IN_PROGRESS);
                            this.f11168b = ironSourceBannerLayout;
                            this.f11169c = fVar;
                            a(3001, (Object[][]) null);
                            if (com.ironsource.mediationsdk.utils.k.b(ContextProvider.getInstance().getCurrentActiveActivity(), fVar.getPlacementName())) {
                                C1353j.a().a(ironSourceBannerLayout, new IronSourceError(604, "placement " + fVar.getPlacementName() + " is capped"));
                                a(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 604}});
                                a(a.READY_TO_LOAD);
                                return;
                            }
                            this.m = new com.ironsource.mediationsdk.utils.f();
                            Iterator<C1355l> it = this.f11174h.iterator();
                            while (it.hasNext()) {
                                it.next().f11185d = true;
                            }
                            this.n = new com.ironsource.mediationsdk.utils.f();
                            C1355l c1355l = this.f11174h.get(0);
                            a(3002, c1355l, (Object[][]) null);
                            c1355l.a(ironSourceBannerLayout.a(), this.f11172f, this.f11173g);
                            return;
                        }
                        this.f11171e.log(IronSourceLogger.IronSourceTag.API, "A banner is already loaded", 3);
                        return;
                    }
                    this.f11171e.log(IronSourceLogger.IronSourceTag.API, String.format("can't load banner - %s", fVar == null ? "placement is null" : "placement name is empty"), 3);
                    return;
                }
            } catch (Exception e2) {
                C1353j.a().a(ironSourceBannerLayout, new IronSourceError(605, "loadBanner() failed " + e2.getMessage()));
                a(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 605}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, e2.getMessage()}});
                a(a.READY_TO_LOAD);
                return;
            }
        }
        this.f11171e.log(IronSourceLogger.IronSourceTag.API, String.format("can't load banner - %s", ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed"), 3);
    }

    @Override // com.ironsource.mediationsdk.sdk.a
    public final void a(C1355l c1355l) {
        Object[][] objArr;
        IronLog.INTERNAL.info("smash - " + c1355l.a());
        if (a()) {
            this.f11168b.c();
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_CLICK, objArr, this.o);
        a(IronSourceConstants.BN_INSTANCE_CLICK, c1355l, objArr, this.o);
    }

    @Override // com.ironsource.mediationsdk.sdk.a
    public final void a(C1355l c1355l, View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.INTERNAL.info("smash - " + c1355l.a());
        if (this.f11170d != a.FIRST_LOAD_IN_PROGRESS) {
            if (this.f11170d != a.LOAD_IN_PROGRESS) {
                a(IronSourceConstants.BN_INSTANCE_UNEXPECTED_LOAD_SUCCESS, c1355l, (Object[][]) null);
                return;
            }
            a(a.RELOAD_IN_PROGRESS);
            b(c1355l, view, layoutParams, true);
            return;
        }
        a(3005, c1355l, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.n))}});
        b(c1355l, view, layoutParams);
        com.ironsource.mediationsdk.model.f fVar = this.f11169c;
        String placementName = fVar != null ? fVar.getPlacementName() : "";
        com.ironsource.mediationsdk.utils.k.f(ContextProvider.getInstance().getCurrentActiveActivity(), placementName);
        if (com.ironsource.mediationsdk.utils.k.b(ContextProvider.getInstance().getCurrentActiveActivity(), placementName)) {
            a(IronSourceConstants.BN_PLACEMENT_CAPPED, (Object[][]) null);
        }
        a(IronSourceConstants.BN_CALLBACK_LOAD_SUCCESS, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.m))}});
        this.f11168b.a(c1355l.a());
        this.o = com.ironsource.mediationsdk.utils.o.a().b(3);
        com.ironsource.mediationsdk.utils.o.a().a(3);
        a(a.RELOAD_IN_PROGRESS);
        d();
    }

    @Override // com.ironsource.mediationsdk.sdk.a
    public final void a(C1355l c1355l, View view, FrameLayout.LayoutParams layoutParams, boolean z) {
        IronLog.INTERNAL.info("smash - " + c1355l.a());
        if (this.f11170d != a.RELOAD_IN_PROGRESS) {
            a("onBannerAdReloaded " + c1355l.a() + " wrong state=" + this.f11170d.name());
            a(IronSourceConstants.BN_INSTANCE_UNEXPECTED_RELOAD_SUCCESS, c1355l, (Object[][]) null);
            return;
        }
        IronSourceUtils.sendAutomationLog("bannerReloadSucceeded");
        b(c1355l, view, layoutParams, z);
    }

    @Override // com.ironsource.mediationsdk.sdk.a
    public final void a(IronSourceError ironSourceError, C1355l c1355l, boolean z) {
        IronLog.INTERNAL.info("error = " + ironSourceError.getErrorMessage() + " smash - " + c1355l.a());
        if (this.f11170d != a.FIRST_LOAD_IN_PROGRESS && this.f11170d != a.LOAD_IN_PROGRESS) {
            a("onBannerAdLoadFailed " + c1355l.a() + " wrong state=" + this.f11170d.name());
            return;
        }
        if (z) {
            a(IronSourceConstants.BN_INSTANCE_LOAD_NO_FILL, c1355l, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.n))}});
        } else {
            a(IronSourceConstants.BN_INSTANCE_LOAD_ERROR, c1355l, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.n))}});
        }
        if (c()) {
            return;
        }
        if (this.f11170d == a.FIRST_LOAD_IN_PROGRESS) {
            C1353j.a().a(this.f11168b, new IronSourceError(606, "No ads to show"));
            a(IronSourceConstants.BN_CALLBACK_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 606}, new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.m))}});
            a(a.READY_TO_LOAD);
            return;
        }
        a(IronSourceConstants.BN_RELOAD_FAILED, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.m))}});
        a(a.RELOAD_IN_PROGRESS);
        d();
    }

    @Override // com.ironsource.mediationsdk.sdk.a
    public final void b(C1355l c1355l) {
        Object[][] objArr;
        IronLog.INTERNAL.info("smash - " + c1355l.a());
        if (a()) {
            this.f11168b.e();
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_DISMISS_SCREEN, objArr, this.o);
        a(IronSourceConstants.BN_INSTANCE_DISMISS_SCREEN, c1355l, objArr, this.o);
    }

    @Override // com.ironsource.mediationsdk.sdk.a
    public final void b(IronSourceError ironSourceError, C1355l c1355l, boolean z) {
        IronLog.INTERNAL.info("error = " + ironSourceError.getErrorMessage() + " smash - " + c1355l.a());
        if (this.f11170d != a.RELOAD_IN_PROGRESS) {
            a("onBannerAdReloadFailed " + c1355l.a() + " wrong state=" + this.f11170d.name());
            return;
        }
        if (z) {
            a(IronSourceConstants.BN_INSTANCE_RELOAD_NO_FILL, c1355l, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.n))}});
        } else {
            a(IronSourceConstants.BN_INSTANCE_RELOAD_ERROR, c1355l, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.n))}});
        }
        if (this.f11174h.size() == 1) {
            a(IronSourceConstants.BN_RELOAD_FAILED, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.m))}});
            d();
            return;
        }
        a(a.LOAD_IN_PROGRESS);
        b();
        c();
    }

    @Override // com.ironsource.mediationsdk.sdk.a
    public final void c(C1355l c1355l) {
        Object[][] objArr;
        IronLog.INTERNAL.info("smash - " + c1355l.a());
        if (a()) {
            this.f11168b.d();
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_PRESENT_SCREEN, objArr, this.o);
        a(IronSourceConstants.BN_INSTANCE_PRESENT_SCREEN, c1355l, objArr, this.o);
    }

    @Override // com.ironsource.mediationsdk.sdk.a
    public final void d(C1355l c1355l) {
        Object[][] objArr;
        IronLog.INTERNAL.info("smash - " + c1355l.a());
        if (a()) {
            this.f11168b.f();
            objArr = null;
        } else {
            objArr = new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed"}};
        }
        a(IronSourceConstants.BN_CALLBACK_LEAVE_APP, objArr, this.o);
        a(IronSourceConstants.BN_INSTANCE_LEAVE_APP, c1355l, objArr, this.o);
    }

    @Override // com.ironsource.mediationsdk.sdk.a
    public final void e(C1355l c1355l) {
        IronLog.INTERNAL.info("smash - " + c1355l.a());
        a(IronSourceConstants.BN_CALLBACK_SHOW, (Object[][]) null);
        a(IronSourceConstants.BN_INSTANCE_SHOW, c1355l, (Object[][]) null);
    }
}
