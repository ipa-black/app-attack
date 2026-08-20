package com.applovin.exoplayer2.e.g;

import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
final class n {

    /* renamed from: a  reason: collision with root package name */
    public final k f2340a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2341b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f2342c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f2343d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2344e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f2345f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f2346g;

    /* renamed from: h  reason: collision with root package name */
    public final long f2347h;

    public n(k kVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        com.applovin.exoplayer2.l.a.a(iArr.length == jArr2.length);
        com.applovin.exoplayer2.l.a.a(jArr.length == jArr2.length);
        com.applovin.exoplayer2.l.a.a(iArr2.length == jArr2.length);
        this.f2340a = kVar;
        this.f2342c = jArr;
        this.f2343d = iArr;
        this.f2344e = i;
        this.f2345f = jArr2;
        this.f2346g = iArr2;
        this.f2347h = j;
        this.f2341b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int a(long j) {
        for (int a2 = ai.a(this.f2345f, j, true, false); a2 >= 0; a2--) {
            if ((this.f2346g[a2] & 1) != 0) {
                return a2;
            }
        }
        return -1;
    }

    public int b(long j) {
        for (int b2 = ai.b(this.f2345f, j, true, false); b2 < this.f2345f.length; b2++) {
            if ((this.f2346g[b2] & 1) != 0) {
                return b2;
            }
        }
        return -1;
    }
}
