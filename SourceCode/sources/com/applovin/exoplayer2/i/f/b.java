package com.applovin.exoplayer2.i.f;

import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.l.ai;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class b implements f {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.i.a[] f3348a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f3349b;

    public b(com.applovin.exoplayer2.i.a[] aVarArr, long[] jArr) {
        this.f3348a = aVarArr;
        this.f3349b = jArr;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int a(long j) {
        int b2 = ai.b(this.f3349b, j, false, false);
        if (b2 < this.f3349b.length) {
            return b2;
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.i.f
    public long a(int i) {
        com.applovin.exoplayer2.l.a.a(i >= 0);
        com.applovin.exoplayer2.l.a.a(i < this.f3349b.length);
        return this.f3349b[i];
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<com.applovin.exoplayer2.i.a> b(long j) {
        int a2 = ai.a(this.f3349b, j, true, false);
        return (a2 == -1 || this.f3348a[a2] == com.applovin.exoplayer2.i.a.f3163a) ? Collections.emptyList() : Collections.singletonList(this.f3348a[a2]);
    }

    @Override // com.applovin.exoplayer2.i.f
    public int f_() {
        return this.f3349b.length;
    }
}
