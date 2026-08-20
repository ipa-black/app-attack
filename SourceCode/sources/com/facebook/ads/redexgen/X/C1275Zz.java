package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Zz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1275Zz extends K1 {
    public static byte[] A01;
    public final /* synthetic */ C1274Zy A00;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 95);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-20, -29, -8, -29, -11, -27, -12, -21, -14, -10, -68};
    }

    public C1275Zz(C1274Zy c1274Zy) {
        this.A00 = c1274Zy;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        C1203Xc c1203Xc;
        N0 n0;
        C1276a0 c1276a0;
        c1203Xc = this.A00.A02;
        c1203Xc.A0E().AFy();
        n0 = this.A00.A04;
        StringBuilder sb = new StringBuilder();
        sb.append(A00(0, 11, 35));
        c1276a0 = this.A00.A00;
        sb.append(c1276a0.A03());
        n0.loadUrl(sb.toString());
    }
}
