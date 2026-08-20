package com.ironsource.mediationsdk.adunit.c;

import com.ironsource.mediationsdk.B;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.aa;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.RewardedVideoManualListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    IronSource.AD_UNIT f11003a;

    public b(IronSource.AD_UNIT ad_unit) {
        this.f11003a = ad_unit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final IronSourceError ironSourceError) {
        if (this.f11003a == IronSource.AD_UNIT.INTERSTITIAL) {
            B.a().a(ironSourceError);
        } else if (this.f11003a != IronSource.AD_UNIT.REWARDED_VIDEO) {
            IronLog.INTERNAL.warning("ad unit not supported - " + this.f11003a);
        } else {
            final aa a2 = aa.a();
            if (a2.f10948a instanceof RewardedVideoManualListener) {
                com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.aa.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (a2.f10948a != null) {
                            ((RewardedVideoManualListener) a2.f10948a).onRewardedVideoAdLoadFailed(ironSourceError);
                            aa.a(a2, "onRewardedVideoAdLoadFailed() error=" + ironSourceError.getErrorMessage());
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        if (this.f11003a == IronSource.AD_UNIT.REWARDED_VIDEO) {
            aa.a().a(z);
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + this.f11003a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(IronSourceError ironSourceError) {
        if (this.f11003a == IronSource.AD_UNIT.INTERSTITIAL) {
            B.a().b(ironSourceError);
        } else if (this.f11003a == IronSource.AD_UNIT.REWARDED_VIDEO) {
            aa.a().a(ironSourceError);
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + this.f11003a);
        }
    }
}
