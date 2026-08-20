package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Ph {

    /* renamed from: a  reason: collision with root package name */
    public final long f13716a;

    /* renamed from: b  reason: collision with root package name */
    public final long f13717b;

    /* renamed from: c  reason: collision with root package name */
    public final long f13718c;

    /* renamed from: d  reason: collision with root package name */
    public final long f13719d;

    public Ph(long j, long j2, long j3, long j4) {
        this.f13716a = j;
        this.f13717b = j2;
        this.f13718c = j3;
        this.f13719d = j4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Ph.class != obj.getClass()) {
            return false;
        }
        Ph ph = (Ph) obj;
        return this.f13716a == ph.f13716a && this.f13717b == ph.f13717b && this.f13718c == ph.f13718c && this.f13719d == ph.f13719d;
    }

    public int hashCode() {
        long j = this.f13716a;
        long j2 = this.f13717b;
        long j3 = this.f13718c;
        long j4 = this.f13719d;
        return (((((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) ((j4 >>> 32) ^ j4));
    }

    public String toString() {
        return "CacheControl{cellsAroundTtl=" + this.f13716a + ", wifiNetworksTtl=" + this.f13717b + ", lastKnownLocationTtl=" + this.f13718c + ", netInterfacesTtl=" + this.f13719d + '}';
    }
}
