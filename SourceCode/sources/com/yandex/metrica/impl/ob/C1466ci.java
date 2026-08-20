package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.ci  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1466ci {

    /* renamed from: a  reason: collision with root package name */
    public final long f14571a;

    /* renamed from: b  reason: collision with root package name */
    public final long f14572b;

    /* renamed from: c  reason: collision with root package name */
    public final long f14573c;

    /* renamed from: d  reason: collision with root package name */
    public final long f14574d;

    public C1466ci(long j, long j2, long j3, long j4) {
        this.f14571a = j;
        this.f14572b = j2;
        this.f14573c = j3;
        this.f14574d = j4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1466ci.class != obj.getClass()) {
            return false;
        }
        C1466ci c1466ci = (C1466ci) obj;
        return this.f14571a == c1466ci.f14571a && this.f14572b == c1466ci.f14572b && this.f14573c == c1466ci.f14573c && this.f14574d == c1466ci.f14574d;
    }

    public int hashCode() {
        long j = this.f14571a;
        long j2 = this.f14572b;
        long j3 = this.f14573c;
        long j4 = this.f14574d;
        return (((((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) ((j4 >>> 32) ^ j4));
    }

    public String toString() {
        return "SdkFingerprintingConfig{minCollectingInterval=" + this.f14571a + ", minFirstCollectingDelay=" + this.f14572b + ", minCollectingDelayAfterLaunch=" + this.f14573c + ", minRequestRetryInterval=" + this.f14574d + '}';
    }
}
