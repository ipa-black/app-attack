package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
public final class t implements v {

    /* renamed from: a  reason: collision with root package name */
    private final long[] f2703a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f2704b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2705c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f2706d;

    public t(long[] jArr, long[] jArr2, long j) {
        com.applovin.exoplayer2.l.a.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z = length > 0;
        this.f2706d = z;
        if (!z || jArr2[0] <= 0) {
            this.f2703a = jArr;
            this.f2704b = jArr2;
        } else {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.f2703a = jArr3;
            long[] jArr4 = new long[i];
            this.f2704b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.f2705c = j;
    }

    @Override // com.applovin.exoplayer2.e.v
    public v.a a(long j) {
        if (this.f2706d) {
            int a2 = ai.a(this.f2704b, j, true, true);
            w wVar = new w(this.f2704b[a2], this.f2703a[a2]);
            if (wVar.f2713b == j || a2 == this.f2704b.length - 1) {
                return new v.a(wVar);
            }
            int i = a2 + 1;
            return new v.a(wVar, new w(this.f2704b[i], this.f2703a[i]));
        }
        return new v.a(w.f2712a);
    }

    @Override // com.applovin.exoplayer2.e.v
    public boolean a() {
        return this.f2706d;
    }

    @Override // com.applovin.exoplayer2.e.v
    public long b() {
        return this.f2705c;
    }
}
