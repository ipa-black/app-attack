package com.applovin.exoplayer2.i.e;

import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.l.ai;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class d implements f {

    /* renamed from: a  reason: collision with root package name */
    private final List<List<com.applovin.exoplayer2.i.a>> f3342a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Long> f3343b;

    public d(List<List<com.applovin.exoplayer2.i.a>> list, List<Long> list2) {
        this.f3342a = list;
        this.f3343b = list2;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int a(long j) {
        int b2 = ai.b((List<? extends Comparable<? super Long>>) this.f3343b, Long.valueOf(j), false, false);
        if (b2 < this.f3343b.size()) {
            return b2;
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.i.f
    public long a(int i) {
        com.applovin.exoplayer2.l.a.a(i >= 0);
        com.applovin.exoplayer2.l.a.a(i < this.f3343b.size());
        return this.f3343b.get(i).longValue();
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<com.applovin.exoplayer2.i.a> b(long j) {
        int a2 = ai.a((List<? extends Comparable<? super Long>>) this.f3343b, Long.valueOf(j), true, false);
        return a2 == -1 ? Collections.emptyList() : this.f3342a.get(a2);
    }

    @Override // com.applovin.exoplayer2.i.f
    public int f_() {
        return this.f3343b.size();
    }
}
