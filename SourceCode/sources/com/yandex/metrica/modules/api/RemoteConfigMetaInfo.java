package com.yandex.metrica.modules.api;
/* loaded from: classes5.dex */
public final class RemoteConfigMetaInfo {

    /* renamed from: a  reason: collision with root package name */
    private final long f16190a;

    /* renamed from: b  reason: collision with root package name */
    private final long f16191b;

    public RemoteConfigMetaInfo(long j, long j2) {
        this.f16190a = j;
        this.f16191b = j2;
    }

    public static /* synthetic */ RemoteConfigMetaInfo copy$default(RemoteConfigMetaInfo remoteConfigMetaInfo, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = remoteConfigMetaInfo.f16190a;
        }
        if ((i & 2) != 0) {
            j2 = remoteConfigMetaInfo.f16191b;
        }
        return remoteConfigMetaInfo.copy(j, j2);
    }

    public final long component1() {
        return this.f16190a;
    }

    public final long component2() {
        return this.f16191b;
    }

    public final RemoteConfigMetaInfo copy(long j, long j2) {
        return new RemoteConfigMetaInfo(j, j2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RemoteConfigMetaInfo) {
                RemoteConfigMetaInfo remoteConfigMetaInfo = (RemoteConfigMetaInfo) obj;
                return this.f16190a == remoteConfigMetaInfo.f16190a && this.f16191b == remoteConfigMetaInfo.f16191b;
            }
            return false;
        }
        return true;
    }

    public final long getFirstSendTime() {
        return this.f16190a;
    }

    public final long getLastUpdateTime() {
        return this.f16191b;
    }

    public int hashCode() {
        long j = this.f16190a;
        long j2 = this.f16191b;
        return (((int) (j ^ (j >>> 32))) * 31) + ((int) ((j2 >>> 32) ^ j2));
    }

    public String toString() {
        return "RemoteConfigMetaInfo(firstSendTime=" + this.f16190a + ", lastUpdateTime=" + this.f16191b + ")";
    }
}
