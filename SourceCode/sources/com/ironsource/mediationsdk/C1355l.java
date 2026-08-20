package com.ironsource.mediationsdk;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import java.util.Timer;
import java.util.TimerTask;
/* renamed from: com.ironsource.mediationsdk.l  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1355l implements BannerSmashListener {

    /* renamed from: a  reason: collision with root package name */
    public AbstractAdapter f11182a;

    /* renamed from: b  reason: collision with root package name */
    public NetworkSettings f11183b;

    /* renamed from: c  reason: collision with root package name */
    com.ironsource.mediationsdk.sdk.a f11184c;

    /* renamed from: d  reason: collision with root package name */
    boolean f11185d;

    /* renamed from: e  reason: collision with root package name */
    IronSourceBannerLayout f11186e;

    /* renamed from: f  reason: collision with root package name */
    public int f11187f;

    /* renamed from: g  reason: collision with root package name */
    private Timer f11188g;

    /* renamed from: h  reason: collision with root package name */
    private long f11189h;
    private a i = a.NO_INIT;

    /* renamed from: com.ironsource.mediationsdk.l$a */
    /* loaded from: classes3.dex */
    public enum a {
        NO_INIT,
        INIT_IN_PROGRESS,
        LOAD_IN_PROGRESS,
        LOADED,
        LOAD_FAILED,
        DESTROYED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1355l(com.ironsource.mediationsdk.sdk.a aVar, NetworkSettings networkSettings, AbstractAdapter abstractAdapter, long j, int i) {
        this.f11187f = i;
        this.f11184c = aVar;
        this.f11182a = abstractAdapter;
        this.f11183b = networkSettings;
        this.f11189h = j;
        abstractAdapter.addBannerListener(this);
    }

    private void a(String str, String str2) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, str + " Banner exception: " + a() + " | " + str2, 3);
    }

    private void c() {
        if (this.f11182a == null) {
            return;
        }
        try {
            String str = H.a().l;
            if (!TextUtils.isEmpty(str)) {
                this.f11182a.setMediationSegment(str);
            }
            String pluginType = ConfigFile.getConfigFile().getPluginType();
            if (TextUtils.isEmpty(pluginType)) {
                return;
            }
            this.f11182a.setPluginData(pluginType, ConfigFile.getConfigFile().getPluginFrameworkVersion());
        } catch (Exception e2) {
            a(":setCustomParams():" + e2.toString());
        }
    }

    private void d() {
        try {
            Timer timer = this.f11188g;
            if (timer != null) {
                timer.cancel();
            }
        } catch (Exception e2) {
            a("stopLoadTimer", e2.getLocalizedMessage());
        } finally {
            this.f11188g = null;
        }
    }

    public final String a() {
        return this.f11183b.isMultipleInstances() ? this.f11183b.getProviderTypeForReflection() : this.f11183b.getProviderName();
    }

    public final void a(IronSourceBannerLayout ironSourceBannerLayout, String str, String str2) {
        a("loadBanner");
        this.f11185d = false;
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
            a("loadBanner - bannerLayout is null or destroyed");
            this.f11184c.a(new IronSourceError(610, ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed"), this, false);
        } else if (this.f11182a == null) {
            a("loadBanner - mAdapter is null");
            this.f11184c.a(new IronSourceError(611, "adapter==null"), this, false);
        } else {
            this.f11186e = ironSourceBannerLayout;
            b();
            if (this.i != a.NO_INIT) {
                a(a.LOAD_IN_PROGRESS);
                this.f11182a.loadBanner(ironSourceBannerLayout, this.f11183b.getBannerSettings(), this);
                return;
            }
            a(a.INIT_IN_PROGRESS);
            c();
            this.f11182a.initBanners(str, str2, this.f11183b.getBannerSettings(), this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.i = aVar;
        a("state=" + aVar.name());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.ADAPTER_API, "BannerSmash " + a() + " " + str, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        try {
            d();
            Timer timer = new Timer();
            this.f11188g = timer;
            timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.l.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    com.ironsource.mediationsdk.sdk.a aVar;
                    IronSourceError ironSourceError;
                    cancel();
                    if (C1355l.this.i == a.INIT_IN_PROGRESS) {
                        C1355l.this.a(a.NO_INIT);
                        C1355l.this.a("init timed out");
                        aVar = C1355l.this.f11184c;
                        ironSourceError = new IronSourceError(607, "Timed out");
                    } else if (C1355l.this.i != a.LOAD_IN_PROGRESS) {
                        if (C1355l.this.i == a.LOADED) {
                            C1355l.this.a(a.LOAD_FAILED);
                            C1355l.this.a("reload timed out");
                            C1355l.this.f11184c.b(new IronSourceError(609, "Timed out"), C1355l.this, false);
                            return;
                        }
                        return;
                    } else {
                        C1355l.this.a(a.LOAD_FAILED);
                        C1355l.this.a("load timed out");
                        aVar = C1355l.this.f11184c;
                        ironSourceError = new IronSourceError(608, "Timed out");
                    }
                    aVar.a(ironSourceError, C1355l.this, false);
                }
            }, this.f11189h);
        } catch (Exception e2) {
            a("startLoadTimer", e2.getLocalizedMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdClicked() {
        com.ironsource.mediationsdk.sdk.a aVar = this.f11184c;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdLeftApplication() {
        com.ironsource.mediationsdk.sdk.a aVar = this.f11184c;
        if (aVar != null) {
            aVar.d(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdLoadFailed(IronSourceError ironSourceError) {
        a("onBannerAdLoadFailed()");
        d();
        boolean z = ironSourceError.getErrorCode() == 606;
        if (this.i == a.LOAD_IN_PROGRESS) {
            a(a.LOAD_FAILED);
            this.f11184c.a(ironSourceError, this, z);
        } else if (this.i == a.LOADED) {
            this.f11184c.b(ironSourceError, this, z);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdLoaded(View view, FrameLayout.LayoutParams layoutParams) {
        a("onBannerAdLoaded()");
        d();
        if (this.i == a.LOAD_IN_PROGRESS) {
            a(a.LOADED);
            this.f11184c.a(this, view, layoutParams);
        } else if (this.i == a.LOADED) {
            this.f11184c.a(this, view, layoutParams, this.f11182a.shouldBindBannerViewOnReload());
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdScreenDismissed() {
        com.ironsource.mediationsdk.sdk.a aVar = this.f11184c;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdScreenPresented() {
        com.ironsource.mediationsdk.sdk.a aVar = this.f11184c;
        if (aVar != null) {
            aVar.c(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdShown() {
        com.ironsource.mediationsdk.sdk.a aVar = this.f11184c;
        if (aVar != null) {
            aVar.e(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerInitFailed(IronSourceError ironSourceError) {
        d();
        if (this.i == a.INIT_IN_PROGRESS) {
            this.f11184c.a(new IronSourceError(612, "Banner init failed"), this, false);
            a(a.NO_INIT);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerInitSuccess() {
        d();
        if (this.i == a.INIT_IN_PROGRESS) {
            IronSourceBannerLayout ironSourceBannerLayout = this.f11186e;
            if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
                this.f11184c.a(new IronSourceError(605, this.f11186e == null ? "banner is null" : "banner is destroyed"), this, false);
                return;
            }
            b();
            a(a.LOAD_IN_PROGRESS);
            this.f11182a.loadBanner(this.f11186e, this.f11183b.getBannerSettings(), this);
        }
    }
}
