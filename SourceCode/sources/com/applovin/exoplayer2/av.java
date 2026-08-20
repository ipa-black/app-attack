package com.applovin.exoplayer2;
/* loaded from: classes.dex */
public final class av {

    /* renamed from: a  reason: collision with root package name */
    public static final av f1396a;

    /* renamed from: b  reason: collision with root package name */
    public static final av f1397b;

    /* renamed from: c  reason: collision with root package name */
    public static final av f1398c;

    /* renamed from: d  reason: collision with root package name */
    public static final av f1399d;

    /* renamed from: e  reason: collision with root package name */
    public static final av f1400e;

    /* renamed from: f  reason: collision with root package name */
    public final long f1401f;

    /* renamed from: g  reason: collision with root package name */
    public final long f1402g;

    static {
        av avVar = new av(0L, 0L);
        f1396a = avVar;
        f1397b = new av(Long.MAX_VALUE, Long.MAX_VALUE);
        f1398c = new av(Long.MAX_VALUE, 0L);
        f1399d = new av(0L, Long.MAX_VALUE);
        f1400e = avVar;
    }

    public av(long j, long j2) {
        com.applovin.exoplayer2.l.a.a(j >= 0);
        com.applovin.exoplayer2.l.a.a(j2 >= 0);
        this.f1401f = j;
        this.f1402g = j2;
    }

    public long a(long j, long j2, long j3) {
        long j4 = this.f1401f;
        if (j4 == 0 && this.f1402g == 0) {
            return j;
        }
        long c2 = com.applovin.exoplayer2.l.ai.c(j, j4, Long.MIN_VALUE);
        long b2 = com.applovin.exoplayer2.l.ai.b(j, this.f1402g, Long.MAX_VALUE);
        boolean z = true;
        boolean z2 = c2 <= j2 && j2 <= b2;
        if (c2 > j3 || j3 > b2) {
            z = false;
        }
        return (z2 && z) ? Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3 : z2 ? j2 : z ? j3 : c2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        av avVar = (av) obj;
        return this.f1401f == avVar.f1401f && this.f1402g == avVar.f1402g;
    }

    public int hashCode() {
        return (((int) this.f1401f) * 31) + ((int) this.f1402g);
    }
}
