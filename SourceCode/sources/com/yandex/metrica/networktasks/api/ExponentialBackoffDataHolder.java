package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.impl.g;
import com.yandex.metrica.networktasks.impl.h;
/* loaded from: classes5.dex */
public class ExponentialBackoffDataHolder {

    /* renamed from: a  reason: collision with root package name */
    private final g f16227a;

    /* renamed from: b  reason: collision with root package name */
    private final h f16228b;

    /* renamed from: c  reason: collision with root package name */
    private final HostRetryInfoProvider f16229c;

    /* renamed from: d  reason: collision with root package name */
    private long f16230d;

    /* renamed from: e  reason: collision with root package name */
    private int f16231e;

    public ExponentialBackoffDataHolder(HostRetryInfoProvider hostRetryInfoProvider) {
        this(hostRetryInfoProvider, new h(), new g());
    }

    ExponentialBackoffDataHolder(HostRetryInfoProvider hostRetryInfoProvider, h hVar, g gVar) {
        this.f16229c = hostRetryInfoProvider;
        this.f16228b = hVar;
        this.f16227a = gVar;
        this.f16230d = hostRetryInfoProvider.getLastAttemptTimeSeconds();
        this.f16231e = hostRetryInfoProvider.getNextSendAttemptNumber();
    }

    public void reset() {
        this.f16231e = 1;
        this.f16230d = 0L;
        this.f16229c.saveNextSendAttemptNumber(1);
        this.f16229c.saveLastAttemptTimeSeconds(this.f16230d);
    }

    public void updateLastAttemptInfo() {
        this.f16228b.getClass();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        this.f16230d = currentTimeMillis;
        this.f16231e++;
        this.f16229c.saveLastAttemptTimeSeconds(currentTimeMillis);
        this.f16229c.saveNextSendAttemptNumber(this.f16231e);
    }

    public boolean wasLastAttemptLongAgoEnough(RetryPolicyConfig retryPolicyConfig) {
        if (retryPolicyConfig != null) {
            long j = this.f16230d;
            if (j != 0) {
                g gVar = this.f16227a;
                int i = retryPolicyConfig.exponentialMultiplier * ((1 << (this.f16231e - 1)) - 1);
                int i2 = retryPolicyConfig.maxIntervalSeconds;
                if (i > i2) {
                    i = i2;
                }
                return gVar.a(j, i, "last send attempt");
            }
        }
        return true;
    }
}
