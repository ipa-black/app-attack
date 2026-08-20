package com.applovin.exoplayer2.e;

import com.applovin.exoplayer2.ai;
import java.io.IOException;
/* loaded from: classes.dex */
public final class m {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f2684a;
    }

    public static int a(com.applovin.exoplayer2.l.y yVar, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return yVar.h() + 1;
            case 7:
                return yVar.i() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long a(i iVar, p pVar) throws IOException {
        iVar.a();
        iVar.c(1);
        byte[] bArr = new byte[1];
        iVar.d(bArr, 0, 1);
        boolean z = (bArr[0] & 1) == 1;
        iVar.c(2);
        int i = z ? 7 : 6;
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(i);
        yVar.c(k.a(iVar, yVar.d(), 0, i));
        iVar.a();
        a aVar = new a();
        if (a(yVar, pVar, z, aVar)) {
            return aVar.f2684a;
        }
        throw ai.b(null, null);
    }

    private static boolean a(int i, p pVar) {
        return i <= 7 ? i == pVar.f2694g - 1 : i <= 10 && pVar.f2694g == 2;
    }

    public static boolean a(i iVar, p pVar, int i, a aVar) throws IOException {
        long b2 = iVar.b();
        byte[] bArr = new byte[2];
        iVar.d(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
            iVar.a();
            iVar.c((int) (b2 - iVar.c()));
            return false;
        }
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(16);
        System.arraycopy(bArr, 0, yVar.d(), 0, 2);
        yVar.c(k.a(iVar, yVar.d(), 2, 14));
        iVar.a();
        iVar.c((int) (b2 - iVar.c()));
        return a(yVar, pVar, i, aVar);
    }

    private static boolean a(com.applovin.exoplayer2.l.y yVar, p pVar, int i) {
        int a2 = a(yVar, i);
        return a2 != -1 && a2 <= pVar.f2689b;
    }

    public static boolean a(com.applovin.exoplayer2.l.y yVar, p pVar, int i, a aVar) {
        int c2 = yVar.c();
        long o = yVar.o();
        long j = o >>> 16;
        if (j != i) {
            return false;
        }
        return a((int) ((o >> 4) & 15), pVar) && b((int) ((o >> 1) & 7), pVar) && !(((o & 1) > 1L ? 1 : ((o & 1) == 1L ? 0 : -1)) == 0) && a(yVar, pVar, ((j & 1) > 1L ? 1 : ((j & 1) == 1L ? 0 : -1)) == 0, aVar) && a(yVar, pVar, (int) ((o >> 12) & 15)) && b(yVar, pVar, (int) ((o >> 8) & 15)) && b(yVar, c2);
    }

    private static boolean a(com.applovin.exoplayer2.l.y yVar, p pVar, boolean z, a aVar) {
        try {
            long D = yVar.D();
            if (!z) {
                D *= pVar.f2689b;
            }
            aVar.f2684a = D;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    private static boolean b(int i, p pVar) {
        return i == 0 || i == pVar.i;
    }

    private static boolean b(com.applovin.exoplayer2.l.y yVar, int i) {
        return yVar.h() == com.applovin.exoplayer2.l.ai.b(yVar.d(), i, yVar.c() - 1, 0);
    }

    private static boolean b(com.applovin.exoplayer2.l.y yVar, p pVar, int i) {
        int i2 = pVar.f2692e;
        if (i == 0) {
            return true;
        }
        if (i <= 11) {
            return i == pVar.f2693f;
        } else if (i == 12) {
            return yVar.h() * 1000 == i2;
        } else if (i <= 14) {
            int i3 = yVar.i();
            if (i == 14) {
                i3 *= 10;
            }
            return i3 == i2;
        } else {
            return false;
        }
    }
}
