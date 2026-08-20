package com.adcolony.sdk;

import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes.dex */
public class AdColonyReward {

    /* renamed from: a  reason: collision with root package name */
    private int f109a;

    /* renamed from: b  reason: collision with root package name */
    private String f110b;

    /* renamed from: c  reason: collision with root package name */
    private String f111c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f112d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyReward(h0 h0Var) {
        f1 a2 = h0Var.a();
        this.f109a = c0.d(a2, "reward_amount");
        this.f110b = c0.h(a2, "reward_name");
        this.f112d = c0.b(a2, FirebaseAnalytics.Param.SUCCESS);
        this.f111c = c0.h(a2, "zone_id");
    }

    public int getRewardAmount() {
        return this.f109a;
    }

    public String getRewardName() {
        return this.f110b;
    }

    public String getZoneID() {
        return this.f111c;
    }

    public boolean success() {
        return this.f112d;
    }
}
