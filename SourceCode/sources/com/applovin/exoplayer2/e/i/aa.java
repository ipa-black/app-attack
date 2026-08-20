package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.a;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.io.IOException;
/* loaded from: classes.dex */
final class aa extends com.applovin.exoplayer2.e.a {

    /* loaded from: classes.dex */
    private static final class a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final ag f2406a;

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.y f2407b = new com.applovin.exoplayer2.l.y();

        /* renamed from: c  reason: collision with root package name */
        private final int f2408c;

        /* renamed from: d  reason: collision with root package name */
        private final int f2409d;

        public a(int i, ag agVar, int i2) {
            this.f2408c = i;
            this.f2406a = agVar;
            this.f2409d = i2;
        }

        private a.e a(com.applovin.exoplayer2.l.y yVar, long j, long j2) {
            int a2;
            int a3;
            int b2 = yVar.b();
            long j3 = -1;
            long j4 = -1;
            long j5 = -9223372036854775807L;
            while (yVar.a() >= 188 && (a3 = (a2 = ae.a(yVar.d(), yVar.c(), b2)) + TsExtractor.TS_PACKET_SIZE) <= b2) {
                long a4 = ae.a(yVar, a2, this.f2408c);
                if (a4 != C.TIME_UNSET) {
                    long b3 = this.f2406a.b(a4);
                    if (b3 > j) {
                        return j5 == C.TIME_UNSET ? a.e.a(b3, j2) : a.e.a(j2 + j4);
                    } else if (100000 + b3 > j) {
                        return a.e.a(j2 + a2);
                    } else {
                        j4 = a2;
                        j5 = b3;
                    }
                }
                yVar.d(a3);
                j3 = a3;
            }
            return j5 != C.TIME_UNSET ? a.e.b(j5, j2 + j3) : a.e.f2086a;
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public a.e a(com.applovin.exoplayer2.e.i iVar, long j) throws IOException {
            long c2 = iVar.c();
            int min = (int) Math.min(this.f2409d, iVar.d() - c2);
            this.f2407b.a(min);
            iVar.d(this.f2407b.d(), 0, min);
            return a(this.f2407b, j, c2);
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public void a() {
            this.f2407b.a(ai.f3786f);
        }
    }

    public aa(ag agVar, long j, long j2, int i, int i2) {
        super(new a.b(), new a(i, agVar, i2), j, 0L, j + 1, 0L, j2, 188L, 940);
    }
}
