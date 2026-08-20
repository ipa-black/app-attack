package com.adcolony.sdk;

import com.adcolony.sdk.e0;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
/* loaded from: classes.dex */
public class AdColonyZone {
    public static final int BANNER = 1;
    public static final int INTERSTITIAL = 0;
    @Deprecated
    public static final int NATIVE = 2;

    /* renamed from: a  reason: collision with root package name */
    private String f116a;

    /* renamed from: b  reason: collision with root package name */
    private String f117b;

    /* renamed from: c  reason: collision with root package name */
    private int f118c = 5;

    /* renamed from: d  reason: collision with root package name */
    private int f119d;

    /* renamed from: e  reason: collision with root package name */
    private int f120e;

    /* renamed from: f  reason: collision with root package name */
    private int f121f;

    /* renamed from: g  reason: collision with root package name */
    private int f122g;

    /* renamed from: h  reason: collision with root package name */
    private int f123h;
    private int i;
    private boolean j;
    private boolean k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyZone(String str) {
        this.f116a = str;
    }

    private int a(int i) {
        if (!a.d() || a.b().E() || a.b().F()) {
            b();
            return 0;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        this.i = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i) {
        this.f118c = i;
    }

    public int getPlayFrequency() {
        return a(this.f122g);
    }

    public int getRemainingViewsUntilReward() {
        return a(this.f120e);
    }

    public int getRewardAmount() {
        return a(this.f123h);
    }

    public String getRewardName() {
        return a(this.f117b);
    }

    public int getViewsPerReward() {
        return a(this.f121f);
    }

    public String getZoneID() {
        return a(this.f116a);
    }

    public int getZoneType() {
        return this.f119d;
    }

    public boolean isRewarded() {
        return this.k;
    }

    public boolean isValid() {
        return a(this.j);
    }

    private void b() {
        new e0.a().a("The AdColonyZone API is not available while AdColony is disabled.").a(e0.f297h);
    }

    private boolean a(boolean z) {
        if (!a.d() || a.b().E() || a.b().F()) {
            b();
            return false;
        }
        return z;
    }

    private String a(String str) {
        return a(str, "");
    }

    private String a(String str, String str2) {
        if (!a.d() || a.b().E() || a.b().F()) {
            b();
            return str2;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(h0 h0Var) {
        f1 a2 = h0Var.a();
        f1 f2 = c0.f(a2, "reward");
        this.f117b = c0.h(f2, "reward_name");
        this.f123h = c0.d(f2, "reward_amount");
        this.f121f = c0.d(f2, "views_per_reward");
        this.f120e = c0.d(f2, "views_until_reward");
        this.k = c0.b(a2, "rewarded");
        this.f118c = c0.d(a2, "status");
        this.f119d = c0.d(a2, SessionDescription.ATTR_TYPE);
        this.f122g = c0.d(a2, "play_interval");
        this.f116a = c0.h(a2, "zone_id");
        this.j = this.f118c != 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.i;
    }
}
