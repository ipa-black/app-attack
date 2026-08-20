package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.w0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1939w0 {

    /* renamed from: a  reason: collision with root package name */
    private final long f15947a;

    public C1939w0(long j) {
        this.f15947a = j;
    }

    public final long a() {
        return this.f15947a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C1939w0) && this.f15947a == ((C1939w0) obj).f15947a;
        }
        return true;
    }

    public int hashCode() {
        long j = this.f15947a;
        return (int) (j ^ (j >>> 32));
    }

    public String toString() {
        return "EasyCollectingConfig(firstLaunchDelaySeconds=" + this.f15947a + ")";
    }
}
