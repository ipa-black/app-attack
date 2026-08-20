package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.si  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1861si {

    /* renamed from: a  reason: collision with root package name */
    private final int f15728a;

    public C1861si(int i) {
        this.f15728a = i;
    }

    public final int a() {
        return this.f15728a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C1861si) && this.f15728a == ((C1861si) obj).f15728a;
        }
        return true;
    }

    public int hashCode() {
        return this.f15728a;
    }

    public String toString() {
        return "StartupUpdateConfig(intervalSeconds=" + this.f15728a + ")";
    }
}
