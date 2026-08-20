package com.ironsource.mediationsdk;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.InterstitialListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoManualListener;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.ironsource.mediationsdk.p  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1359p {

    /* renamed from: c  reason: collision with root package name */
    private static final C1359p f11316c = new C1359p();

    /* renamed from: a  reason: collision with root package name */
    InterstitialListener f11317a = null;

    /* renamed from: b  reason: collision with root package name */
    RewardedVideoManualListener f11318b = null;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Long> f11319d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Boolean> f11320e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private int f11321f;

    /* renamed from: g  reason: collision with root package name */
    private int f11322g;

    private C1359p() {
    }

    public static synchronized C1359p a() {
        C1359p c1359p;
        synchronized (C1359p.class) {
            c1359p = f11316c;
        }
        return c1359p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(IronSource.AD_UNIT ad_unit, IronSourceError ironSourceError) {
        this.f11319d.put(ad_unit.toString(), Long.valueOf(System.currentTimeMillis()));
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            if (this.f11317a == null) {
                IronLog.INTERNAL.error("mInterstitialListener is null");
                return;
            }
            IronLog.CALLBACK.info("onInterstitialAdLoadFailed - error = " + ironSourceError.toString());
            this.f11317a.onInterstitialAdLoadFailed(ironSourceError);
        } else if (ad_unit != IronSource.AD_UNIT.REWARDED_VIDEO) {
            IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
        } else if (this.f11318b == null) {
            IronLog.INTERNAL.warning("mRewardedVideoListener is null");
        } else {
            IronLog.CALLBACK.info("onRewardedVideoAdLoadFailed - error = " + ironSourceError.toString());
            this.f11318b.onRewardedVideoAdLoadFailed(ironSourceError);
        }
    }

    public final void a(IronSource.AD_UNIT ad_unit, int i) {
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            this.f11321f = i;
        } else if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.f11322g = i;
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
        }
    }

    public final synchronized void a(final IronSource.AD_UNIT ad_unit, final IronSourceError ironSourceError) {
        int i;
        if (a(ad_unit)) {
            return;
        }
        final String ad_unit2 = ad_unit.toString();
        if (!this.f11319d.containsKey(ad_unit2)) {
            b(ad_unit, ironSourceError);
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            i = this.f11321f;
        } else if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            i = this.f11322g;
        } else {
            IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
            i = 0;
        }
        long j = i * 1000;
        long currentTimeMillis = System.currentTimeMillis() - this.f11319d.get(ad_unit2).longValue();
        if (currentTimeMillis > j) {
            b(ad_unit, ironSourceError);
            return;
        }
        this.f11320e.put(ad_unit2, Boolean.TRUE);
        long j2 = j - currentTimeMillis;
        IronLog.INTERNAL.verbose("delaying callback by " + j2);
        com.ironsource.environment.e.c cVar = com.ironsource.environment.e.c.f10584a;
        com.ironsource.environment.e.c.a(new Runnable() { // from class: com.ironsource.mediationsdk.p.1
            @Override // java.lang.Runnable
            public final void run() {
                C1359p.this.b(ad_unit, ironSourceError);
                C1359p.this.f11320e.put(ad_unit2, Boolean.FALSE);
            }
        }, j2);
    }

    public final synchronized boolean a(IronSource.AD_UNIT ad_unit) {
        if (this.f11320e.containsKey(ad_unit.toString())) {
            return this.f11320e.get(ad_unit.toString()).booleanValue();
        }
        return false;
    }
}
