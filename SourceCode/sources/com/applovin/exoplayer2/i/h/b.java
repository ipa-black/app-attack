package com.applovin.exoplayer2.i.h;

import com.applovin.exoplayer2.i.f;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class b implements f {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3409a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final List<com.applovin.exoplayer2.i.a> f3410b;

    private b() {
        this.f3410b = Collections.emptyList();
    }

    public b(com.applovin.exoplayer2.i.a aVar) {
        this.f3410b = Collections.singletonList(aVar);
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
        return j >= 0 ? this.f3410b : Collections.emptyList();
    }

    @Override // com.applovin.exoplayer2.i.f
    public int f_() {
        return 1;
    }
}
