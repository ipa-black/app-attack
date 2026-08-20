package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class KH implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C1203Xc A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{97, 122, 125, 98, 97, 99, 104, 99, 116, 111, 101};
    }

    public KH(C1203Xc c1203Xc) {
        this.A00 = c1203Xc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            C05797t c05797t = new C05797t(A00(0, 4, 88));
            c05797t.A03(1);
            c05797t.A04(1);
            c05797t.A08(false);
            this.A00.A07().A9D(A00(4, 7, 112), C05787s.A1Y, c05797t);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
