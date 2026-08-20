package com.ironsource.mediationsdk;

import com.ironsource.mediationsdk.C1366w;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import java.util.Date;
import java.util.List;
import java.util.TimerTask;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.v  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1365v extends C1366w implements RewardedVideoSmashListener {
    private com.ironsource.mediationsdk.sdk.d i;
    private long j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1365v(String str, String str2, NetworkSettings networkSettings, com.ironsource.mediationsdk.sdk.d dVar, int i, AbstractAdapter abstractAdapter) {
        super(new com.ironsource.mediationsdk.model.a(networkSettings, networkSettings.getInterstitialSettings(), IronSource.AD_UNIT.REWARDED_VIDEO), abstractAdapter);
        this.f11477b = new com.ironsource.mediationsdk.model.a(networkSettings, networkSettings.getRewardedVideoSettings(), IronSource.AD_UNIT.REWARDED_VIDEO);
        this.f11478c = this.f11477b.f11236b;
        this.f11476a = abstractAdapter;
        this.i = dVar;
        this.f11479d = i;
        this.f11476a.initRewardedVideoForDemandOnly(str, str2, this.f11478c, this);
    }

    private void c(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "DemandOnlyRewardedVideoSmash " + this.f11477b.f11235a.getProviderName() + " : " + str, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "DemandOnlyRewardedVideoSmash " + this.f11477b.f11235a.getProviderName() + " : " + str, 0);
    }

    public final void a() {
        d("showRewardedVideo state=" + g());
        if (a(C1366w.a.LOADED, C1366w.a.SHOW_IN_PROGRESS)) {
            this.f11476a.showRewardedVideo(this.f11478c, this);
            return;
        }
        this.i.a(new IronSourceError(IronSourceError.ERROR_DO_RV_CALL_LOAD_BEFORE_SHOW, "load must be called before show"), this);
    }

    public final void a(String str, String str2, JSONObject jSONObject, List<String> list) {
        d("loadRewardedVideo state=" + g());
        C1366w.a a2 = a(new C1366w.a[]{C1366w.a.NOT_LOADED, C1366w.a.LOADED}, C1366w.a.LOAD_IN_PROGRESS);
        if (a2 != C1366w.a.NOT_LOADED && a2 != C1366w.a.LOADED) {
            if (a2 == C1366w.a.LOAD_IN_PROGRESS) {
                this.i.a(new IronSourceError(IronSourceError.ERROR_DO_RV_LOAD_ALREADY_IN_PROGRESS, "load already in progress"), this, 0L);
                return;
            } else {
                this.i.a(new IronSourceError(IronSourceError.ERROR_DO_RV_LOAD_DURING_SHOW, "cannot load because show is in progress"), this, 0L);
                return;
            }
        }
        this.j = new Date().getTime();
        d("start timer");
        a(new TimerTask() { // from class: com.ironsource.mediationsdk.v.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                C1365v.this.d("load timed out state=" + C1365v.this.g());
                if (C1365v.this.a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.NOT_LOADED)) {
                    C1365v.this.i.a(new IronSourceError(IronSourceError.ERROR_DO_RV_LOAD_TIMED_OUT, "load timed out"), C1365v.this, new Date().getTime() - C1365v.this.j);
                }
            }
        });
        if (!i()) {
            this.f11476a.loadRewardedVideoForDemandOnly(this.f11478c, this);
            return;
        }
        this.f11480e = str2;
        this.f11481f = jSONObject;
        this.f11482g = list;
        this.f11476a.loadRewardedVideoForDemandOnlyForBidding(this.f11478c, this, str);
    }

    public final boolean b() {
        return this.f11476a.isRewardedVideoAvailable(this.f11478c);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdClicked() {
        c("onRewardedVideoAdClicked");
        this.i.c(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdClosed() {
        a(C1366w.a.NOT_LOADED);
        c("onRewardedVideoAdClosed");
        this.i.b(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdEnded() {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdOpened() {
        c("onRewardedVideoAdOpened");
        this.i.a(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdRewarded() {
        c("onRewardedVideoAdRewarded");
        this.i.e(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        a(C1366w.a.NOT_LOADED);
        c("onRewardedVideoAdClosed error=" + ironSourceError);
        this.i.a(ironSourceError, this);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdStarted() {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAdVisible() {
        c("onRewardedVideoAdVisible");
        this.i.d(this);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoAvailabilityChanged(boolean z) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoInitFailed(IronSourceError ironSourceError) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoInitSuccess() {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoLoadFailed(IronSourceError ironSourceError) {
        c("onRewardedVideoLoadFailed error=" + ironSourceError.getErrorMessage() + " state=" + g());
        h();
        if (a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.NOT_LOADED)) {
            this.i.a(ironSourceError, this, new Date().getTime() - this.j);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public final void onRewardedVideoLoadSuccess() {
        c("onRewardedVideoLoadSuccess state=" + g());
        h();
        if (a(C1366w.a.LOAD_IN_PROGRESS, C1366w.a.LOADED)) {
            this.i.a(this, new Date().getTime() - this.j);
        }
    }
}
