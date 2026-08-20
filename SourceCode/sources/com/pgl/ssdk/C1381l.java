package com.pgl.ssdk;
/* compiled from: Pair.java */
/* renamed from: com.pgl.ssdk.l  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1381l<A, B> {

    /* renamed from: a  reason: collision with root package name */
    private final A f12232a;

    /* renamed from: b  reason: collision with root package name */
    private final B f12233b;

    public C1381l(A a2, B b2) {
        this.f12232a = a2;
        this.f12233b = b2;
    }

    public A a() {
        return this.f12232a;
    }

    public B b() {
        return this.f12233b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1381l.class == obj.getClass()) {
            C1381l c1381l = (C1381l) obj;
            A a2 = this.f12232a;
            if (a2 == null) {
                if (c1381l.f12232a != null) {
                    return false;
                }
            } else if (!a2.equals(c1381l.f12232a)) {
                return false;
            }
            B b2 = this.f12233b;
            if (b2 == null) {
                if (c1381l.f12233b != null) {
                    return false;
                }
            } else if (!b2.equals(c1381l.f12233b)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        A a2 = this.f12232a;
        int hashCode = ((a2 == null ? 0 : a2.hashCode()) + 31) * 31;
        B b2 = this.f12233b;
        return hashCode + (b2 != null ? b2.hashCode() : 0);
    }
}
