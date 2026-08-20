package com.ironsource.mediationsdk;

import com.ironsource.mediationsdk.C1366w;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import java.util.Date;
import java.util.List;
import java.util.TimerTask;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.t  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1363t extends C1366w implements InterstitialSmashListener {
    private com.ironsource.mediationsdk.sdk.c i;
    private long j;

    public C1363t(String str, String str2, NetworkSettings networkSettings, com.ironsource.mediationsdk.sdk.c cVar, int i, AbstractAdapter abstractAdapter) {
        super(new com.ironsource.mediationsdk.model.a(networkSettings, networkSettings.getInterstitialSettings(), IronSource.AD_UNIT.INTERSTITIAL), abstractAdapter);
        this.i = cVar;
        this.f11479d = i;
        this.f11476a.initInterstitial(str, str2, this.f11478c, this);
    }

    private void c(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "DemandOnlyInterstitialSmash " + this.f11477b.f11235a.getProviderName() + " : " + str, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "DemandOnlyInterstitialSmash " + this.f11477b.f11235a.getProviderName() + " : " + str, 0);
    }

    public final void a() {
        d("showInterstitial state=" + g());
        if (a(C1366w.a.LOADED, C1366w.a.SHOW_IN_PROGRESS)) {
            this.f11476a.showInterstitial(this.f11478c, this);
            return;
        }
        this.i.a(new IronSourceError(IronSourceError.ERROR_DO_IS_CALL_LOAD_BEFORE_SHOW, "load must be called before show"), this);
    }

    public final void a(String str, String str2, JSONObject jSONObject, List<String> list) {
        d("loadInterstitial state=" + g());
        C1366w.a a2 = a(new C1366w.a[]{C1366w.a.NOT_LOADED, C1366w.a.LOADED}, C1366w.a.LOAD_IN_PROGRESS);
        if (a2 != C1366w.a.NOT_LOADED && a2 != C1366w.a.LOADED) {
            if (a2 == C1366w.a.LOAD_IN_PROGRESS) {
                this.i.a(new IronSourceError(IronSourceError.ERROR_DO_IS_LOAD_ALREADY_IN_PROGRESS, "load already in progress"), this, 0L);
                return;
            } else {
                this.i.a(new IronSourceError(IronSourceError.ERROR_DO_IS_LOAD_ALREADY_IN_PROGRESS, "cannot load because show is in progress"), this, 0L);
                return;
            }
        }
        this.j = new Date().getTime();
        d("start timer");
        a(new TimerTask() { // from class: com.ironsource.mediationsdk.t.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                C1363t.this.d("load timed out state=" + C1363t.this.g());
                if (C1363t.this.a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.NOT_LOADED)) {
                    C1363t.this.i.a(new IronSourceError(IronSourceError.ERROR_DO_IS_LOAD_TIMED_OUT, "load timed out"), C1363t.this, new Date().getTime() - C1363t.this.j);
                }
            }
        });
        if (!i()) {
            this.f11476a.loadInterstitial(this.f11478c, this);
            return;
        }
        this.f11480e = str2;
        this.f11481f = jSONObject;
        this.f11482g = list;
        this.f11476a.loadInterstitialForBidding(this.f11478c, this, str);
    }

    public final boolean b() {
        return this.f11476a.isInterstitialReady(this.f11478c);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdClicked() {
        c("onInterstitialAdClicked");
        this.i.c(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdClosed() {
        a(C1366w.a.NOT_LOADED);
        c("onInterstitialAdClosed");
        this.i.b(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        c("onInterstitialAdLoadFailed error=" + ironSourceError.getErrorMessage() + " state=" + g());
        h();
        if (a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.NOT_LOADED)) {
            this.i.a(ironSourceError, this, new Date().getTime() - this.j);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdOpened() {
        c("onInterstitialAdOpened");
        this.i.a(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdReady() {
        c("onInterstitialAdReady state=" + g());
        h();
        if (a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.LOADED)) {
            this.i.a(this, new Date().getTime() - this.j);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        a(C1366w.a.NOT_LOADED);
        c("onInterstitialAdShowFailed error=" + ironSourceError.getErrorMessage());
        this.i.a(ironSourceError, this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdShowSucceeded() {
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdVisible() {
        c("onInterstitialAdVisible");
        this.i.d(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialInitFailed(IronSourceError ironSourceError) {
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialInitSuccess() {
    }
}
