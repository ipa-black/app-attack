package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.HostRetryInfoProvider;
/* renamed from: com.yandex.metrica.impl.ob.pd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1785pd implements HostRetryInfoProvider {

    /* renamed from: a  reason: collision with root package name */
    private final C1507e9 f15372a;

    /* renamed from: b  reason: collision with root package name */
    private final EnumC1809qd f15373b;

    public C1785pd(C1507e9 c1507e9, EnumC1809qd enumC1809qd) {
        this.f15372a = c1507e9;
        this.f15373b = enumC1809qd;
    }

    @Override // com.yandex.metrica.networktasks.api.HostRetryInfoProvider
    public long getLastAttemptTimeSeconds() {
        return this.f15372a.a(this.f15373b, 0L);
    }

    @Override // com.yandex.metrica.networktasks.api.HostRetryInfoProvider
    public int getNextSendAttemptNumber() {
        return this.f15372a.a(this.f15373b, 1);
    }

    @Override // com.yandex.metrica.networktasks.api.HostRetryInfoProvider
    public void saveLastAttemptTimeSeconds(long j) {
        this.f15372a.b(this.f15373b, j);
    }

    @Override // com.yandex.metrica.networktasks.api.HostRetryInfoProvider
    public void saveNextSendAttemptNumber(int i) {
        this.f15372a.b(this.f15373b, i);
    }
}
