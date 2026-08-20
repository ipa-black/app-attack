package com.ironsource.mediationsdk.utils;

import com.ironsource.mediationsdk.IronSource;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f11398a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11399b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11400c = false;

    public final void a(IronSource.AD_UNIT ad_unit, boolean z) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.f11398a = z;
        } else if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            this.f11399b = z;
        } else if (ad_unit == IronSource.AD_UNIT.BANNER) {
            this.f11400c = z;
        }
    }

    public final boolean a(IronSource.AD_UNIT ad_unit) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            return this.f11398a;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            return this.f11399b;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            return this.f11400c;
        }
        return false;
    }
}
