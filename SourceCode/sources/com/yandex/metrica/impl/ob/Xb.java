package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Xb {

    /* renamed from: a  reason: collision with root package name */
    public final Qc f14265a;

    /* renamed from: b  reason: collision with root package name */
    public final Wb f14266b;

    public Xb(Qc qc, Wb wb) {
        this.f14265a = qc;
        this.f14266b = wb;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Xb.class != obj.getClass()) {
            return false;
        }
        Xb xb = (Xb) obj;
        if (this.f14265a.equals(xb.f14265a)) {
            Wb wb = this.f14266b;
            Wb wb2 = xb.f14266b;
            return wb != null ? wb.equals(wb2) : wb2 == null;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f14265a.hashCode() * 31;
        Wb wb = this.f14266b;
        return hashCode + (wb != null ? wb.hashCode() : 0);
    }

    public String toString() {
        return "ForcedCollectingConfig{providerAccessFlags=" + this.f14265a + ", arguments=" + this.f14266b + '}';
    }
}
