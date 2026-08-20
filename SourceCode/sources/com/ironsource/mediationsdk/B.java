package com.ironsource.mediationsdk;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.InterstitialListener;
/* loaded from: classes3.dex */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    private static final B f10652a = new B();

    /* renamed from: b  reason: collision with root package name */
    private InterstitialListener f10653b = null;

    private B() {
    }

    public static synchronized B a() {
        B b2;
        synchronized (B.class) {
            b2 = f10652a;
        }
        return b2;
    }

    static /* synthetic */ void a(B b2, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public final void a(final IronSourceError ironSourceError) {
        if (this.f10653b != null) {
            com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.B.2
                @Override // java.lang.Runnable
                public final void run() {
                    B.this.f10653b.onInterstitialAdLoadFailed(ironSourceError);
                    B.a(B.this, "onInterstitialAdLoadFailed() error=" + ironSourceError.getErrorMessage());
                }
            });
        }
    }

    public final synchronized void a(InterstitialListener interstitialListener) {
        this.f10653b = interstitialListener;
    }

    public final void b() {
        if (this.f10653b != null) {
            com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.B.1
                @Override // java.lang.Runnable
                public final void run() {
                    B.this.f10653b.onInterstitialAdReady();
                    B.a(B.this, "onInterstitialAdReady()");
                }
            });
        }
    }

    public final void b(final IronSourceError ironSourceError) {
        if (this.f10653b != null) {
            com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.B.6
                @Override // java.lang.Runnable
                public final void run() {
                    B.this.f10653b.onInterstitialAdShowFailed(ironSourceError);
                    B.a(B.this, "onInterstitialAdShowFailed() error=" + ironSourceError.getErrorMessage());
                }
            });
        }
    }

    public final void c() {
        if (this.f10653b != null) {
            com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.B.3
                @Override // java.lang.Runnable
                public final void run() {
                    B.this.f10653b.onInterstitialAdOpened();
                    B.a(B.this, "onInterstitialAdOpened()");
                }
            });
        }
    }

    public final void d() {
        if (this.f10653b != null) {
            com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.B.4
                @Override // java.lang.Runnable
                public final void run() {
                    B.this.f10653b.onInterstitialAdClosed();
                    B.a(B.this, "onInterstitialAdClosed()");
                }
            });
        }
    }

    public final void e() {
        if (this.f10653b != null) {
            com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.B.5
                @Override // java.lang.Runnable
                public final void run() {
                    B.this.f10653b.onInterstitialAdShowSucceeded();
                    B.a(B.this, "onInterstitialAdShowSucceeded()");
                }
            });
        }
    }

    public final void f() {
        if (this.f10653b != null) {
            com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.B.7
                @Override // java.lang.Runnable
                public final void run() {
                    B.this.f10653b.onInterstitialAdClicked();
                    B.a(B.this, "onInterstitialAdClicked()");
                }
            });
        }
    }
}
