package com.ironsource.mediationsdk;

import android.os.Handler;
import android.os.Looper;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener;
/* loaded from: classes3.dex */
public final class Z {

    /* renamed from: b  reason: collision with root package name */
    private static final Z f10877b = new Z();

    /* renamed from: a  reason: collision with root package name */
    ISDemandOnlyRewardedVideoListener f10878a = null;

    private Z() {
    }

    public static Z a() {
        return f10877b;
    }

    static /* synthetic */ void a(Z z, String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public final void a(final String str, final IronSourceError ironSourceError) {
        if (this.f10878a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.Z.2
                @Override // java.lang.Runnable
                public final void run() {
                    Z.this.f10878a.onRewardedVideoAdLoadFailed(str, ironSourceError);
                    Z.a(Z.this, "onRewardedVideoAdLoadFailed() instanceId=" + str + "error=" + ironSourceError.getErrorMessage());
                }
            });
        }
    }

    public final void b(final String str, final IronSourceError ironSourceError) {
        if (this.f10878a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.Z.5
                @Override // java.lang.Runnable
                public final void run() {
                    Z.this.f10878a.onRewardedVideoAdShowFailed(str, ironSourceError);
                    Z.a(Z.this, "onRewardedVideoAdShowFailed() instanceId=" + str + "error=" + ironSourceError.getErrorMessage());
                }
            });
        }
    }
}
