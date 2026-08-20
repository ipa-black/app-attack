package com.ironsource.mediationsdk;

import android.os.Handler;
import android.os.Looper;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener;
/* loaded from: classes3.dex */
public final class A {

    /* renamed from: b  reason: collision with root package name */
    private static final A f10636b = new A();

    /* renamed from: a  reason: collision with root package name */
    ISDemandOnlyInterstitialListener f10637a = null;

    private A() {
    }

    public static A a() {
        return f10636b;
    }

    static /* synthetic */ void a(A a2, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public final void a(final String str, final IronSourceError ironSourceError) {
        if (this.f10637a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.A.2
                @Override // java.lang.Runnable
                public final void run() {
                    A.this.f10637a.onInterstitialAdLoadFailed(str, ironSourceError);
                    A.a(A.this, "onInterstitialAdLoadFailed() instanceId=" + str + " error=" + ironSourceError.getErrorMessage());
                }
            });
        }
    }

    public final void b(final String str, final IronSourceError ironSourceError) {
        if (this.f10637a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.A.5
                @Override // java.lang.Runnable
                public final void run() {
                    A.this.f10637a.onInterstitialAdShowFailed(str, ironSourceError);
                    A.a(A.this, "onInterstitialAdShowFailed() instanceId=" + str + " error=" + ironSourceError.getErrorMessage());
                }
            });
        }
    }
}
