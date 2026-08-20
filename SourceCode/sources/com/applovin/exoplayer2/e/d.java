package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.e.v;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public class d implements v {

    /* renamed from: a  reason: collision with root package name */
    private final long f2129a;

    /* renamed from: b  reason: collision with root package name */
    private final long f2130b;

    /* renamed from: c  reason: collision with root package name */
    private final int f2131c;

    /* renamed from: d  reason: collision with root package name */
    private final long f2132d;

    /* renamed from: e  reason: collision with root package name */
    private final int f2133e;

    /* renamed from: f  reason: collision with root package name */
    private final long f2134f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f2135g;

    public d(long j, long j2, int i, int i2, boolean z) {
        long a2;
        this.f2129a = j;
        this.f2130b = j2;
        this.f2131c = i2 == -1 ? 1 : i2;
        this.f2133e = i;
        this.f2135g = z;
        if (j == -1) {
            this.f2132d = -1L;
            a2 = C.TIME_UNSET;
        } else {
            this.f2132d = j - j2;
            a2 = a(j, j2, i);
        }
        this.f2134f = a2;
    }

    private static long a(long j, long j2, int i) {
        return (Math.max(0L, j - j2) * 8000000) / i;
    }

    private long c(long j) {
        int i = this.f2131c;
        long j2 = (((j * this.f2133e) / 8000000) / i) * i;
        long j3 = this.f2132d;
        if (j3 != -1) {
            j2 = Math.min(j2, j3 - i);
        }
        return this.f2130b + Math.max(j2, 0L);
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        if (this.f2132d != -1 || this.f2135g) {
            long c2 = c(j);
            long b2 = b(c2);
            w wVar = new w(b2, c2);
            if (this.f2132d != -1 && b2 < j) {
                int i = this.f2131c;
                if (i + c2 < this.f2129a) {
                    long j2 = c2 + i;
                    return new v.a(wVar, new w(b(j2), j2));
                }
            }
            return new v.a(wVar);
        }
        return new v.a(new w(0L, this.f2130b));
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return this.f2132d != -1 || this.f2135g;
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.f2134f;
    }

    public long b(long j) {
        return a(j, this.f2130b, this.f2133e);
    }
}
