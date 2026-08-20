package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.ExponentialBackoffDataHolder;
import com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
/* renamed from: com.yandex.metrica.impl.ob.ld  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1685ld implements ExponentialBackoffPolicy {

    /* renamed from: a  reason: collision with root package name */
    private final ExponentialBackoffDataHolder f15082a;

    public C1685ld(ExponentialBackoffDataHolder exponentialBackoffDataHolder) {
        this.f15082a = exponentialBackoffDataHolder;
    }

    @Override // com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy
    public boolean canBeExecuted(RetryPolicyConfig retryPolicyConfig) {
        return this.f15082a.wasLastAttemptLongAgoEnough(retryPolicyConfig);
    }

    @Override // com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy
    public void onAllHostsAttemptsFinished(boolean z) {
        if (z) {
            this.f15082a.reset();
        } else {
            this.f15082a.updateLastAttemptInfo();
        }
    }

    @Override // com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy
    public void onHostAttemptFinished(boolean z) {
    }
}
