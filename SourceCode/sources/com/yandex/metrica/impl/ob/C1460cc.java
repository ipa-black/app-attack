package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.cc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1460cc {

    /* renamed from: a  reason: collision with root package name */
    public final Qc f14547a;

    /* renamed from: b  reason: collision with root package name */
    public final C1410ac f14548b;

    public C1460cc(Qc qc, C1410ac c1410ac) {
        this.f14547a = qc;
        this.f14548b = c1410ac;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1460cc.class != obj.getClass()) {
            return false;
        }
        C1460cc c1460cc = (C1460cc) obj;
        if (this.f14547a.equals(c1460cc.f14547a)) {
            C1410ac c1410ac = this.f14548b;
            C1410ac c1410ac2 = c1460cc.f14548b;
            return c1410ac != null ? c1410ac.equals(c1410ac2) : c1410ac2 == null;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f14547a.hashCode() * 31;
        C1410ac c1410ac = this.f14548b;
        return hashCode + (c1410ac != null ? c1410ac.hashCode() : 0);
    }

    public String toString() {
        return "GplCollectingConfig{providerAccessFlags=" + this.f14547a + ", arguments=" + this.f14548b + '}';
    }
}
