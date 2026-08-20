package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.e.h.h;
import com.applovin.exoplayer2.e.m;
import com.applovin.exoplayer2.e.n;
import com.applovin.exoplayer2.e.o;
import com.applovin.exoplayer2.e.p;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import java.util.Arrays;
/* loaded from: classes.dex */
final class b extends h {

    /* renamed from: a  reason: collision with root package name */
    private p f2357a;

    /* renamed from: b  reason: collision with root package name */
    private a f2358b;

    /* loaded from: classes.dex */
    private static final class a implements f {

        /* renamed from: a  reason: collision with root package name */
        private p f2359a;

        /* renamed from: b  reason: collision with root package name */
        private p.a f2360b;

        /* renamed from: c  reason: collision with root package name */
        private long f2361c = -1;

        /* renamed from: d  reason: collision with root package name */
        private long f2362d = -1;

        public a(p pVar, p.a aVar) {
            this.f2359a = pVar;
            this.f2360b = aVar;
        }

        @Override // com.applovin.exoplayer2.e.h.f
        public long a(com.applovin.exoplayer2.e.i iVar) {
            long j = this.f2362d;
            if (j >= 0) {
                long j2 = -(j + 2);
                this.f2362d = -1L;
                return j2;
            }
            return -1L;
        }

        @Override // com.applovin.exoplayer2.e.h.f
        public void a(long j) {
            long[] jArr = this.f2360b.f2696a;
            this.f2362d = jArr[ai.a(jArr, j, true, true)];
        }

        @Override // com.applovin.exoplayer2.e.h.f
        public v b() {
            com.applovin.exoplayer2.l.a.b(this.f2361c != -1);
            return new o(this.f2359a, this.f2361c);
        }

        public void b(long j) {
            this.f2361c = j;
        }
    }

    public static boolean a(y yVar) {
        return yVar.a() >= 5 && yVar.h() == 127 && yVar.o() == 1179402563;
    }

    private static boolean a(byte[] bArr) {
        return bArr[0] == -1;
    }

    private int c(y yVar) {
        int i = (yVar.d()[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            yVar.e(4);
            yVar.D();
        }
        int a2 = m.a(yVar, i);
        yVar.d(0);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e.h.h
    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.f2357a = null;
            this.f2358b = null;
        }
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected boolean a(y yVar, long j, h.a aVar) {
        byte[] d2 = yVar.d();
        p pVar = this.f2357a;
        if (pVar == null) {
            p pVar2 = new p(d2, 17);
            this.f2357a = pVar2;
            aVar.f2390a = pVar2.a(Arrays.copyOfRange(d2, 9, yVar.b()), (com.applovin.exoplayer2.g.a) null);
            return true;
        } else if ((d2[0] & Byte.MAX_VALUE) == 3) {
            p.a a2 = n.a(yVar);
            p a3 = pVar.a(a2);
            this.f2357a = a3;
            this.f2358b = new a(a3, a2);
            return true;
        } else if (a(d2)) {
            a aVar2 = this.f2358b;
            if (aVar2 != null) {
                aVar2.b(j);
                aVar.f2391b = this.f2358b;
            }
            com.applovin.exoplayer2.l.a.b(aVar.f2390a);
            return false;
        } else {
            return true;
        }
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected long b(y yVar) {
        if (a(yVar.d())) {
            return c(yVar);
        }
        return -1L;
    }
}
