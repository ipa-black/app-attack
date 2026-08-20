package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.ti  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1885ti {

    /* renamed from: a  reason: collision with root package name */
    public final long f15780a;

    public C1885ti(long j) {
        this.f15780a = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C1885ti.class == obj.getClass() && this.f15780a == ((C1885ti) obj).f15780a;
    }

    public int hashCode() {
        long j = this.f15780a;
        return (int) (j ^ (j >>> 32));
    }

    public String toString() {
        return "StatSending{disabledReportingInterval=" + this.f15780a + '}';
    }
}
