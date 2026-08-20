package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.mc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1709mc {

    /* renamed from: a  reason: collision with root package name */
    public final long f15143a;

    /* renamed from: b  reason: collision with root package name */
    public final float f15144b;

    /* renamed from: c  reason: collision with root package name */
    public final int f15145c;

    /* renamed from: d  reason: collision with root package name */
    public final int f15146d;

    /* renamed from: e  reason: collision with root package name */
    public final long f15147e;

    /* renamed from: f  reason: collision with root package name */
    public final int f15148f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f15149g;

    /* renamed from: h  reason: collision with root package name */
    public final long f15150h;
    public final boolean i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final Xb m;
    public final Xb n;
    public final Xb o;
    public final Xb p;
    public final C1460cc q;

    public C1709mc(long j, float f2, int i, int i2, long j2, int i3, boolean z, long j3, boolean z2, boolean z3, boolean z4, boolean z5, Xb xb, Xb xb2, Xb xb3, Xb xb4, C1460cc c1460cc) {
        this.f15143a = j;
        this.f15144b = f2;
        this.f15145c = i;
        this.f15146d = i2;
        this.f15147e = j2;
        this.f15148f = i3;
        this.f15149g = z;
        this.f15150h = j3;
        this.i = z2;
        this.j = z3;
        this.k = z4;
        this.l = z5;
        this.m = xb;
        this.n = xb2;
        this.o = xb3;
        this.p = xb4;
        this.q = c1460cc;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1709mc.class != obj.getClass()) {
            return false;
        }
        C1709mc c1709mc = (C1709mc) obj;
        if (this.f15143a == c1709mc.f15143a && Float.compare(c1709mc.f15144b, this.f15144b) == 0 && this.f15145c == c1709mc.f15145c && this.f15146d == c1709mc.f15146d && this.f15147e == c1709mc.f15147e && this.f15148f == c1709mc.f15148f && this.f15149g == c1709mc.f15149g && this.f15150h == c1709mc.f15150h && this.i == c1709mc.i && this.j == c1709mc.j && this.k == c1709mc.k && this.l == c1709mc.l) {
            Xb xb = this.m;
            if (xb == null ? c1709mc.m == null : xb.equals(c1709mc.m)) {
                Xb xb2 = this.n;
                if (xb2 == null ? c1709mc.n == null : xb2.equals(c1709mc.n)) {
                    Xb xb3 = this.o;
                    if (xb3 == null ? c1709mc.o == null : xb3.equals(c1709mc.o)) {
                        Xb xb4 = this.p;
                        if (xb4 == null ? c1709mc.p == null : xb4.equals(c1709mc.p)) {
                            C1460cc c1460cc = this.q;
                            C1460cc c1460cc2 = c1709mc.q;
                            return c1460cc != null ? c1460cc.equals(c1460cc2) : c1460cc2 == null;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        long j = this.f15143a;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        float f2 = this.f15144b;
        int floatToIntBits = f2 != 0.0f ? Float.floatToIntBits(f2) : 0;
        long j2 = this.f15147e;
        long j3 = this.f15150h;
        int i2 = (((((((((((((((((((((i + floatToIntBits) * 31) + this.f15145c) * 31) + this.f15146d) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f15148f) * 31) + (this.f15149g ? 1 : 0)) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31) + (this.i ? 1 : 0)) * 31) + (this.j ? 1 : 0)) * 31) + (this.k ? 1 : 0)) * 31) + (this.l ? 1 : 0)) * 31;
        Xb xb = this.m;
        int hashCode = (i2 + (xb != null ? xb.hashCode() : 0)) * 31;
        Xb xb2 = this.n;
        int hashCode2 = (hashCode + (xb2 != null ? xb2.hashCode() : 0)) * 31;
        Xb xb3 = this.o;
        int hashCode3 = (hashCode2 + (xb3 != null ? xb3.hashCode() : 0)) * 31;
        Xb xb4 = this.p;
        int hashCode4 = (hashCode3 + (xb4 != null ? xb4.hashCode() : 0)) * 31;
        C1460cc c1460cc = this.q;
        return hashCode4 + (c1460cc != null ? c1460cc.hashCode() : 0);
    }

    public String toString() {
        return "LocationArguments{updateTimeInterval=" + this.f15143a + ", updateDistanceInterval=" + this.f15144b + ", recordsCountToForceFlush=" + this.f15145c + ", maxBatchSize=" + this.f15146d + ", maxAgeToForceFlush=" + this.f15147e + ", maxRecordsToStoreLocally=" + this.f15148f + ", collectionEnabled=" + this.f15149g + ", lbsUpdateTimeInterval=" + this.f15150h + ", lbsCollectionEnabled=" + this.i + ", passiveCollectionEnabled=" + this.j + ", allCellsCollectingEnabled=" + this.k + ", connectedCellCollectingEnabled=" + this.l + ", wifiAccessConfig=" + this.m + ", lbsAccessConfig=" + this.n + ", gpsAccessConfig=" + this.o + ", passiveAccessConfig=" + this.p + ", gplConfig=" + this.q + '}';
    }
}
