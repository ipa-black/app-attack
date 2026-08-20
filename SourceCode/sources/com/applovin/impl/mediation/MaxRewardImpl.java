package com.applovin.impl.mediation;

import com.applovin.mediation.MaxReward;
/* loaded from: classes.dex */
public class MaxRewardImpl implements MaxReward {

    /* renamed from: a  reason: collision with root package name */
    private final String f4636a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4637b;

    private MaxRewardImpl(int i, String str) {
        if (i < 0) {
            throw new IllegalArgumentException("Reward amount must be greater than or equal to 0");
        }
        this.f4636a = str;
        this.f4637b = i;
    }

    public static MaxReward create(int i, String str) {
        return new MaxRewardImpl(i, str);
    }

    public static MaxReward createDefault() {
        return create(0, "");
    }

    @Override // com.applovin.mediation.MaxReward
    public final int getAmount() {
        return this.f4637b;
    }

    @Override // com.applovin.mediation.MaxReward
    public final String getLabel() {
        return this.f4636a;
    }

    public String toString() {
        return "MaxReward{amount=" + this.f4637b + ", label=" + this.f4636a + "}";
    }
}
