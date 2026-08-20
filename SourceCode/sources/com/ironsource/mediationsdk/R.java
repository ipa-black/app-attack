package com.ironsource.mediationsdk;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.b.c;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class R extends Y implements c.a, BannerSmashListener {

    /* renamed from: a  reason: collision with root package name */
    String f10811a;

    /* renamed from: b  reason: collision with root package name */
    private com.ironsource.mediationsdk.c.b f10812b;
    private com.ironsource.mediationsdk.b.c j;
    private a k;
    private Q l;
    private IronSourceBannerLayout m;
    private JSONObject n;
    private int o;
    private String p;
    private com.ironsource.mediationsdk.model.f q;
    private final Object r;
    private com.ironsource.mediationsdk.utils.f s;
    private boolean t;

    /* loaded from: classes3.dex */
    public enum a {
        NONE,
        INIT_IN_PROGRESS,
        READY_TO_LOAD,
        LOADING,
        LOADED,
        LOAD_FAILED,
        DESTROYED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public R(com.ironsource.mediationsdk.c.b bVar, Q q, NetworkSettings networkSettings, AbstractAdapter abstractAdapter, int i, String str, JSONObject jSONObject, int i2, String str2, boolean z) {
        super(new com.ironsource.mediationsdk.model.a(networkSettings, networkSettings.getBannerSettings(), IronSource.AD_UNIT.BANNER), abstractAdapter);
        this.r = new Object();
        this.k = R.a.NONE;
        this.f10812b = bVar;
        this.j = new com.ironsource.mediationsdk.b.c(bVar.f());
        this.l = q;
        this.f10876h = i;
        this.f10811a = str;
        this.o = i2;
        this.p = str2;
        this.n = jSONObject;
        this.t = z;
        this.f10871c.addBannerListener(this);
        if (h()) {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public R(com.ironsource.mediationsdk.c.b bVar, Q q, NetworkSettings networkSettings, AbstractAdapter abstractAdapter, int i, boolean z) {
        this(bVar, q, networkSettings, abstractAdapter, i, "", null, 0, "", z);
    }

    private void a(a aVar) {
        IronLog.INTERNAL.verbose(r() + "state = " + aVar.name());
        synchronized (this.r) {
            this.k = aVar;
        }
    }

    private void a(IronSourceError ironSourceError) {
        if (ironSourceError.getErrorCode() == 606) {
            a(this.t ? IronSourceConstants.BN_INSTANCE_RELOAD_NO_FILL : IronSourceConstants.BN_INSTANCE_LOAD_NO_FILL, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.s))}});
        } else {
            a(this.t ? IronSourceConstants.BN_INSTANCE_RELOAD_ERROR : IronSourceConstants.BN_INSTANCE_LOAD_ERROR, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf(ironSourceError.getErrorCode())}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, ironSourceError.getErrorMessage()}, new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.s))}});
        }
        Q q = this.l;
        if (q != null) {
            q.a(ironSourceError, this);
        }
    }

    private void a(String str) {
        IronLog.INTERNAL.verbose(p());
        if (!a(R.a.READY_TO_LOAD, R.a.LOADING)) {
            IronLog.INTERNAL.error("wrong state - state = " + this.k);
            return;
        }
        this.s = new com.ironsource.mediationsdk.utils.f();
        a(this.t ? IronSourceConstants.BN_INSTANCE_RELOAD : 3002, (Object[][]) null);
        if (this.f10871c != null) {
            try {
                if (h()) {
                    this.f10871c.loadBannerForBidding(this.m, this.f10874f, this, str);
                } else {
                    this.f10871c.loadBanner(this.m, this.f10874f, this);
                }
            } catch (Exception e2) {
                IronLog.INTERNAL.error("Exception while trying to load banner from " + this.f10871c.getProviderName() + ", exception =  " + e2.getLocalizedMessage());
                e2.printStackTrace();
                onBannerAdLoadFailed(new IronSourceError(605, e2.getLocalizedMessage()));
                a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_loadException)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, e2.getLocalizedMessage()}});
            }
        }
    }

    private static void a(Map<String, Object> map, ISBannerSize iSBannerSize) {
        char c2;
        int i;
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
                i = 1;
            } else if (c2 == 1) {
                i = 2;
            } else if (c2 == 2) {
                i = 3;
            } else if (c2 != 3) {
                if (c2 != 4) {
                    return;
                }
                map.put("bannerAdSize", 6);
                map.put("custom_banner_size", iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight());
                return;
            } else {
                i = 5;
            }
            map.put("bannerAdSize", i);
        } catch (Exception e2) {
            IronLog.INTERNAL.error(Log.getStackTraceString(e2));
        }
    }

    private static boolean a(int i) {
        return i == 3005 || i == 3002 || i == 3012 || i == 3015 || i == 3008 || i == 3305 || i == 3300 || i == 3306 || i == 3307 || i == 3302 || i == 3303 || i == 3304 || i == 3009;
    }

    private boolean a(a aVar, a aVar2) {
        boolean z;
        synchronized (this.r) {
            if (this.k == aVar) {
                IronLog.INTERNAL.verbose(r() + "set state from '" + this.k + "' to '" + aVar2 + "'");
                this.k = aVar2;
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    private void b(int i) {
        a(i, (Object[][]) null);
    }

    private void f() {
        IronLog.INTERNAL.verbose(r() + "isBidder = " + h());
        a(R.a.INIT_IN_PROGRESS);
        g();
        try {
            if (this.f10871c != null) {
                if (h()) {
                    this.f10871c.initBannerForBidding(this.f10812b.a(), this.f10812b.b(), this.f10874f, this);
                } else {
                    this.f10871c.initBanners(this.f10812b.a(), this.f10812b.b(), this.f10874f, this);
                }
            }
        } catch (Throwable th) {
            IronLog.INTERNAL.error("Exception while trying to init banner from " + this.f10871c.getProviderName() + ", exception =  " + th.getLocalizedMessage());
            th.printStackTrace();
            onBannerInitFailed(new IronSourceError(612, th.getLocalizedMessage()));
            a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_initFailed)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, th.getLocalizedMessage()}});
        }
    }

    private void g() {
        if (this.f10871c == null) {
            return;
        }
        try {
            String str = H.a().l;
            if (!TextUtils.isEmpty(str)) {
                this.f10871c.setMediationSegment(str);
            }
            String pluginType = ConfigFile.getConfigFile().getPluginType();
            if (TextUtils.isEmpty(pluginType)) {
                return;
            }
            this.f10871c.setPluginData(pluginType, ConfigFile.getConfigFile().getPluginFrameworkVersion());
        } catch (Exception e2) {
            IronLog.INTERNAL.error("Exception while trying to set custom params from " + this.f10871c.getProviderName() + ", exception =  " + e2.getLocalizedMessage());
            e2.printStackTrace();
            a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_internal)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, e2.getLocalizedMessage()}});
        }
    }

    private boolean q() {
        boolean z;
        synchronized (this.r) {
            z = this.k == R.a.LOADED;
        }
        return z;
    }

    private String r() {
        return String.format("%s - ", p());
    }

    private boolean s() {
        IronSourceBannerLayout ironSourceBannerLayout = this.m;
        return ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed();
    }

    public final void a() {
        IronLog.INTERNAL.verbose(p());
        a(R.a.DESTROYED);
        if (this.f10871c == null) {
            IronLog.INTERNAL.warning("mAdapter == null");
            return;
        }
        try {
            this.f10871c.destroyBanner(this.f10872d.f11235a.getBannerSettings());
        } catch (Exception e2) {
            IronLog.INTERNAL.error("Exception while trying to destroy banner from " + this.f10871c.getProviderName() + ", exception =  " + e2.getLocalizedMessage());
            e2.printStackTrace();
            a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, Integer.valueOf((int) IronSourceConstants.errorCode_destroy)}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, e2.getLocalizedMessage()}});
        }
        b(IronSourceConstants.BN_INSTANCE_DESTROY);
    }

    public final void a(int i, Object[][] objArr) {
        Map<String, Object> n = n();
        if (s()) {
            n.put(IronSourceConstants.EVENTS_ERROR_REASON, "banner is destroyed");
        } else {
            a(n, this.m.getSize());
        }
        if (!TextUtils.isEmpty(this.f10811a)) {
            n.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f10811a);
        }
        JSONObject jSONObject = this.n;
        if (jSONObject != null && jSONObject.length() > 0) {
            n.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.n);
        }
        com.ironsource.mediationsdk.model.f fVar = this.q;
        if (fVar != null) {
            n.put(IronSourceConstants.EVENTS_PLACEMENT_NAME, fVar.getPlacementName());
        }
        if (a(i)) {
            com.ironsource.mediationsdk.a.d.e();
            com.ironsource.mediationsdk.a.d.a(n, this.o, this.p);
        }
        n.put(IronSourceConstants.KEY_SESSION_DEPTH, Integer.valueOf(this.f10876h));
        if (objArr != null) {
            try {
                for (Object[] objArr2 : objArr) {
                    n.put(objArr2[0].toString(), objArr2[1]);
                }
            } catch (Exception e2) {
                IronLog.INTERNAL.error(k() + " smash: BN sendMediationEvent " + Log.getStackTraceString(e2));
            }
        }
        com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, new JSONObject(n)));
    }

    public final void a(IronSourceBannerLayout ironSourceBannerLayout, com.ironsource.mediationsdk.model.f fVar, String str) {
        IronLog.INTERNAL.verbose(p());
        this.q = fVar;
        if (!C1356m.a(ironSourceBannerLayout)) {
            String str2 = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
            IronLog.INTERNAL.verbose(str2);
            this.l.a(new IronSourceError(610, str2), this);
        } else if (this.f10871c == null) {
            IronLog.INTERNAL.verbose("mAdapter is null");
            this.l.a(new IronSourceError(611, "mAdapter is null"), this);
        } else {
            this.m = ironSourceBannerLayout;
            this.j.a((c.a) this);
            try {
                if (h()) {
                    a(str);
                } else {
                    f();
                }
            } catch (Throwable th) {
                IronLog.INTERNAL.error("exception = " + th.getLocalizedMessage());
                th.printStackTrace();
                onBannerAdLoadFailed(new IronSourceError(605, th.getLocalizedMessage()));
            }
        }
    }

    @Override // com.ironsource.mediationsdk.b.c.a
    public final void b() {
        IronSourceError ironSourceError;
        IronLog.INTERNAL.verbose(p());
        if (a(R.a.INIT_IN_PROGRESS, R.a.LOAD_FAILED)) {
            IronLog.INTERNAL.verbose("init timed out");
            ironSourceError = new IronSourceError(607, "Timed out");
        } else if (!a(R.a.LOADING, R.a.LOAD_FAILED)) {
            IronLog.INTERNAL.error("unexpected state - " + this.k);
            return;
        } else {
            IronLog.INTERNAL.verbose("load timed out");
            ironSourceError = new IronSourceError(608, "Timed out");
        }
        a(ironSourceError);
    }

    public final Map<String, Object> c() {
        try {
            if (!h() || this.f10871c == null) {
                return null;
            }
            return this.f10871c.getBannerBiddingData(this.f10874f);
        } catch (Throwable th) {
            IronLog.INTERNAL.error("Exception while trying to getBannerBiddingData from " + this.f10871c.getProviderName() + ", exception =  " + th.getLocalizedMessage());
            th.printStackTrace();
            a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_EXCEPTION, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 5001}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, th.getLocalizedMessage()}});
            return null;
        }
    }

    @Override // com.ironsource.mediationsdk.Y
    public final void d() {
        this.j.c();
        super.d();
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdClicked() {
        IronLog.INTERNAL.verbose(p());
        a(IronSourceConstants.BN_INSTANCE_CLICK, (Object[][]) null);
        Q q = this.l;
        if (q != null) {
            q.a(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdLeftApplication() {
        IronLog.INTERNAL.verbose(p());
        a(IronSourceConstants.BN_INSTANCE_LEAVE_APP, (Object[][]) null);
        Q q = this.l;
        if (q != null) {
            q.d(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose(r() + "error = " + ironSourceError);
        this.j.d();
        if (a(R.a.LOADING, R.a.LOAD_FAILED)) {
            a(ironSourceError);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdLoaded(View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.INTERNAL.verbose(p());
        this.j.d();
        if (!a(R.a.LOADING, R.a.LOADED)) {
            a(this.t ? IronSourceConstants.BN_INSTANCE_UNEXPECTED_RELOAD_SUCCESS : IronSourceConstants.BN_INSTANCE_UNEXPECTED_LOAD_SUCCESS, (Object[][]) null);
            return;
        }
        a(this.t ? IronSourceConstants.BN_INSTANCE_RELOAD_SUCCESS : 3005, new Object[][]{new Object[]{"duration", Long.valueOf(com.ironsource.mediationsdk.utils.f.a(this.s))}});
        Q q = this.l;
        if (q != null) {
            q.a(this, view, layoutParams);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdScreenDismissed() {
        IronLog.INTERNAL.verbose(p());
        a(IronSourceConstants.BN_INSTANCE_DISMISS_SCREEN, (Object[][]) null);
        Q q = this.l;
        if (q != null) {
            q.b(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdScreenPresented() {
        IronLog.INTERNAL.verbose(p());
        a(IronSourceConstants.BN_INSTANCE_PRESENT_SCREEN, (Object[][]) null);
        Q q = this.l;
        if (q != null) {
            q.c(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdShown() {
        IronLog.INTERNAL.verbose(p());
        if (!q()) {
            IronLog.INTERNAL.warning("wrong state - mState = " + this.k);
            a(IronSourceConstants.TROUBLESHOOTING_BN_SMASH_UNEXPECTED_STATE, new Object[][]{new Object[]{IronSourceConstants.EVENTS_ERROR_CODE, 1}, new Object[]{IronSourceConstants.EVENTS_ERROR_REASON, "Wrong State - " + this.k}, new Object[]{IronSourceConstants.EVENTS_EXT1, k()}});
            return;
        }
        a(IronSourceConstants.BN_INSTANCE_SHOW, (Object[][]) null);
        Q q = this.l;
        if (q != null) {
            q.e(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerInitFailed(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose(r() + "error = " + ironSourceError);
        this.j.d();
        if (!a(R.a.INIT_IN_PROGRESS, R.a.NONE)) {
            IronLog.INTERNAL.warning("wrong state - mState = " + this.k);
            return;
        }
        Q q = this.l;
        if (q != null) {
            q.a(new IronSourceError(612, "Banner init failed"), this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerInitSuccess() {
        IronLog.INTERNAL.verbose(p());
        if (!a(R.a.INIT_IN_PROGRESS, R.a.READY_TO_LOAD) || h()) {
            return;
        }
        if (C1356m.a(this.m)) {
            a((String) null);
        } else {
            this.l.a(new IronSourceError(605, this.m == null ? "banner is null" : "banner is destroyed"), this);
        }
    }
}
