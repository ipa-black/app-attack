package com.yandex.metrica.impl.ob;

import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.di  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1491di {

    /* renamed from: a  reason: collision with root package name */
    public final long f14616a;

    /* renamed from: b  reason: collision with root package name */
    public final String f14617b;

    /* renamed from: c  reason: collision with root package name */
    public final List<Integer> f14618c;

    /* renamed from: d  reason: collision with root package name */
    public final List<Integer> f14619d;

    /* renamed from: e  reason: collision with root package name */
    public final long f14620e;

    /* renamed from: f  reason: collision with root package name */
    public final int f14621f;

    /* renamed from: g  reason: collision with root package name */
    public final long f14622g;

    /* renamed from: h  reason: collision with root package name */
    public final long f14623h;
    public final long i;
    public final long j;

    public C1491di(long j, String str, List<Integer> list, List<Integer> list2, long j2, int i, long j3, long j4, long j5, long j6) {
        this.f14616a = j;
        this.f14617b = str;
        this.f14618c = A2.c(list);
        this.f14619d = A2.c(list2);
        this.f14620e = j2;
        this.f14621f = i;
        this.f14622g = j3;
        this.f14623h = j4;
        this.i = j5;
        this.j = j6;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1491di.class != obj.getClass()) {
            return false;
        }
        C1491di c1491di = (C1491di) obj;
        if (this.f14616a == c1491di.f14616a && this.f14620e == c1491di.f14620e && this.f14621f == c1491di.f14621f && this.f14622g == c1491di.f14622g && this.f14623h == c1491di.f14623h && this.i == c1491di.i && this.j == c1491di.j && this.f14617b.equals(c1491di.f14617b) && this.f14618c.equals(c1491di.f14618c)) {
            return this.f14619d.equals(c1491di.f14619d);
        }
        return false;
    }

    public int hashCode() {
        long j = this.f14616a;
        long j2 = this.f14620e;
        long j3 = this.f14622g;
        long j4 = this.f14623h;
        long j5 = this.i;
        long j6 = this.j;
        return (((((((((((((((((((int) (j ^ (j >>> 32))) * 31) + this.f14617b.hashCode()) * 31) + this.f14618c.hashCode()) * 31) + this.f14619d.hashCode()) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f14621f) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + ((int) ((j6 >>> 32) ^ j6));
    }

    public String toString() {
        return "SocketConfig{secondsToLive=" + this.f14616a + ", token='" + this.f14617b + "', ports=" + this.f14618c + ", portsHttp=" + this.f14619d + ", firstDelaySeconds=" + this.f14620e + ", launchDelaySeconds=" + this.f14621f + ", openEventIntervalSeconds=" + this.f14622g + ", minFailedRequestIntervalSeconds=" + this.f14623h + ", minSuccessfulRequestIntervalSeconds=" + this.i + ", openRetryIntervalSeconds=" + this.j + '}';
    }
}
