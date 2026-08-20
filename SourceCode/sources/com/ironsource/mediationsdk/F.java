package com.ironsource.mediationsdk;

import com.appnext.core.AppnextError;
import com.ironsource.mediationsdk.AbstractC1345b;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class F extends AbstractC1345b implements InterstitialSmashListener {
    JSONObject r;
    com.ironsource.mediationsdk.sdk.h s;
    long t;
    private int u;

    /* JADX INFO: Access modifiers changed from: package-private */
    public F(NetworkSettings networkSettings, int i) {
        super(networkSettings);
        JSONObject interstitialSettings = networkSettings.getInterstitialSettings();
        this.r = interstitialSettings;
        this.k = interstitialSettings.optInt("maxAdsPerIteration", 99);
        this.l = this.r.optInt("maxAdsPerSession", 99);
        this.m = this.r.optInt("maxAdsPerDay", 99);
        this.f11078e = networkSettings.isMultipleInstances();
        this.f11079f = networkSettings.getSubProviderId();
        this.u = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.ironsource.mediationsdk.AbstractC1345b
    public final void g() {
        this.f11081h = 0;
        a(AbstractC1345b.a.INITIATED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.ironsource.mediationsdk.AbstractC1345b
    public final void h() {
        try {
            e();
            this.i = new Timer();
            this.i.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.F.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    cancel();
                    if (F.this.f11074a != AbstractC1345b.a.INIT_PENDING || F.this.s == null) {
                        return;
                    }
                    F.this.a(AbstractC1345b.a.INIT_FAILED);
                    F.this.s.a(ErrorBuilder.buildInitFailedError(AppnextError.TIMEOUT, "Interstitial"), F.this);
                }
            }, this.u * 1000);
        } catch (Exception e2) {
            a("startInitTimer", e2.getLocalizedMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.ironsource.mediationsdk.AbstractC1345b
    public final void i() {
        try {
            f();
            this.j = new Timer();
            this.j.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.F.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    cancel();
                    if (F.this.f11074a != AbstractC1345b.a.LOAD_PENDING || F.this.s == null) {
                        return;
                    }
                    F.this.a(AbstractC1345b.a.NOT_AVAILABLE);
                    F.this.s.a(ErrorBuilder.buildLoadFailedError(AppnextError.TIMEOUT), F.this, new Date().getTime() - F.this.t);
                }
            }, this.u * 1000);
        } catch (Exception e2) {
            a("startLoadTimer", e2.getLocalizedMessage());
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractC1345b
    protected final String k() {
        return "interstitial";
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdClicked() {
        com.ironsource.mediationsdk.sdk.h hVar = this.s;
        if (hVar != null) {
            hVar.e(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdClosed() {
        com.ironsource.mediationsdk.sdk.h hVar = this.s;
        if (hVar != null) {
            hVar.c(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        f();
        if (this.f11074a != AbstractC1345b.a.LOAD_PENDING || this.s == null) {
            return;
        }
        this.s.a(ironSourceError, this, new Date().getTime() - this.t);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdOpened() {
        com.ironsource.mediationsdk.sdk.h hVar = this.s;
        if (hVar != null) {
            hVar.b(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdReady() {
        f();
        if (this.f11074a != AbstractC1345b.a.LOAD_PENDING || this.s == null) {
            return;
        }
        this.s.a(this, new Date().getTime() - this.t);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        com.ironsource.mediationsdk.sdk.h hVar = this.s;
        if (hVar != null) {
            hVar.b(ironSourceError, this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdShowSucceeded() {
        com.ironsource.mediationsdk.sdk.h hVar = this.s;
        if (hVar != null) {
            hVar.d(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialAdVisible() {
        com.ironsource.mediationsdk.sdk.h hVar = this.s;
        if (hVar != null) {
            hVar.f(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialInitFailed(IronSourceError ironSourceError) {
        e();
        if (this.f11074a == AbstractC1345b.a.INIT_PENDING) {
            a(AbstractC1345b.a.INIT_FAILED);
            com.ironsource.mediationsdk.sdk.h hVar = this.s;
            if (hVar != null) {
                hVar.a(ironSourceError, this);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialSmashListener
    public final void onInterstitialInitSuccess() {
        e();
        if (this.f11074a == AbstractC1345b.a.INIT_PENDING) {
            a(AbstractC1345b.a.INITIATED);
            com.ironsource.mediationsdk.sdk.h hVar = this.s;
            if (hVar != null) {
                hVar.a(this);
            }
        }
    }
}
