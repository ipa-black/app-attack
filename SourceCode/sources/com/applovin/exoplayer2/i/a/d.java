package com.applovin.exoplayer2.i.a;

import com.applovin.exoplayer2.i.f;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class d implements f {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.applovin.exoplayer2.i.a> f3229a;

    public d(List<com.applovin.exoplayer2.i.a> list) {
        this.f3229a = list;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int a(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // com.applovin.exoplayer2.i.f
    public long a(int i) {
        com.applovin.exoplayer2.l.a.a(i == 0);
        return 0L;
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<com.applovin.exoplayer2.i.a> b(long j) {
        return j >= 0 ? this.f3229a : Collections.emptyList();
    }

    @Override // com.applovin.exoplayer2.i.f
    public int f_() {
        return 1;
    }
}
