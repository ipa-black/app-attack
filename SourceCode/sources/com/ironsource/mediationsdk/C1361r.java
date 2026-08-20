package com.ironsource.mediationsdk;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.ironsource.mediationsdk.C1366w;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.r  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1361r extends C1366w implements BannerSmashListener {
    private com.ironsource.mediationsdk.sdk.b i;
    private long j;
    private String k;
    private String l;
    private JSONObject m;

    public C1361r(String str, String str2, NetworkSettings networkSettings, com.ironsource.mediationsdk.sdk.b bVar, int i, AbstractAdapter abstractAdapter) {
        super(new com.ironsource.mediationsdk.model.a(networkSettings, networkSettings.getBannerSettings(), IronSource.AD_UNIT.BANNER), abstractAdapter);
        this.i = bVar;
        this.f11479d = i;
        this.k = str;
        this.l = str2;
        this.m = networkSettings.getBannerSettings();
        this.f11476a.initBannerForBidding(str, str2, this.f11478c, this);
    }

    public final void a() {
        IronLog.INTERNAL.verbose("");
        if (this.f11476a == null) {
            IronLog.INTERNAL.error("destroyBanner() mAdapter == null");
        } else if (!a(C1366w.a.LOADED, C1366w.a.NOT_LOADED) && !a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.NOT_LOADED)) {
            IronLog.INTERNAL.error("cannot destroy banner not loaded");
        } else {
            h();
            this.f11476a.destroyBanner(this.f11477b.f11235a.getBannerSettings());
        }
    }

    public final void a(IronSourceBannerLayout ironSourceBannerLayout, String str, String str2, JSONObject jSONObject, List<String> list) {
        IronLog.INTERNAL.verbose("loadBanner state=" + g());
        C1366w.a a2 = a(new C1366w.a[]{C1366w.a.NOT_LOADED, C1366w.a.LOADED}, C1366w.a.LOAD_IN_PROGRESS);
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) {
            IronLog.INTERNAL.error("loadBanner - bannerLayout is null or destroyed");
            this.i.a(new IronSourceError(610, ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed"), this, false, new Date().getTime() - this.j);
        } else if (str == null) {
            IronLog.INTERNAL.error("loadBanner - serverData is null");
            this.i.a(new IronSourceError(618, "serverData==null"), this, false, new Date().getTime() - this.j);
        } else if (this.f11476a == null) {
            IronLog.INTERNAL.error("loadBanner - mAdapter is null");
            this.i.a(new IronSourceError(611, "adapter==null"), this, false, new Date().getTime() - this.j);
        } else if (a2 != C1366w.a.NOT_LOADED) {
            this.i.a(a2 == C1366w.a.LOAD_IN_PROGRESS ? new IronSourceError(619, "load already in progress") : new IronSourceError(IronSourceError.ERROR_DO_BN_LOAD_DURING_SHOW, "load while show"), this, false, new Date().getTime() - this.j);
        } else {
            this.j = new Date().getTime();
            IronLog.INTERNAL.verbose("start timer");
            a(new TimerTask() { // from class: com.ironsource.mediationsdk.r.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    IronLog.INTERNAL.verbose("load timed out state=" + C1361r.this.g());
                    if (C1361r.this.a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.NOT_LOADED)) {
                        C1361r.this.i.a(new IronSourceError(608, "load timed out"), C1361r.this, false, new Date().getTime() - C1361r.this.j);
                    }
                }
            });
            this.f11480e = str2;
            this.f11481f = jSONObject;
            this.f11482g = list;
            this.f11476a.initBannerForBidding(this.k, this.l, this.m, this);
            this.f11476a.loadBannerForBidding(ironSourceBannerLayout, this.m, this, str);
        }
    }

    public final String b() {
        return this.f11477b.f11235a.isMultipleInstances() ? this.f11477b.f11235a.getProviderTypeForReflection() : this.f11477b.f11235a.getProviderName();
    }

    @Override // com.ironsource.mediationsdk.C1366w
    public final Map<String, Object> c() {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("providerAdapterVersion", this.f11476a != null ? this.f11476a.getVersion() : "");
            hashMap.put("providerSDKVersion", this.f11476a != null ? this.f11476a.getCoreSDKVersion() : "");
            hashMap.put("spId", this.f11477b.f11235a.getSubProviderId());
            hashMap.put(IronSourceConstants.EVENTS_PROVIDER, this.f11477b.f11235a.getAdSourceNameForEvents());
            hashMap.put(IronSourceConstants.EVENTS_DEMAND_ONLY, 1);
            hashMap.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
            hashMap.put("instanceType", 2);
            if (!TextUtils.isEmpty(this.f11480e)) {
                hashMap.put(IronSourceConstants.EVENTS_AUCTION_ID, this.f11480e);
            }
            if (this.f11481f != null && this.f11481f.length() > 0) {
                hashMap.put(IronSourceConstants.EVENTS_GENERIC_PARAMS, this.f11481f);
            }
            if (!TextUtils.isEmpty(this.f11483h)) {
                hashMap.put(IronSourceConstants.EVENTS_DYNAMIC_DEMAND_SOURCE_ID, this.f11483h);
            }
        } catch (Exception e2) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getProviderEventData " + d() + ")", e2);
        }
        return hashMap;
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdClicked() {
        com.ironsource.mediationsdk.sdk.b bVar = this.i;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdLeftApplication() {
        com.ironsource.mediationsdk.sdk.b bVar = this.i;
        if (bVar != null) {
            bVar.d(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("");
        if (a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.NOT_LOADED)) {
            h();
            boolean z = ironSourceError.getErrorCode() == 606;
            if (this.i != null) {
                this.i.a(ironSourceError, this, z, new Date().getTime() - this.j);
            }
            a(C1366w.a.NOT_LOADED);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdLoaded(View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.INTERNAL.verbose("");
        if (a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.LOADED)) {
            com.ironsource.mediationsdk.sdk.b bVar = this.i;
            if (bVar != null) {
                bVar.a(this, view, layoutParams);
            }
            h();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdScreenDismissed() {
        com.ironsource.mediationsdk.sdk.b bVar = this.i;
        if (bVar != null) {
            bVar.b(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdScreenPresented() {
        com.ironsource.mediationsdk.sdk.b bVar = this.i;
        if (bVar != null) {
            bVar.c(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerAdShown() {
        com.ironsource.mediationsdk.sdk.b bVar = this.i;
        if (bVar != null) {
            bVar.e(this);
            this.i.c(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerInitFailed(IronSourceError ironSourceError) {
        IronLog.INTERNAL.verbose("");
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public final void onBannerInitSuccess() {
        IronLog.INTERNAL.verbose("");
    }
}
