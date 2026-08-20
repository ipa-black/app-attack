package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Wb {

    /* renamed from: a  reason: collision with root package name */
    public final long f14193a;

    /* renamed from: b  reason: collision with root package name */
    public final long f14194b;

    public Wb(long j, long j2) {
        this.f14193a = j;
        this.f14194b = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Wb.class != obj.getClass()) {
            return false;
        }
        Wb wb = (Wb) obj;
        return this.f14193a == wb.f14193a && this.f14194b == wb.f14194b;
    }

    public int hashCode() {
        long j = this.f14193a;
        long j2 = this.f14194b;
        return (((int) (j ^ (j >>> 32))) * 31) + ((int) ((j2 >>> 32) ^ j2));
    }

    public String toString() {
        return "ForcedCollectingArguments{durationSeconds=" + this.f14193a + ", intervalSeconds=" + this.f14194b + '}';
    }
}
