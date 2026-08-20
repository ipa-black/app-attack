package com.yandex.metrica.billing_interface;
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final e f12495a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12496b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12497c;

    /* renamed from: d  reason: collision with root package name */
    public final long f12498d;

    /* renamed from: e  reason: collision with root package name */
    public final String f12499e;

    /* renamed from: f  reason: collision with root package name */
    public final long f12500f;

    /* renamed from: g  reason: collision with root package name */
    public final c f12501g;

    /* renamed from: h  reason: collision with root package name */
    public final int f12502h;
    public final c i;
    public final String j;
    public final String k;
    public final long l;
    public final boolean m;
    public final String n;

    public d(e eVar, String str, int i, long j, String str2, long j2, c cVar, int i2, c cVar2, String str3, String str4, long j3, boolean z, String str5) {
        this.f12495a = eVar;
        this.f12496b = str;
        this.f12497c = i;
        this.f12498d = j;
        this.f12499e = str2;
        this.f12500f = j2;
        this.f12501g = cVar;
        this.f12502h = i2;
        this.i = cVar2;
        this.j = str3;
        this.k = str4;
        this.l = j3;
        this.m = z;
        this.n = str5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f12497c == dVar.f12497c && this.f12498d == dVar.f12498d && this.f12500f == dVar.f12500f && this.f12502h == dVar.f12502h && this.l == dVar.l && this.m == dVar.m && this.f12495a == dVar.f12495a && this.f12496b.equals(dVar.f12496b) && this.f12499e.equals(dVar.f12499e)) {
            c cVar = this.f12501g;
            if (cVar == null ? dVar.f12501g == null : cVar.equals(dVar.f12501g)) {
                c cVar2 = this.i;
                if (cVar2 == null ? dVar.i == null : cVar2.equals(dVar.i)) {
                    if (this.j.equals(dVar.j) && this.k.equals(dVar.k)) {
                        return this.n.equals(dVar.n);
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
        long j = this.f12498d;
        long j2 = this.f12500f;
        int hashCode = ((((((((((this.f12495a.hashCode() * 31) + this.f12496b.hashCode()) * 31) + this.f12497c) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.f12499e.hashCode()) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        c cVar = this.f12501g;
        int hashCode2 = (((hashCode + (cVar != null ? cVar.hashCode() : 0)) * 31) + this.f12502h) * 31;
        c cVar2 = this.i;
        int hashCode3 = cVar2 != null ? cVar2.hashCode() : 0;
        long j3 = this.l;
        return ((((((((((hashCode2 + hashCode3) * 31) + this.j.hashCode()) * 31) + this.k.hashCode()) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.m ? 1 : 0)) * 31) + this.n.hashCode();
    }

    public String toString() {
        return "ProductInfo{type=" + this.f12495a + ", sku='" + this.f12496b + "', quantity=" + this.f12497c + ", priceMicros=" + this.f12498d + ", priceCurrency='" + this.f12499e + "', introductoryPriceMicros=" + this.f12500f + ", introductoryPricePeriod=" + this.f12501g + ", introductoryPriceCycles=" + this.f12502h + ", subscriptionPeriod=" + this.i + ", signature='" + this.j + "', purchaseToken='" + this.k + "', purchaseTime=" + this.l + ", autoRenewing=" + this.m + ", purchaseOriginalJson='" + this.n + "'}";
    }
}
