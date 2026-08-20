package com.applovin.exoplayer2.e;

import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class b {
    private static int a(com.applovin.exoplayer2.l.y yVar) {
        int i = 0;
        while (yVar.a() != 0) {
            int h2 = yVar.h();
            i += h2;
            if (h2 != 255) {
                return i;
            }
        }
        return -1;
    }

    public static void a(long j, com.applovin.exoplayer2.l.y yVar, x[] xVarArr) {
        while (true) {
            if (yVar.a() <= 1) {
                return;
            }
            int a2 = a(yVar);
            int a3 = a(yVar);
            int c2 = yVar.c() + a3;
            if (a3 == -1 || a3 > yVar.a()) {
                com.applovin.exoplayer2.l.q.c("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                c2 = yVar.b();
            } else if (a2 == 4 && a3 >= 8) {
                int h2 = yVar.h();
                int i = yVar.i();
                int q = i == 49 ? yVar.q() : 0;
                int h3 = yVar.h();
                if (i == 47) {
                    yVar.e(1);
                }
                boolean z = h2 == 181 && (i == 49 || i == 47) && h3 == 3;
                if (i == 49) {
                    z &= q == 1195456820;
                }
                if (z) {
                    b(j, yVar, xVarArr);
                }
            }
            yVar.d(c2);
        }
    }

    public static void b(long j, com.applovin.exoplayer2.l.y yVar, x[] xVarArr) {
        int h2 = yVar.h();
        if ((h2 & 64) != 0) {
            yVar.e(1);
            int i = (h2 & 31) * 3;
            int c2 = yVar.c();
            for (x xVar : xVarArr) {
                yVar.d(c2);
                xVar.a(yVar, i);
                if (j != C.TIME_UNSET) {
                    xVar.a(j, 1, i, 0, null);
                }
            }
        }
    }
}
