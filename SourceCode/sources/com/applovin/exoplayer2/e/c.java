package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ai;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class c implements v {

    /* renamed from: a  reason: collision with root package name */
    public final int f2101a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f2102b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f2103c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f2104d;

    /* renamed from: e  reason: collision with root package name */
    public final long[] f2105e;

    /* renamed from: f  reason: collision with root package name */
    private final long f2106f;

    public c(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f2102b = iArr;
        this.f2103c = jArr;
        this.f2104d = jArr2;
        this.f2105e = jArr3;
        int length = iArr.length;
        this.f2101a = length;
        if (length > 0) {
            this.f2106f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f2106f = 0L;
        }
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        int b2 = b(j);
        w wVar = new w(this.f2105e[b2], this.f2103c[b2]);
        if (wVar.f2713b >= j || b2 == this.f2101a - 1) {
            return new v.a(wVar);
        }
        int i = b2 + 1;
        return new v.a(wVar, new w(this.f2105e[i], this.f2103c[i]));
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return true;
    }

    public int b(long j) {
        return ai.a(this.f2105e, j, true, true);
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.f2106f;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f2101a + ", sizes=" + Arrays.toString(this.f2102b) + ", offsets=" + Arrays.toString(this.f2103c) + ", timeUs=" + Arrays.toString(this.f2105e) + ", durationsUs=" + Arrays.toString(this.f2104d) + ")";
    }
}
