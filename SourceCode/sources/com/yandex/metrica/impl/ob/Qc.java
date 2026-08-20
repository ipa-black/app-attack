package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Qc {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f13756a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f13757b;

    public Qc(boolean z, boolean z2) {
        this.f13756a = z;
        this.f13757b = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Qc.class != obj.getClass()) {
            return false;
        }
        Qc qc = (Qc) obj;
        return this.f13756a == qc.f13756a && this.f13757b == qc.f13757b;
    }

    public int hashCode() {
        return ((this.f13756a ? 1 : 0) * 31) + (this.f13757b ? 1 : 0);
    }

    public String toString() {
        return "ProviderAccessFlags{lastKnownEnabled=" + this.f13756a + ", scanningEnabled=" + this.f13757b + '}';
    }
}
