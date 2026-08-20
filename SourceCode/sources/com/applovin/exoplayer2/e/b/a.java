package com.applovin.exoplayer2.e.b;

import com.applovin.exoplayer2.e.a;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.m;
import com.applovin.exoplayer2.e.p;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes.dex */
final class a extends com.applovin.exoplayer2.e.a {

    /* renamed from: com.applovin.exoplayer2.e.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0034a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final p f2090a;

        /* renamed from: b  reason: collision with root package name */
        private final int f2091b;

        /* renamed from: c  reason: collision with root package name */
        private final m.a f2092c;

        private C0034a(p pVar, int i) {
            this.f2090a = pVar;
            this.f2091b = i;
            this.f2092c = new m.a();
        }

        private long a(i iVar) throws IOException {
            while (iVar.b() < iVar.d() - 6 && !m.a(iVar, this.f2090a, this.f2091b, this.f2092c)) {
                iVar.c(1);
            }
            if (iVar.b() >= iVar.d() - 6) {
                iVar.c((int) (iVar.d() - iVar.b()));
                return this.f2090a.j;
            }
            return this.f2092c.f2684a;
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public a.e a(i iVar, long j) throws IOException {
            long c2 = iVar.c();
            long a2 = a(iVar);
            long b2 = iVar.b();
            iVar.c(Math.max(6, this.f2090a.f2690c));
            long a3 = a(iVar);
            return (a2 > j || a3 <= j) ? a3 <= j ? a.e.b(a3, iVar.b()) : a.e.a(a2, c2) : a.e.a(b2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(final p pVar, int i, long j, long j2) {
        super(new a.d() { // from class: com.applovin.exoplayer2.e.b.a$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.e.a.d
            public final long timeUsToTargetTime(long j3) {
                return p.this.a(j3);
            }
        }, new C0034a(pVar, i), pVar.a(), 0L, pVar.j, j, j2, pVar.b(), Math.max(6, pVar.f2690c));
        Objects.requireNonNull(pVar);
    }
}
