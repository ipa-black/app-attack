package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.i  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1597i {

    /* renamed from: a  reason: collision with root package name */
    public final int f14885a;

    /* renamed from: b  reason: collision with root package name */
    public final int f14886b;

    public C1597i(int i, int i2) {
        this.f14885a = i;
        this.f14886b = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1597i.class != obj.getClass()) {
            return false;
        }
        C1597i c1597i = (C1597i) obj;
        return this.f14885a == c1597i.f14885a && this.f14886b == c1597i.f14886b;
    }

    public int hashCode() {
        return (this.f14885a * 31) + this.f14886b;
    }

    public String toString() {
        return "BillingConfig{sendFrequencySeconds=" + this.f14885a + ", firstCollectingInappMaxAgeSeconds=" + this.f14886b + "}";
    }
}
