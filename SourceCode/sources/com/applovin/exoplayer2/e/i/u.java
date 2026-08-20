package com.applovin.exoplayer2.e.i;

import com.applovin.exoplayer2.e.a;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u extends com.applovin.exoplayer2.e.a {

    /* loaded from: classes.dex */
    private static final class a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final ag f2612a;

        /* renamed from: b  reason: collision with root package name */
        private final com.applovin.exoplayer2.l.y f2613b;

        private a(ag agVar) {
            this.f2612a = agVar;
            this.f2613b = new com.applovin.exoplayer2.l.y();
        }

        private a.e a(com.applovin.exoplayer2.l.y yVar, long j, long j2) {
            int i = -1;
            int i2 = -1;
            long j3 = -9223372036854775807L;
            while (yVar.a() >= 4) {
                if (u.b(yVar.d(), yVar.c()) != 442) {
                    yVar.e(1);
                } else {
                    yVar.e(4);
                    long a2 = v.a(yVar);
                    if (a2 != C.TIME_UNSET) {
                        long b2 = this.f2612a.b(a2);
                        if (b2 > j) {
                            return j3 == C.TIME_UNSET ? a.e.a(b2, j2) : a.e.a(j2 + i2);
                        } else if (100000 + b2 > j) {
                            return a.e.a(j2 + yVar.c());
                        } else {
                            i2 = yVar.c();
                            j3 = b2;
                        }
                    }
                    a(yVar);
                    i = yVar.c();
                }
            }
            return j3 != C.TIME_UNSET ? a.e.b(j3, j2 + i) : a.e.f2086a;
        }

        private static void a(com.applovin.exoplayer2.l.y yVar) {
            int b2;
            int b3 = yVar.b();
            if (yVar.a() < 10) {
                yVar.d(b3);
                return;
            }
            yVar.e(9);
            int h2 = yVar.h() & 7;
            if (yVar.a() < h2) {
                yVar.d(b3);
                return;
            }
            yVar.e(h2);
            if (yVar.a() < 4) {
                yVar.d(b3);
                return;
            }
            if (u.b(yVar.d(), yVar.c()) == 443) {
                yVar.e(4);
                int i = yVar.i();
                if (yVar.a() < i) {
                    yVar.d(b3);
                    return;
                }
                yVar.e(i);
            }
            while (yVar.a() >= 4 && (b2 = u.b(yVar.d(), yVar.c())) != 442 && b2 != 441 && (b2 >>> 8) == 1) {
                yVar.e(4);
                if (yVar.a() < 2) {
                    yVar.d(b3);
                    return;
                }
                yVar.d(Math.min(yVar.b(), yVar.c() + yVar.i()));
            }
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public a.e a(com.applovin.exoplayer2.e.i iVar, long j) throws IOException {
            long c2 = iVar.c();
            int min = (int) Math.min(20000L, iVar.d() - c2);
            this.f2613b.a(min);
            iVar.d(this.f2613b.d(), 0, min);
            return a(this.f2613b, j, c2);
        }

        @Override // com.applovin.exoplayer2.e.a.f
        public void a() {
            this.f2613b.a(ai.f3786f);
        }
    }

    public u(ag agVar, long j, long j2) {
        super(new a.b(), new a(agVar), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
