package com.applovin.exoplayer2.i.g;

import com.applovin.exoplayer2.l.ai;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class h implements com.applovin.exoplayer2.i.f {

    /* renamed from: a  reason: collision with root package name */
    private final d f3397a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f3398b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, g> f3399c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, e> f3400d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, String> f3401e;

    public h(d dVar, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        this.f3397a = dVar;
        this.f3400d = map2;
        this.f3401e = map3;
        this.f3399c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f3398b = dVar.b();
    }

    @Override // com.applovin.exoplayer2.i.f
    public int a(long j) {
        int b2 = ai.b(this.f3398b, j, false, false);
        if (b2 < this.f3398b.length) {
            return b2;
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.i.f
    public long a(int i) {
        return this.f3398b[i];
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<com.applovin.exoplayer2.i.a> b(long j) {
        return this.f3397a.a(j, this.f3399c, this.f3400d, this.f3401e);
    }

    @Override // com.applovin.exoplayer2.i.f
    public int f_() {
        return this.f3398b.length;
    }
}
