package com.ironsource.mediationsdk;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.RewardedVideoListener;
/* loaded from: classes3.dex */
public final class aa {

    /* renamed from: b  reason: collision with root package name */
    private static final aa f10947b = new aa();

    /* renamed from: a  reason: collision with root package name */
    public RewardedVideoListener f10948a = null;

    private aa() {
    }

    public static aa a() {
        return f10947b;
    }

    static /* synthetic */ void a(aa aaVar, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public final void a(final IronSourceError ironSourceError) {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.10
            @Override // java.lang.Runnable
            public final void run() {
                if (aa.this.f10948a != null) {
                    aa.this.f10948a.onRewardedVideoAdShowFailed(ironSourceError);
                    aa.a(aa.this, "onRewardedVideoAdShowFailed() error=" + ironSourceError.getErrorMessage());
                }
            }
        });
    }

    public final void a(final Placement placement) {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.9
            @Override // java.lang.Runnable
            public final void run() {
                if (aa.this.f10948a != null) {
                    aa.this.f10948a.onRewardedVideoAdRewarded(placement);
                    aa.a(aa.this, "onRewardedVideoAdRewarded(" + placement + ")");
                }
            }
        });
    }

    public final void a(final boolean z) {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.6
            @Override // java.lang.Runnable
            public final void run() {
                if (aa.this.f10948a != null) {
                    aa.this.f10948a.onRewardedVideoAvailabilityChanged(z);
                    aa.a(aa.this, "onRewardedVideoAvailabilityChanged() available=" + z);
                }
            }
        });
    }

    public final void b() {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.4
            @Override // java.lang.Runnable
            public final void run() {
                if (aa.this.f10948a != null) {
                    aa.this.f10948a.onRewardedVideoAdOpened();
                    aa.a(aa.this, "onRewardedVideoAdOpened()");
                }
            }
        });
    }

    public final void b(final Placement placement) {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.2
            @Override // java.lang.Runnable
            public final void run() {
                if (aa.this.f10948a != null) {
                    aa.this.f10948a.onRewardedVideoAdClicked(placement);
                    aa.a(aa.this, "onRewardedVideoAdClicked(" + placement + ")");
                }
            }
        });
    }

    public final void c() {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.5
            @Override // java.lang.Runnable
            public final void run() {
                if (aa.this.f10948a != null) {
                    aa.this.f10948a.onRewardedVideoAdClosed();
                    aa.a(aa.this, "onRewardedVideoAdClosed()");
                }
            }
        });
    }

    public final void d() {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.7
            @Override // java.lang.Runnable
            public final void run() {
                if (aa.this.f10948a != null) {
                    aa.this.f10948a.onRewardedVideoAdStarted();
                    aa.a(aa.this, "onRewardedVideoAdStarted()");
                }
            }
        });
    }

    public final void e() {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.8
            @Override // java.lang.Runnable
            public final void run() {
                if (aa.this.f10948a != null) {
                    aa.this.f10948a.onRewardedVideoAdEnded();
                    aa.a(aa.this, "onRewardedVideoAdEnded()");
                }
            }
        });
    }
}
