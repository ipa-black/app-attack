package com.applovin.exoplayer2.e.j;

import android.util.Pair;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;
/* loaded from: classes.dex */
final class c {

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2676a;

        /* renamed from: b  reason: collision with root package name */
        public final long f2677b;

        private a(int i, long j) {
            this.f2676a = i;
            this.f2677b = j;
        }

        public static a a(i iVar, y yVar) throws IOException {
            iVar.d(yVar.d(), 0, 8);
            yVar.d(0);
            return new a(yVar.q(), yVar.p());
        }
    }

    public static b a(i iVar) throws IOException {
        a a2;
        byte[] bArr;
        com.applovin.exoplayer2.l.a.b(iVar);
        y yVar = new y(16);
        if (a.a(iVar, yVar).f2676a != 1380533830) {
            return null;
        }
        iVar.d(yVar.d(), 0, 4);
        yVar.d(0);
        int q = yVar.q();
        if (q != 1463899717) {
            q.d("WavHeaderReader", "Unsupported RIFF format: " + q);
            return null;
        }
        while (true) {
            a2 = a.a(iVar, yVar);
            if (a2.f2676a == 1718449184) {
                break;
            }
            iVar.c((int) a2.f2677b);
        }
        com.applovin.exoplayer2.l.a.b(a2.f2677b >= 16);
        iVar.d(yVar.d(), 0, 16);
        yVar.d(0);
        int j = yVar.j();
        int j2 = yVar.j();
        int x = yVar.x();
        int x2 = yVar.x();
        int j3 = yVar.j();
        int j4 = yVar.j();
        int i = ((int) a2.f2677b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            iVar.d(bArr2, 0, i);
            bArr = bArr2;
        } else {
            bArr = ai.f3786f;
        }
        return new b(j, j2, x, x2, j3, j4, bArr);
    }

    public static Pair<Long, Long> b(i iVar) throws IOException {
        com.applovin.exoplayer2.l.a.b(iVar);
        iVar.a();
        y yVar = new y(8);
        while (true) {
            a a2 = a.a(iVar, yVar);
            if (a2.f2676a == 1684108385) {
                iVar.b(8);
                long c2 = iVar.c();
                long j = a2.f2677b + c2;
                long d2 = iVar.d();
                if (d2 != -1 && j > d2) {
                    q.c("WavHeaderReader", "Data exceeds input length: " + j + ", " + d2);
                    j = d2;
                }
                return Pair.create(Long.valueOf(c2), Long.valueOf(j));
            }
            if (a2.f2676a != 1380533830 && a2.f2676a != 1718449184) {
                q.c("WavHeaderReader", "Ignoring unknown WAV chunk: " + a2.f2676a);
            }
            long j2 = a2.f2677b + 8;
            if (a2.f2676a == 1380533830) {
                j2 = 12;
            }
            if (j2 > 2147483647L) {
                throw com.applovin.exoplayer2.ai.a("Chunk is too large (~2GB+) to skip; id: " + a2.f2676a);
            }
            iVar.b((int) j2);
        }
    }
}
