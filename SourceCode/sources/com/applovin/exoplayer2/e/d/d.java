package com.applovin.exoplayer2.e.d;

import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.e.x;
/* loaded from: classes.dex */
public final class d implements j {

    /* renamed from: b  reason: collision with root package name */
    private final long f2151b;

    /* renamed from: c  reason: collision with root package name */
    private final j f2152c;

    public d(long j, j jVar) {
        this.f2151b = j;
        this.f2152c = jVar;
    }

    @Override // com.applovin.exoplayer2.e.j
    public x a(int i, int i2) {
        return this.f2152c.a(i, i2);
    }

    @Override // com.applovin.exoplayer2.e.j
    public void a() {
        this.f2152c.a();
    }

    @Override // com.applovin.exoplayer2.e.j
    public void a(final v vVar) {
        this.f2152c.a(new v() { // from class: com.applovin.exoplayer2.e.d.d.1
            @Override // com.applovin.exoplayer2.e.v
            public v.a a(long j) {
                v.a a2 = vVar.a(j);
                return new v.a(new w(a2.f2708a.f2713b, a2.f2708a.f2714c + d.this.f2151b), new w(a2.f2709b.f2713b, a2.f2709b.f2714c + d.this.f2151b));
            }

            @Override // com.applovin.exoplayer2.e.v
            public boolean a() {
                return vVar.a();
            }

            @Override // com.applovin.exoplayer2.e.v
            public long b() {
                return vVar.b();
            }
        });
    }
}
